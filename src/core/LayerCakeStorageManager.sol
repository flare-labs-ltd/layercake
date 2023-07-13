// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "./LayerCakeExecutionProof.sol";
import "./LayerCakeStorageSlot.sol";

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
