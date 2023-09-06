// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// LayerCake contracts
import "../../src/core/LayerCakeDeployTools.sol";
import "../../src/core/LayerCakeDestinationDeploy.sol";
import "../../src/core/LayerCakeTransportedToken.sol";
import "../../src/core/LayerCake.sol";

contract DestinationDeploy is Test, Script, LayerCakeDeployTools, LayerCakeTools {
    LayerCakeTransportedToken public destinationToken;
    LayerCake public destinationLayercake;

    // Deployment contracts
    LayerCakeDestinationDeploy public destinationDeploy;

    // Deployment params
    uint256 public deployerPrivateKey;

    // Constructor values that are equal on both chains
    uint256 public assetId;
    uint256 public contractId;
    uint256 public reorgAssumption;
    uint256 public bandwidthDepositDenominator;
    uint256 public minBandwidth;
    uint256 public depositCap;

    // ChainIds
    uint256 public originChainId;
    uint256 public destinationChainId;

    // Token name
    string public originTokenName;
    string public originTokenSymbol;

    // Deposit window
    uint256 public depositWindow;

    // Testing variables
    uint256 public totalDepositAmount;

    // Verification hash
    bytes32 public verificationHash;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        destinationToken = LayerCakeTransportedToken(vm.envAddress("DESTINATION_TOKEN_ADDRESS"));
        destinationLayercake = LayerCake(vm.envAddress("DESTINATION_LAYERCAKE_ADDRESS"));
        totalDepositAmount = vm.envUint("TOTAL_DEPOSIT_AMOUNT");
        verificationHash = vm.envBytes32("ORIGIN_LAYERCAKE_BALANCES_VERIFICATION_HASH");

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);

        (,,,,,, depositCap,,,,,) = destinationLayercake.params();

        destinationDeploy = new LayerCakeDestinationDeploy(
                                        address(destinationLayercake),
                                        address(destinationToken),
                                        verificationHash,
                                        depositCap,
                                        totalDepositAmount
                                    );
        destinationToken.transfer(address(destinationDeploy), totalDepositAmount);

        string memory path = ".env";
        vm.writeLine(
            path,
            string(
                abi.encodePacked("DESTINATION_DEPLOY_ADDRESS=\"", Strings.toHexString(address(destinationDeploy)), "\"")
            )
        );
        vm.writeLine(
            path,
            string(
                abi.encodePacked(
                    "DESTINATION_LAYERCAKE_BALANCES_VERIFICATION_HASH=",
                    Strings.toHexString(uint256(destinationDeploy.verificationHash()), 32)
                )
            )
        );

        vm.stopBroadcast();
    }
}
