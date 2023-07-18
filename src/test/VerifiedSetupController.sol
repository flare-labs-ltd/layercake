// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

// Private keys convention using vm.addr()
// 1000+: Origin-chain bandwidth providers
// 2000+: Destination-chain bandwidth providers
// 3000+: Origin-chain users
// 4000+: Destination-chain users

import "../../lib/forge-std/src/Test.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

// LayerCake contracts
import "../core/LayerCakeDeployTools.sol";
import "../core/LayerCakeOriginDeploy.sol";
import "../core/LayerCakeDestinationDeploy.sol";
import "../core/LayerCake.sol";

// Testing contracts
import "../test/TestWETH.sol";
import "../test/UserController.sol";
import "../test/BandwidthProviderController.sol";

contract VerifiedSetupController is Test, LayerCakeDeployTools, LayerCakeTools {
    TestWETH public originToken;
    IERC20 public destinationToken;

    LayerCake public originLayercake;
    LayerCake public destinationLayercake;

    // Initial value of block.timestamp
    uint256 public initialTimestamp = 1685954000;
    uint256 public deployTimestamp;

    // Standard prefix for signed messages
    bytes public prefix = "\x19Ethereum Signed Message:\n32";

    // Constructor values that are equal on both chains
    uint256 public assetId = 100;
    uint256 public contractId = 1;
    uint256 public reorgAssumption = 6 hours;
    uint256 public bandwidthDepositDenominator = 10;
    uint256 public defaultNegationCost = 1000;
    uint256 public depositCap = 2 ** 256 - 1;
    uint256 public forwardedFeeDenominator = 1000; // 10 basis points

    // Origin-chain constructor values
    bool public originIsDestinationChain = false;
    uint256 public originThisChainId = 1;
    uint256 public originOppositeChainId = 2;
    address public originTokenAddress;
    address public originForwardedFeeRecipient = address(0xdead1c);

    // Destination-chain constructor values
    bool public destinationIsDestinationChain = true;
    uint256 public destinationThisChainId = 2;
    uint256 public destinationOppositeChainId = 1;
    address public destinationTokenAddress;
    address public destinationForwardedFeeRecipient = address(0xdead1c);

    // ConstructorParams structs
    ConstructorParams public originConstructorParams;
    ConstructorParams public destinationConstructorParams;

    // Deposit window
    uint256 public depositWindow = 7 days;

    // Deployment contracts
    LayerCakeOriginDeploy public originDeploy;
    LayerCakeDestinationDeploy public destinationDeploy;

    // Testing variables
    uint256 public depositAmount = 1000000;
    uint256 public originUserPk1 = 2000;
    uint256 public numAccounts = 100;
    bytes public userControllerCode;
    bytes public bandwidthProviderControllerCode;

    constructor() {
        vm.warp(initialTimestamp);

        // Deploy example origin-side ERC-20 contract that acts as a real asset (e.g. testWETH)
        originToken = new TestWETH();
        originTokenAddress = address(originToken);

        // Create constructor params struct
        originConstructorParams = ConstructorParams(
            false,
            originThisChainId,
            originOppositeChainId,
            assetId,
            contractId,
            originTokenAddress,
            originToken.name(),
            originToken.symbol(),
            depositCap,
            reorgAssumption,
            bandwidthDepositDenominator,
            defaultNegationCost,
            originForwardedFeeRecipient,
            forwardedFeeDenominator
        );

        originLayercake = new LayerCake(originConstructorParams);

        originDeploy = new LayerCakeOriginDeploy(
            address(originLayercake), 
            originConstructorParams.tokenAddress, 
            depositWindow,
            originConstructorParams.depositCap);

        // Deploy a user controller contract that can be copied to any user account using vm.etch()
        userControllerCode = address(new UserController(address(0))).code;
        // Deploy a bandwidth provider controller contract that can be copied to any bp account using vm.etch()
        bandwidthProviderControllerCode = address(new BandwidthProviderController(address(0))).code;

        // Send deposits
        BalanceChange[150] memory _balanceChanges;
        for (uint256 _pk = originUserPk1; _pk < originUserPk1 + numAccounts; _pk++) {
            // Deposit to originDeploy contract
            address originUser = address(vm.addr(_pk));
            vm.etch(originUser, userControllerCode);
            // Send user testWETH
            originToken.transfer(originUser, depositAmount);
            UserController(originUser).depositToLayerCakeOriginDeploy(originToken, originDeploy, depositAmount);
            _balanceChanges[_pk - originUserPk1] = BalanceChange(true, originUser, depositAmount);
        }

        // Send some withdraws
        vm.warp(initialTimestamp + depositWindow / 2);
        uint256 withdrawAmount = depositAmount / 2;
        for (uint256 _pk = originUserPk1 + numAccounts / 2; _pk < originUserPk1 + numAccounts; _pk++) {
            // Deposit to originDeploy contract
            address originUser = address(vm.addr(_pk));
            UserController(originUser).withdrawFromLayerCakeOriginDeploy(originDeploy, withdrawAmount);
            _balanceChanges[numAccounts / 2 + _pk - originUserPk1] = BalanceChange(false, originUser, withdrawAmount);
        }

        // Finalize origin deploy
        vm.warp(initialTimestamp + depositWindow);
        originDeploy.transferDepositsToLayerCake();

        destinationToken = new LayerCakeTransportedToken(
                                    depositCap, 
                                    originToken.name(), 
                                    originToken.symbol());

        // Destination deploy
        destinationConstructorParams = ConstructorParams(
            true,
            destinationThisChainId,
            destinationOppositeChainId,
            assetId,
            contractId,
            address(destinationToken),
            "",
            "",
            depositCap,
            reorgAssumption,
            bandwidthDepositDenominator,
            defaultNegationCost,
            destinationForwardedFeeRecipient,
            forwardedFeeDenominator
        );

        destinationLayercake = new LayerCake(
                                        destinationConstructorParams
                                    );
        destinationToken.transfer(
            address(destinationLayercake), destinationConstructorParams.depositCap - originDeploy.depositedAmount()
        );

        destinationDeploy = new LayerCakeDestinationDeploy(
                                        address(destinationLayercake),
                                        address(destinationToken),
                                        originDeploy.verificationHash(),
                                        destinationConstructorParams.depositCap,
                                        originDeploy.depositedAmount()
                                    );
        destinationToken.transfer(address(destinationDeploy), originDeploy.depositedAmount());
        for (uint256 i = 0; i < _balanceChanges.length; i++) {
            destinationDeploy.setBalanceChange(_balanceChanges[i]);
        }
        require(destinationDeploy.deployed());
        originLayercake = originLayercake;
        destinationLayercake = destinationLayercake;
        destinationToken = destinationLayercake.token();
        destinationTokenAddress = address(destinationToken);
        deployTimestamp = block.timestamp;

        for (uint256 _pk = originUserPk1; _pk < originUserPk1 + numAccounts; _pk++) {
            address originUser = address(vm.addr(_pk));
            UserController(originUser).withdrawFromLayerCakeDestinationDeploy(destinationDeploy);
            uint256 testWithdrawAmount = depositAmount;
            if (_pk - originUserPk1 >= numAccounts / 2) {
                testWithdrawAmount = testWithdrawAmount / 2;
            }
        }

        // Add 100,000 bandwidth to 100 origin BPs
        uint256 originBpPk1 = 1000;
        for (uint256 _pk = originBpPk1; _pk < originBpPk1 + numAccounts; _pk++) {
            address originBp = vm.addr(_pk);
            originToken.transfer(originBp, depositAmount);
            vm.etch(originBp, bandwidthProviderControllerCode);
            BandwidthProviderController(originBp).addBandwidth(originToken, originLayercake, 110000, 100000);
        }

        // Add 100,000 bandwidth to 100 destination BPs
        uint256 destinationBpPk1 = 2000;
        for (uint256 _pk = destinationBpPk1; _pk < destinationBpPk1 + numAccounts; _pk++) {
            address destinationBp = vm.addr(_pk);
            vm.etch(destinationBp, bandwidthProviderControllerCode);
            BandwidthProviderController(destinationBp).addBandwidth(
                destinationToken, destinationLayercake, 110000, 100000
            );
        }

        originToken.transfer(msg.sender, originToken.balanceOf(address(this)));
    }
}
