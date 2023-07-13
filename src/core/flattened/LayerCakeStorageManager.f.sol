// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

contract LayerCakeExecutionProof {
    struct Operations {
        uint256 nonce;
        uint256 amount;
        uint256 fee;
        address sender;
        address recipient;
        uint256 executionTime;
        uint256 callDataGasLimit;
        bytes callData;
        bool cancel;
        uint256 cancellationFeeRefund;
        address negatedBandwidthProvider;
        bool initialNegation;
        bytes32 invalidExecutionProofId;
    }

    struct ExecutionProof {
        Operations operations;
        uint256 partialAmount;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }
}

// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

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

contract LayerCakeStorageManager is LayerCakeExecutionProof {
    uint256 public constant STORAGE_TIME = 365 days;
    uint256 public constant STORAGE_SLOTS = 100;

    address public immutable layerCakeContract;
    uint256 public immutable layerCakeDeployTime;

    // Each slot lasts for STORAGE_TIME, and a new storage contract is automatically deployed every STORAGE_TIME,
    // overwriting slots from STORAGE_SLOTS many slots ago.
    address[STORAGE_SLOTS] public layerCakeStorageSlots;
    uint256 public storageEpoch;

    constructor(address _layerCakeContract) {
        layerCakeContract = _layerCakeContract;
        layerCakeDeployTime = block.timestamp;
        LayerCakeStorageSlot newLayerCakeStorageSlot = new LayerCakeStorageSlot(
                                    address(this), 
                                    block.timestamp, 
                                    block.timestamp + STORAGE_TIME
                                );
        layerCakeStorageSlots[0] = address(newLayerCakeStorageSlot);
    }

    modifier layerCakeOnly() {
        require(msg.sender == layerCakeContract, "LCO1");
        _;
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    function _getStorageSlot(uint256 _timestamp)
        private
        view
        returns (uint256 thisStorageSlot, uint256 latestStorageEpoch, uint256 thisStorageEpoch, bool newSlotRequired)
    {
        // If a new storage time block is entered, deploy a new contract and self destruct the old one from a year ago
        thisStorageEpoch = (_timestamp - layerCakeDeployTime) / STORAGE_TIME;
        latestStorageEpoch = (block.timestamp - layerCakeDeployTime) / STORAGE_TIME;
        require(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS, "GSS1");
        thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS;
        if (thisStorageEpoch > storageEpoch) {
            newSlotRequired = true;
        }
    }

    function _checkCreateStorageSlot(uint256 _timestamp) private returns (uint256 storageSlot) {
        uint256 thisStorageSlot;
        uint256 latestStorageEpoch;
        uint256 thisStorageEpoch;
        bool newSlotRequired;
        (thisStorageSlot, latestStorageEpoch, thisStorageEpoch, newSlotRequired) = _getStorageSlot(_timestamp);
        require(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS / 2, "CCSS1");
        if (newSlotRequired) {
            // Deploy new contract
            LayerCakeStorageSlot newLayerCakeStorageSlot = new LayerCakeStorageSlot(
                address(this), 
                layerCakeDeployTime + (thisStorageEpoch * STORAGE_TIME),
                layerCakeDeployTime + ((thisStorageEpoch + 1) * STORAGE_TIME)
            );
            layerCakeStorageSlots[thisStorageSlot] = address(newLayerCakeStorageSlot);
            storageEpoch = thisStorageEpoch;
        }
        require(
            _timestamp >= LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageStartTime()
                && _timestamp < LayerCakeStorageSlot(layerCakeStorageSlots[thisStorageSlot]).storageEndTime(),
            "CCSS2"
        );
        return thisStorageSlot;
    }

    // ==================
    // View Storage functions
    // ==================

    function getExecutionIdStored(uint256 _executionTime, bytes32 _executionId) external view returns (bool) {
        uint256 storageSlot;
        bool newSlotRequired;
        (storageSlot,,, newSlotRequired) = _getStorageSlot(_executionTime);
        if (newSlotRequired) {
            return false;
        }
        return LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdStored(_executionId);
    }

    function getExecutionIdPrepared(uint256 _executionTime, bytes32 _executionId) public view returns (bool, uint256) {
        uint256 storageSlot;
        bool newSlotRequired;
        (storageSlot,,, newSlotRequired) = _getStorageSlot(_executionTime);
        if (newSlotRequired) {
            return (false, 0);
        }
        return LayerCakeStorageSlot(layerCakeStorageSlots[storageSlot]).getExecutionIdPrepared(_executionId);
    }

    // ==================
    // Set Storage functions
    // ==================

    function storeExecutionId(uint256 _executionTime, bytes32 _executionId, address _sender, uint256 _amount)
        external
        layerCakeOnly
    {
        LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionTime)]).storeExecutionId(
            _executionId, _sender, _amount
        );
    }

    function prepareExecutionId(bytes32 _executionId, address _preparer, ExecutionProof memory _executionProof)
        external
        layerCakeOnly
        returns (uint256, uint256, bool)
    {
        return LayerCakeStorageSlot(
            layerCakeStorageSlots[_checkCreateStorageSlot(_executionProof.operations.executionTime)]
        ).prepareExecutionId(_executionId, _preparer, _executionProof);
    }

    function increaseFee(uint256 _executionTime, bytes32 _executionId, uint256 _amount) external layerCakeOnly {
        LayerCakeStorageSlot(layerCakeStorageSlots[_checkCreateStorageSlot(_executionTime)]).increaseFee(
            _executionId, _amount
        );
    }
}
