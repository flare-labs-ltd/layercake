// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "./LayerCakeExecutionProof.sol";
import "./LayerCakeStorageSlot.sol";

contract LayerCakeStorageManager is LayerCakeExecutionProof {
    uint256 public constant STORAGE_TIME = 365 days;
    uint256 public constant STORAGE_SLOTS = 100;

    address public immutable layerCakeContract;
    uint256 public immutable layerCakeDeployTime;

    // Each slot lasts for STORAGE_TIME, and a new storage contract is automatically deployed every STORAGE_TIME,
    // overwriting slots from STORAGE_SLOTS many slots ago.
    address[STORAGE_SLOTS] public layerCakeSTORAGE_SLOTS;
    uint256 public storageEpoch;

    constructor(address cLayerCakeContract) {
        require(cLayerCakeContract != address(0), "LCSTM1");
        layerCakeContract = cLayerCakeContract;
        layerCakeDeployTime = block.timestamp;
        LayerCakeStorageSlot newLayerCakeStorageSlot = new LayerCakeStorageSlot(
                                    address(this), 
                                    block.timestamp, 
                                    block.timestamp + STORAGE_TIME
                                );
        layerCakeSTORAGE_SLOTS[0] = address(newLayerCakeStorageSlot);
    }

    modifier layerCakeOnly() {
        require(msg.sender == layerCakeContract, "LCO1");
        _;
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    function _getStorageSlot(uint256 timestamp)
        private
        view
        returns (uint256 thisStorageSlot, uint256 latestStorageEpoch, uint256 thisStorageEpoch, bool newSlotRequired)
    {
        // If a new storage time block is entered, deploy a new contract and self destruct the old one from a year ago
        thisStorageEpoch = (timestamp - layerCakeDeployTime) / STORAGE_TIME;
        latestStorageEpoch = (block.timestamp - layerCakeDeployTime) / STORAGE_TIME;
        require(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS, "GSS1");
        thisStorageSlot = thisStorageEpoch % STORAGE_SLOTS;
        if (thisStorageEpoch > storageEpoch) {
            newSlotRequired = true;
        }
    }

    function _checkCreateStorageSlot(uint256 timestamp) private returns (uint256 storageSlot) {
        uint256 thisStorageSlot;
        uint256 latestStorageEpoch;
        uint256 thisStorageEpoch;
        bool newSlotRequired;
        (thisStorageSlot, latestStorageEpoch, thisStorageEpoch, newSlotRequired) = _getStorageSlot(timestamp);
        require(latestStorageEpoch - thisStorageEpoch < STORAGE_SLOTS / 2, "CCSS1");
        if (newSlotRequired) {
            // Deploy new contract
            LayerCakeStorageSlot newLayerCakeStorageSlot = new LayerCakeStorageSlot(
                address(this), 
                layerCakeDeployTime + (thisStorageEpoch * STORAGE_TIME),
                layerCakeDeployTime + ((thisStorageEpoch + 1) * STORAGE_TIME)
            );
            layerCakeSTORAGE_SLOTS[thisStorageSlot] = address(newLayerCakeStorageSlot);
            storageEpoch = thisStorageEpoch;
        }
        require(
            timestamp >= LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[thisStorageSlot]).storageStartTime()
                && timestamp < LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[thisStorageSlot]).storageEndTime(),
            "CCSS2"
        );
        return thisStorageSlot;
    }

    // ==================
    // View Storage functions
    // ==================

    function getExecutionIdStored(uint256 executionTime, bytes32 executionId) external view returns (bool) {
        uint256 storageSlot;
        bool newSlotRequired;
        (storageSlot,,, newSlotRequired) = _getStorageSlot(executionTime);
        if (newSlotRequired) {
            return false;
        }
        return LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[storageSlot]).getExecutionIdStored(executionId);
    }

    function getExecutionIdPrepared(uint256 executionTime, bytes32 executionId) public view returns (bool, uint256) {
        uint256 storageSlot;
        bool newSlotRequired;
        (storageSlot,,, newSlotRequired) = _getStorageSlot(executionTime);
        if (newSlotRequired) {
            return (false, 0);
        }
        return LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[storageSlot]).getExecutionIdPrepared(executionId);
    }

    // ==================
    // Set Storage functions
    // ==================

    function storeExecutionId(uint256 executionTime, bytes32 executionId, address sender, uint256 amount)
        external
        layerCakeOnly
    {
        LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[_checkCreateStorageSlot(executionTime)]).storeExecutionId(
            executionId, sender, amount
        );
    }

    function prepareExecutionId(bytes32 executionId, address preparer, ExecutionProof memory executionProof)
        external
        layerCakeOnly
        returns (uint256, uint256, bool)
    {
        return LayerCakeStorageSlot(
            layerCakeSTORAGE_SLOTS[_checkCreateStorageSlot(executionProof.operations.executionTime)]
        ).prepareExecutionId(executionId, preparer, executionProof);
    }

    function increaseFee(uint256 executionTime, bytes32 executionId, uint256 amount) external layerCakeOnly {
        LayerCakeStorageSlot(layerCakeSTORAGE_SLOTS[_checkCreateStorageSlot(executionTime)]).increaseFee(
            executionId, amount
        );
    }
}
