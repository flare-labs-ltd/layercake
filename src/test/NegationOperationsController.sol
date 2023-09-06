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
import "./Counter.sol";

contract NegationOperationsController is Test, LayerCakeTools {
    VerifiedSetupController public c;

    constructor(VerifiedSetupController _c) {
        c = _c;
    }

    function createInvalidExecution()
        public
        returns (bytes32 _invalidExecutionId, ExecutionProof memory _invalidExecutionProof)
    {
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);

        Operations memory standardOperations =
            Operations(1, 10000, 0, destinationBp1, destinationBp1, block.timestamp, address(0), false, "");

        // Execute operations on the destination chain that have not been stored on the origin chain
        bytes32 executionId =
            c.destinationLayercake().getExecutionId(c.destinationLayercake().arrivingPathwayId(), standardOperations);
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(c.prefix(), executionId));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(destinationBpPk1, prefixedHashMessage);
        _invalidExecutionProof = ExecutionProof(standardOperations, standardOperations.amount, v, r, s);
        BandwidthProviderController(destinationBp1).executeStandardOperations(
            c.destinationLayercake(), _invalidExecutionProof
        );
        assertEq(c.destinationToken().balanceOf(destinationBp1), 900000);

        // Return the invalid execution ID, this is also available from events
        _invalidExecutionId = c.destinationLayercake().getInvalidExecutionProofId(_invalidExecutionProof);
    }

    function createValidExecution()
        public
        returns (bytes32 _validExecutionId, ExecutionProof memory _validExecutionProof)
    {
        address originUser1 = address(vm.addr(3000));
        vm.etch(originUser1, c.userControllerCode());
        // Send user 10000 testWETH
        uint256 amount = 10000;
        c.originToken().transfer(originUser1, amount);
        assertEq(c.originToken().balanceOf(originUser1), amount);

        // Standard operations transfering 10000 testWETH with a fee of 10 testWETH
        address destinationUser1 = address(vm.addr(4000));
        Operations memory standardOperations =
            Operations(1, amount, 10, originUser1, destinationUser1, block.timestamp, address(0), false, "");

        // Store the operations
        uint256 originLayercakeBalance = c.originToken().balanceOf(address(c.originLayercake()));
        UserController(originUser1).storeStandardOperations(c.originToken(), c.originLayercake(), standardOperations);
        assertEq(c.originToken().balanceOf(originUser1), 0);
        assertEq(c.originToken().balanceOf(address(c.originLayercake())), originLayercakeBalance + amount);

        // Execute the operations
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);
        bytes32 executionId =
            c.destinationLayercake().getExecutionId(c.destinationLayercake().arrivingPathwayId(), standardOperations);
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(c.prefix(), executionId));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(destinationBpPk1, prefixedHashMessage);
        _validExecutionProof = ExecutionProof(standardOperations, standardOperations.amount, v, r, s);
        BandwidthProviderController(destinationBp1).executeStandardOperations(
            c.destinationLayercake(), _validExecutionProof
        );
        assertEq(c.destinationToken().balanceOf(destinationUser1), 9990);

        _validExecutionId = c.destinationLayercake().getInvalidExecutionProofId(_validExecutionProof);
    }

    function createInvalidExecutionRemoveAllBandwidth()
        public
        returns (bytes32 _invalidExecutionId, ExecutionProof memory _invalidExecutionProof)
    {
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);

        Operations memory standardOperations =
            Operations(1, 100000, 0, destinationBp1, destinationBp1, block.timestamp, address(0), false, "");

        // Execute operations on the destination chain that have not been stored on the origin chain
        bytes32 executionId =
            c.destinationLayercake().getExecutionId(c.destinationLayercake().arrivingPathwayId(), standardOperations);
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(c.prefix(), executionId));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(destinationBpPk1, prefixedHashMessage);
        _invalidExecutionProof = ExecutionProof(standardOperations, standardOperations.amount, v, r, s);
        BandwidthProviderController(destinationBp1).executeStandardOperations(
            c.destinationLayercake(), _invalidExecutionProof
        );

        // Return the invalid execution ID, this is also available from events
        _invalidExecutionId = c.destinationLayercake().getInvalidExecutionProofId(_invalidExecutionProof);
    }

    function storeInitialNegationOperations(bytes32 _invalidExecutionId, ExecutionProof memory _invalidExecutionProof)
        public
        returns (Operations memory _negationOperations)
    {
        // Negate the BP
        address destinationUser1 = address(vm.addr(2001));
        vm.etch(destinationUser1, c.userControllerCode());

        _negationOperations = Operations(
            1,
            100 + 10,
            10,
            destinationUser1,
            vm.addr(4000), // destinationUser1
            block.timestamp,
            vm.addr(2000), // negatedBandwidthProvider: originBp1
            true, // initialNegation == true
            _invalidExecutionId
        );

        vm.etch(destinationUser1, c.userControllerCode());

        vm.recordLogs();
        // Store the negation operations
        UserController(destinationUser1).storeNegationOperations(
            c.destinationToken(), c.destinationLayercake(), _negationOperations, _invalidExecutionProof
        );
        Vm.Log[] memory entries = vm.getRecordedLogs();
        assertGt(entries.length, 0);

        (, Operations memory operations) = abi.decode(entries[2].data, (bytes32, Operations));
        _negationOperations.amount = operations.amount;

        // Check that the BP is marked as negated
        (bool negated,,,,,,,) = c.destinationLayercake().bpInfo(_negationOperations.negatedBandwidthProvider);
        assertTrue(negated);
    }

    function storeReverseNegationOperations(bytes32 _validExecutionId, ExecutionProof memory _invalidExecutionProof)
        public
        returns (Operations memory _negationOperations)
    {
        uint256 reverseNegationCost = 100000; //currentTotalBandwidth of negated BP vm.addr(2000)

        _negationOperations = Operations(
            1,
            reverseNegationCost + 10,
            10, // fee
            vm.addr(2000), // sender
            vm.addr(3000), // recipient
            block.timestamp,
            vm.addr(2000), // negatedBandwidthProvider: originBp1
            false, // initialNegation == false
            _validExecutionId
        );

        vm.recordLogs();
        // Store the negation operations
        BandwidthProviderController(vm.addr(2000)).storeNegationOperations(
            c.destinationToken(), c.destinationLayercake(), _negationOperations, _invalidExecutionProof
        );
        Vm.Log[] memory entries = vm.getRecordedLogs();
        assertGt(entries.length, 0);

        (, Operations memory operations) = abi.decode(entries[2].data, (bytes32, Operations));
        _negationOperations.amount = operations.amount;

        // Check that the BP is marked as not negated
        (bool negated,,,,,,,) = c.destinationLayercake().bpInfo(_negationOperations.negatedBandwidthProvider);
        assertTrue(!negated);
    }

    function storeSelfNegationOperations(bytes32 _invalidExecutionId, ExecutionProof memory _invalidExecutionProof)
        public
        returns (Operations memory _negationOperations)
    {
        // Negate the BP
        uint256 destinationBpPk1 = 2000;
        address destinationBp1 = vm.addr(destinationBpPk1);

        _negationOperations = Operations(
            1,
            100,
            0,
            destinationBp1,
            destinationBp1, // destinationUser1
            block.timestamp,
            destinationBp1, // negatedBandwidthProvider: originBp1
            true, // initialNegation == true
            _invalidExecutionId
        );

        vm.recordLogs();
        // Store the negation operations
        BandwidthProviderController(destinationBp1).storeNegationOperations(
            c.destinationToken(), c.destinationLayercake(), _negationOperations, _invalidExecutionProof
        );
        Vm.Log[] memory entries = vm.getRecordedLogs();
        assertGt(entries.length, 0);

        (, Operations memory operations) = abi.decode(entries[2].data, (bytes32, Operations));
        _negationOperations.amount = operations.amount;

        // Check that the BP is marked as negated
        (bool negated,,,,,,,) = c.destinationLayercake().bpInfo(_negationOperations.negatedBandwidthProvider);
        assertTrue(negated);
    }

    function executeValidNegationOperations(
        ExecutionProof memory _invalidExecutionProof,
        Operations memory _negationOperations,
        uint256 _partialDenominator
    ) public {
        uint256 originBpPk1 = 1000;
        address originBp1 = vm.addr(originBpPk1);
        bytes32 executionId =
            c.destinationLayercake().getExecutionId(c.originLayercake().arrivingPathwayId(), _negationOperations);
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(c.prefix(), executionId));
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(originBpPk1, prefixedHashMessage);
        ExecutionProof memory _negationExecutionProof =
            ExecutionProof(_negationOperations, _negationOperations.amount / _partialDenominator, v, r, s);
        BandwidthProviderController(originBp1).executeNegationOperations(
            c.originLayercake(), _negationExecutionProof, _invalidExecutionProof
        );
        assertTrue(c.destinationLayercake().getExecutionValidity(originBp1, _negationExecutionProof));
    }
}
