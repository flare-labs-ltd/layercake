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

contract LayerCakeStandardOperationsTest is Test, LayerCakeTools {
    VerifiedSetupController public c;
    StandardOperationsController public s;

    function setUp() public {
        c = new VerifiedSetupController();
        assertTrue(c.destinationDeploy().deployed());
        s = new StandardOperationsController(c);
        c.originToken().transfer(address(s), c.originToken().balanceOf(address(this)));
    }

    function testFuzzStoreStandardOperations(uint16 _amount) public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        s.fuzzStoreStandardOperations(_amount);
    }

    function testFuzzStandardOperationsTransferOnly(uint16 _amount) public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        s.fuzzStandardOperationsTransferOnly(_amount);
    }

    function testStandardOperationsTransferWithCalldata() public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        s.standardOperationsTransferWithCalldata(1);
    }

    function testCancelStandardOperationsTransferOnly() public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        s.cancelStandardOperationsTransferOnly(1);
    }

    function testFailStandardOperationsBandwidthExhausted() public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        for (uint256 i = 1; i <= 11; i++) {
            s.standardOperationsTransferOnly(i);
            vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()) + i);
        }
    }

    function testStandardOperationsBandwidthCycled() public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        for (uint256 i = 1; i <= 10; i++) {
            s.standardOperationsTransferOnly(i);
            vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()) + i);
        }
        vm.warp(c.deployTimestamp() + (6 * c.reorgAssumption()));
        for (uint256 i = 11; i <= 20; i++) {
            s.standardOperationsTransferOnly(i);
            vm.warp(c.deployTimestamp() + (6 * c.reorgAssumption()) + i);
        }
    }

    function testStandardOperationsTransferOnlyPartial() public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        // Perform 100 different calls using 100 different bandwidth providers
        // to executeStandardOperations for the same set of stored operations
        uint256 partialDenominator = 100;
        for (uint256 i = 1; i < partialDenominator; i++) {
            s.standardOperationsTransferOnlyPartial(i, partialDenominator);
        }
    }

    function testStandardOperationsTransferOnlyStorageSlotNotCreated() public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        s.standardOperationsTransferOnly(1);
        vm.warp(c.deployTimestamp() + 364 days);
        s.standardOperationsTransferOnly(2);
    }

    function testStandardOperationsTransferOnlyStorageSlotCreated() public {
        vm.warp(c.deployTimestamp() + (4 * c.reorgAssumption()));
        s.standardOperationsTransferOnly(1);
        vm.warp(c.deployTimestamp() + 365 days);
        s.standardOperationsTransferOnly(2);
    }
}
