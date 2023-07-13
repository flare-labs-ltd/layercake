// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "./LayerCakeExecutionProof.sol";

contract LayerCakeStorageSlot is LayerCakeExecutionProof {
    struct ExecutionPreparation {
        bool executionPrepared;
        uint256 totalPrepared;
        uint256 feeIncrease;
        uint256 feesPaid;
    }

    address public immutable storageManager;
    uint256 public immutable storageStartTime;
    uint256 public immutable storageEndTime;

    mapping(bytes32 => bool) public openedExecutionIds;
    mapping(bytes32 => ExecutionPreparation) public preparedExecutionIds;

    uint256 public totalStored;
    uint256 public totalPrepared;
    mapping(address => uint256) public totalStoredPerAddress;
    mapping(address => uint256) public totalPreparedPerAddress;

    constructor(address _storageManager, uint256 _startTime, uint256 _storageEndTime) {
        storageManager = _storageManager;
        storageStartTime = _startTime;
        storageEndTime = _storageEndTime;
    }

    modifier storageManagerOnly() {
        require(msg.sender == storageManager, "SMO1");
        _;
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    // ==================
    // View Storage functions
    // ==================

    function getExecutionIdStored(bytes32 _executionId) external view returns (bool) {
        return openedExecutionIds[_executionId];
    }

    function getExecutionIdPrepared(bytes32 _executionId) public view returns (bool, uint256) {
        return (preparedExecutionIds[_executionId].executionPrepared, preparedExecutionIds[_executionId].totalPrepared);
    }

    // ==================
    // Set Storage functions
    // ==================

    function storeExecutionId(bytes32 _executionId, address _sender, uint256 _amount) external storageManagerOnly {
        openedExecutionIds[_executionId] = true;
        totalStored = totalStored + _amount;
        totalStoredPerAddress[_sender] = totalStoredPerAddress[_sender] + _amount;
    }

    function prepareExecutionId(bytes32 _executionId, address _preparer, ExecutionProof memory _executionProof)
        external
        storageManagerOnly
        returns (uint256, uint256, bool)
    {
        ExecutionPreparation memory executionIdInfo = preparedExecutionIds[_executionId];
        uint256 remainingAmount = _executionProof.operations.amount - executionIdInfo.totalPrepared;
        require(remainingAmount > 0, "PEIP1");
        if (_executionProof.partialAmount >= remainingAmount) {
            executionIdInfo.executionPrepared = true;
            _executionProof.partialAmount = remainingAmount;
        }
        uint256 remainingFees = _executionProof.operations.fee + executionIdInfo.feeIncrease - executionIdInfo.feesPaid;
        uint256 partialFee = (_executionProof.partialAmount * remainingFees) / remainingAmount;
        uint256 newRemainingAmount = remainingAmount - _executionProof.partialAmount;
        uint256 newRemainingFees = remainingFees - partialFee;
        if (newRemainingAmount > 0 && remainingFees > 0) {
            require(newRemainingFees > 0, "PEIP2");
        }
        executionIdInfo.totalPrepared = executionIdInfo.totalPrepared + _executionProof.partialAmount;
        executionIdInfo.feesPaid = executionIdInfo.feesPaid + partialFee;
        preparedExecutionIds[_executionId] = executionIdInfo;
        if (_preparer != _executionProof.operations.sender) {
            totalPreparedPerAddress[_preparer] = totalPreparedPerAddress[_preparer] + _executionProof.partialAmount;
            totalPrepared = totalPrepared + _executionProof.partialAmount;
        }
        return (partialFee, _executionProof.partialAmount, executionIdInfo.executionPrepared);
    }

    function increaseFee(bytes32 _executionId, uint256 _amount) external storageManagerOnly {
        preparedExecutionIds[_executionId].feeIncrease = preparedExecutionIds[_executionId].feeIncrease + _amount;
    }
}
