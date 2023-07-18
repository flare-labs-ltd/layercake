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
import "./NegationOperationsController.sol";

contract LayerCakeNegationOperationsTest is Test, LayerCakeTools {
    VerifiedSetupController public c;
    NegationOperationsController public n;

    function setUp() public {
        c = new VerifiedSetupController();
        assertTrue(c.destinationDeploy().deployed());
        n = new NegationOperationsController(c);
        c.originToken().transfer(address(n), c.originToken().balanceOf(address(this)));
    }

    function testValidNegation() public {
        vm.warp(c.deployTimestamp());
        // Send 10,000 destinationToken to destinationBp1 without a corresponding storage
        // of operations on origin_chain
        (bytes32 invalidExecutionId, ExecutionProof memory invalidExecutionProof) = n.createInvalidExecution();
        Operations memory negationOperations = n.storeInitialNegationOperations(invalidExecutionId);
        n.executeValidNegationOperations(invalidExecutionProof, negationOperations, 1);
        assertEq(
            c.originToken().balanceOf(negationOperations.recipient), negationOperations.amount - negationOperations.fee
        );
        assertEq(
            negationOperations.amount - negationOperations.fee,
            2000 // defaultNegationCost (1000) + 1% of currentTotalBandwidth (1000)
        );
    }

    function testFailInvalidNegation() public {
        vm.warp(c.deployTimestamp());
        (bytes32 validExecutionId, ExecutionProof memory validExecutionProof) = n.createValidExecution();
        Operations memory negationOperations = n.storeInitialNegationOperations(validExecutionId);
        // This negation execution will fail due to:
        // require(_negationExecutionProof.operations.initialNegation != executionValidity, "ENO3");
        n.executeValidNegationOperations(validExecutionProof, negationOperations, 1);
    }

    function testReverseInvalidNegation() public {
        vm.warp(c.deployTimestamp());
        (bytes32 validExecutionId, ExecutionProof memory validExecutionProof) = n.createValidExecution();
        n.storeInitialNegationOperations(validExecutionId);
        Operations memory negationOperations = n.storeReverseNegationOperations(validExecutionId);
        n.executeValidNegationOperations(validExecutionProof, negationOperations, 2);
        vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption());
        n.executeValidNegationOperations(validExecutionProof, negationOperations, 2);
        assertEq(
            c.originToken().balanceOf(negationOperations.recipient), negationOperations.amount - negationOperations.fee
        );
        assertEq(
            negationOperations.amount - negationOperations.fee,
            101000 // currentTotalBandwidth + defaultNegationCost
        );
    }

    function testSelfNegation() public {
        vm.warp(c.deployTimestamp());
        // In this scenario, a bandwidth provider takes out their currentTotalBandwidth from the system by
        // creating an invalid execution, and then negates themself to claim the reward for doing so.
        // This test shows that the bandwidth provider loses 5% of their currentTotalBandwidth by leaving
        // the system in this manner instead of the normal removeBandwidth method
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);
        // This BP's original balance was 1,000,000, and it added
        // 100,000 bandwidth with a 10,000 token deposit
        assertEq(c.destinationToken().balanceOf(destinationBp1), 890000);
        (bytes32 invalidExecutionId, ExecutionProof memory invalidExecutionProof) =
            n.createInvalidExecutionRemoveAllBandwidth();
        // The BP takes out its 100,000 bandwidth with an invalid execution
        assertEq(c.destinationToken().balanceOf(destinationBp1), 990000);
        Operations memory negationOperations = n.storeSelfNegationOperations(invalidExecutionId);
        n.executeValidNegationOperations(invalidExecutionProof, negationOperations, 2);
        vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption());
        assertEq(c.originToken().balanceOf(destinationBp1), 0);
        n.executeValidNegationOperations(invalidExecutionProof, negationOperations, 2);
        assertEq(c.originToken().balanceOf(destinationBp1), 2000);
        assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1), 991000); // The BP lost 5000 tokens
    }

    function testFailSelfNegationRemoveBandwidth() public {
        vm.warp(c.deployTimestamp());
        // In this scenario, a bandwidth provider takes out their currentTotalBandwidth from the system by
        // creating an invalid execution, and then negates themself to claim the reward for doing so.
        // This test shows that the bandwidth provider loses 5% of their currentTotalBandwidth by leaving
        // the system in this manner instead of the normal removeBandwidth method
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);
        // This BP's original balance was 1,000,000, and it added
        // 100,000 bandwidth with a 10,000 token deposit
        assertEq(c.destinationToken().balanceOf(destinationBp1), 890000);
        (bytes32 invalidExecutionId, ExecutionProof memory invalidExecutionProof) =
            n.createInvalidExecutionRemoveAllBandwidth();
        // The BP takes out its 100,000 bandwidth with an invalid execution
        assertEq(c.destinationToken().balanceOf(destinationBp1), 990000);
        Operations memory negationOperations = n.storeSelfNegationOperations(invalidExecutionId);
        n.executeValidNegationOperations(invalidExecutionProof, negationOperations, 2);
        vm.warp(c.deployTimestamp() + 2 * c.reorgAssumption());
        assertEq(c.originToken().balanceOf(destinationBp1), 0);
        n.executeValidNegationOperations(invalidExecutionProof, negationOperations, 2);
        assertEq(c.originToken().balanceOf(destinationBp1), 2000);
        assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1), 991000); // The BP lost 5000 tokens

        // The following call will fail: the BP calls removeBandwidth()
        BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(), 100000);
    }

    function testNoNegationRemoveBandwidth() public {
        vm.warp(c.deployTimestamp());
        // In this scenario, a bandwidth provider takes out their currentTotalBandwidth from the system
        // in the correct manner by calling removeBandwidth(), giving them back their full original balance
        // of 1,000,000 tokens
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);

        assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1), 890000);
        // The following call will fail: the BP calls removeBandwidth()
        BandwidthProviderController(destinationBp1).removeBandwidth(c.destinationLayercake(), 100000);
        assertEq(c.destinationToken().balanceOf(destinationBp1) + c.originToken().balanceOf(destinationBp1), 1000000);
    }
}
