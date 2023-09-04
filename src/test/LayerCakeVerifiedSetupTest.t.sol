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

        (
            bool originIsDestinationChain,
            ,
            ,
            ,
            ,
            ,
            uint256 originDepositCap,
            ,
            ,
            uint256 originReorgAssumption,
            uint256 originBandwidthDepositDenominator,
            uint256 originMinBandwidth
        ) = c.originLayercake().params();

        (
            bool destinationIsDestinationChain,
            ,
            ,
            ,
            ,
            ,
            uint256 destinationDepositCap,
            ,
            ,
            uint256 destinationReorgAssumption,
            uint256 destinationBandwidthDepositDenominator,
            uint256 destinationMinBandwidth
        ) = c.destinationLayercake().params();

        // isDestinationChain
        assertEq(originIsDestinationChain, false);
        assertEq(destinationIsDestinationChain, true);

        // pathwayId
        assertEq(c.originLayercake().departingPathwayId(), c.destinationLayercake().arrivingPathwayId());
        assertEq(c.originLayercake().arrivingPathwayId(), c.destinationLayercake().departingPathwayId());

        // depositCap
        assertEq(originDepositCap, c.depositCap());
        assertEq(destinationDepositCap, c.depositCap());

        // address(token)
        assertEq(address(c.originLayercake().token()), address(c.originToken()));
        assertEq(address(c.destinationLayercake().token()), address(c.destinationToken()));

        // bpInfo
        uint256 origincurrentTotalBandwidth;
        (,,,,,, origincurrentTotalBandwidth,) = c.originLayercake().bpInfo(vm.addr(1000));
        assertEq(origincurrentTotalBandwidth, 100000);
        uint256 destinationcurrentTotalBandwidth;
        (,,,,,, destinationcurrentTotalBandwidth,) = c.destinationLayercake().bpInfo(vm.addr(2000));
        assertEq(destinationcurrentTotalBandwidth, 100000);

        // bandwidthManager constants
        assertEq(originReorgAssumption, c.reorgAssumption());
        assertEq(originBandwidthDepositDenominator, c.bandwidthDepositDenominator());
        assertEq(originMinBandwidth, c.minBandwidth());

        assertEq(destinationReorgAssumption, c.reorgAssumption());
        assertEq(destinationBandwidthDepositDenominator, c.bandwidthDepositDenominator());
        assertEq(destinationMinBandwidth, c.minBandwidth());

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
