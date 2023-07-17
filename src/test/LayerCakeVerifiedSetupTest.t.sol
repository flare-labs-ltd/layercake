// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

// Private keys convention using vm.addr()
// 1000+: Origin-chain bandwidth providers
// 2000+: Destination-chain bandwidth providers
// 3000+: Origin-chain users
// 4000+: Destination-chain users

import "../../lib/forge-std/src/Test.sol";

// LayerCake contracts
import "../core/LayerCakeBandwidthManager.sol";

// Testing contracts
import "./UserController.sol";
import "./BandwidthProviderController.sol";
import "./VerifiedSetupController.sol";

contract LayerCakeVerifiedSetupTest is Test, LayerCakeTools {
    VerifiedSetupController public c;

    function setUp() public {
        // This deployment sets up originLayercake and destinationLayercake contracts
        // as well as a testWETH contract and a LayerCakeTransportedToken contract
        // where 100 users deposit testWETH and are initialized with LayerCakeTransportedToken balances,
        // which they then use to create new bandwidth providers on the destination chain.
        c = new VerifiedSetupController();
    }

    function testConstruction() public {
        // deployed
        assertTrue(c.destinationDeploy().deployed());

        // isDestinationChain
        assertEq(c.originLayercake().isDestinationChain(), false);
        assertEq(c.destinationLayercake().isDestinationChain(), true);

        // pathwayId
        assertEq(c.originLayercake().departingPathwayId(), c.destinationLayercake().arrivingPathwayId());
        assertEq(c.originLayercake().arrivingPathwayId(), c.destinationLayercake().departingPathwayId());

        // depositCap
        assertEq(c.originLayercake().depositCap(), c.depositCap());
        assertEq(c.destinationLayercake().depositCap(), c.depositCap());

        // address(token)
        assertEq(address(c.originLayercake().token()), address(c.originToken()));
        assertEq(address(c.destinationLayercake().token()), address(c.destinationToken()));

        // bpInfo
        LayerCakeBandwidthManager originBandwidthManager = c.originLayercake().bandwidthManager();
        uint256 origincurrentTotalBandwidth;
        (,,,,,, origincurrentTotalBandwidth,) = originBandwidthManager.bpInfo(vm.addr(1000));
        assertEq(origincurrentTotalBandwidth, 100000);
        LayerCakeBandwidthManager destinationBandwidthManager = c.destinationLayercake().bandwidthManager();
        uint256 destinationcurrentTotalBandwidth;
        (,,,,,, destinationcurrentTotalBandwidth,) = destinationBandwidthManager.bpInfo(vm.addr(2000));
        assertEq(destinationcurrentTotalBandwidth, 100000);

        // bandwidthManager constants
        assertEq(originBandwidthManager.layerCakeContract(), address(c.originLayercake()));
        assertEq(originBandwidthManager.reorgAssumption(), c.reorgAssumption());
        assertEq(originBandwidthManager.bandwidthPeriod(), 2 * c.reorgAssumption());
        assertEq(originBandwidthManager.bandwidthDepositDenominator(), c.bandwidthDepositDenominator());
        assertEq(originBandwidthManager.defaultNegationCost(), c.defaultNegationCost());
        assertEq(originBandwidthManager.negationRewardDenominator(), 10 * c.bandwidthDepositDenominator());

        assertEq(destinationBandwidthManager.layerCakeContract(), address(c.destinationLayercake()));
        assertEq(destinationBandwidthManager.reorgAssumption(), c.reorgAssumption());
        assertEq(destinationBandwidthManager.bandwidthPeriod(), 2 * c.reorgAssumption());
        assertEq(destinationBandwidthManager.bandwidthDepositDenominator(), c.bandwidthDepositDenominator());
        assertEq(destinationBandwidthManager.defaultNegationCost(), c.defaultNegationCost());
        assertEq(destinationBandwidthManager.negationRewardDenominator(), 10 * c.bandwidthDepositDenominator());

        // Deposits
        uint256 originDepositedAmount = 86000000;
        assertEq(c.originToken().balanceOf(address(c.originDeploy())), 0);
        assertEq(c.originToken().balanceOf(address(c.originLayercake())), originDepositedAmount);

        assertTrue(c.originDeploy().verificationHash() != bytes32(0));
        assertTrue(c.originDeploy().verificationHash() == c.destinationDeploy().computedVerificationHash());
        assertTrue(c.destinationDeploy().deployed());

        uint256 destinationDepositedAmount = c.depositCap() - 64000000;
        assertEq(c.destinationDeploy().destinationToken().balanceOf(address(c.destinationDeploy())), 0);
        assertEq(
            c.destinationDeploy().destinationToken().balanceOf(address(c.destinationLayercake())),
            destinationDepositedAmount
        );
    }

    function testSign() public {
        vm.warp(c.initialTimestamp());
        uint256 originBpPk1 = 1000;
        address originBp1 = vm.addr(originBpPk1);
        bytes32 hash = keccak256("Signed by originBp1");
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(originBpPk1, hash);
        address signer = ecrecover(hash, v, r, s);
        assertEq(originBp1, signer);
    }

    function testBlockTimestampChange() public {
        vm.warp(c.initialTimestamp());
        assertEq(block.timestamp, c.initialTimestamp());
        vm.warp(c.initialTimestamp() + 1);
        assertGt(block.timestamp, c.initialTimestamp());
    }
}
