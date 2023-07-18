// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

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

    constructor(address cStorageManager, uint256 cStartTime, uint256 cStorageEndTime) {
        require(cStorageManager != address(0), "LCS1");
        require(cStartTime > 0, "LCS2");
        require(cStorageEndTime > cStartTime, "LCS3");
        storageManager = cStorageManager;
        storageStartTime = cStartTime;
        storageEndTime = cStorageEndTime;
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

    function getExecutionIdStored(bytes32 executionId) external view returns (bool) {
        return openedExecutionIds[executionId];
    }

    function getExecutionIdPrepared(bytes32 executionId) public view returns (bool, uint256) {
        return (preparedExecutionIds[executionId].executionPrepared, preparedExecutionIds[executionId].totalPrepared);
    }

    // ==================
    // Set Storage functions
    // ==================

    function storeExecutionId(bytes32 executionId, address sender, uint256 amount) external storageManagerOnly {
        openedExecutionIds[executionId] = true;
        totalStored = totalStored + amount;
        totalStoredPerAddress[sender] = totalStoredPerAddress[sender] + amount;
    }

    function prepareExecutionId(bytes32 executionId, address preparer, ExecutionProof memory executionProof)
        external
        storageManagerOnly
        returns (uint256, uint256, bool)
    {
        ExecutionPreparation memory executionIdInfo = preparedExecutionIds[executionId];
        uint256 remainingAmount = executionProof.operations.amount - executionIdInfo.totalPrepared;
        require(remainingAmount > 0, "PEIP1");
        if (executionProof.partialAmount >= remainingAmount) {
            executionIdInfo.executionPrepared = true;
            executionProof.partialAmount = remainingAmount;
        }
        uint256 remainingFees = executionProof.operations.fee + executionIdInfo.feeIncrease - executionIdInfo.feesPaid;
        uint256 partialFee = (executionProof.partialAmount * remainingFees) / remainingAmount;
        uint256 newRemainingAmount = remainingAmount - executionProof.partialAmount;
        uint256 newRemainingFees = remainingFees - partialFee;
        if (newRemainingAmount > 0 && remainingFees > 0) {
            require(newRemainingFees > 0, "PEIP2");
        }
        executionIdInfo.totalPrepared = executionIdInfo.totalPrepared + executionProof.partialAmount;
        executionIdInfo.feesPaid = executionIdInfo.feesPaid + partialFee;
        preparedExecutionIds[executionId] = executionIdInfo;
        if (preparer != executionProof.operations.sender) {
            totalPreparedPerAddress[preparer] = totalPreparedPerAddress[preparer] + executionProof.partialAmount;
            totalPrepared = totalPrepared + executionProof.partialAmount;
        }
        return (partialFee, executionProof.partialAmount, executionIdInfo.executionPrepared);
    }

    function increaseFee(bytes32 executionId, uint256 amount) external storageManagerOnly {
        preparedExecutionIds[executionId].feeIncrease = preparedExecutionIds[executionId].feeIncrease + amount;
    }
}
