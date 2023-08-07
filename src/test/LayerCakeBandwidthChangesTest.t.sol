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
import "./VerifiedSetupController.sol";
import "./StandardOperationsController.sol";
import "./BandwidthProviderController.sol";

contract LayerCakeBandwidthChangesTest is Test, LayerCakeTools {
    VerifiedSetupController public c;
    StandardOperationsController public s;

    function setUp() public {
        c = new VerifiedSetupController();
        assertTrue(c.destinationDeploy().deployed());
        s = new StandardOperationsController(c);
        c.originToken().transfer(address(s), c.originToken().balanceOf(address(this)));
    }

    function testStandardOperationsTransferOnlyRemovingBandwidth() public {
        vm.warp(c.deployTimestamp());
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);

        // Use 10,000 out of available 100,000 bandwidth, which earns a fee of 10 destinationToken
        s.standardOperationsTransferOnly(1);
        // Wait for 1 bandwidth period to cycle
        vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()));
        // Remove all bandwidth
        uint256 removedBandwidthAmount = 100000;
        BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(), removedBandwidthAmount);
        assertEq(c.destinationToken().balanceOf(destinationBp1), 1000010);
    }

    function testFailStandardOperationsTransferOnlyRemovingBandwidth() public {
        vm.warp(c.deployTimestamp());
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);

        // Use 10,000 out of available 100,000 bandwidth, which earns a fee of 10 destinationToken
        s.standardOperationsTransferOnly(1);
        // Don't wait for 1 bandwidth period to cycle
        // Remove all bandwidth, this will fail due to not enough available bandwidth
        uint256 removedBandwidthAmount = 100000;
        BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(), removedBandwidthAmount);
        assertEq(c.destinationToken().balanceOf(destinationBp1), 1000010);
    }

    function testFailStandardOperationsTransferOnlyRemovingBandwidth2() public {
        vm.warp(c.deployTimestamp());
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);

        // Use 10,000 out of available 100,000 bandwidth, which earns a fee of 10 destinationToken
        s.standardOperationsTransferOnly(1);
        // Wait for 1 bandwidth period to cycle
        vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()));
        // Remove all bandwidth
        uint256 removedBandwidthAmount = 100000;
        BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(), removedBandwidthAmount);
        assertEq(c.destinationToken().balanceOf(destinationBp1), 1000010);

        // This call will fail because destinationBp1 currently has 0 bandwidth
        s.standardOperationsTransferOnly(2);
    }

    function testStandardOperationsTransferOnlyRemovingBandwidth3() public {
        vm.warp(c.deployTimestamp());
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);

        // Use 10,000 out of available 100,000 bandwidth, which earns a fee of 10 destinationToken
        s.standardOperationsTransferOnly(1);
        // Wait for 1 bandwidth period to cycle
        vm.warp(c.deployTimestamp() + (2 * c.reorgAssumption()));
        // Remove all bandwidth
        uint256 removedBandwidthAmount = 100000;
        BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(), removedBandwidthAmount);
        assertEq(c.destinationToken().balanceOf(destinationBp1), 1000010);

        // Wait for 1 bandwidth period to cycle
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        // Add bandwidth back to the system
        BandwidthProviderController(destinationBp1).addBandwidth(
            c.destinationToken(), c.destinationLayercake(), 110000, 100000
        );
        // Wait for 1 bandwidth period to cycle
        vm.warp(c.deployTimestamp() + (6 * c.reorgAssumption()));
        // This call will now succeed because destinationBp1 now has enough bandwidth for it
        s.standardOperationsTransferOnly(2);
    }
}
