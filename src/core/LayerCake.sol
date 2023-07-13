// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "./LayerCakeTools.sol";
import "./LayerCakeBandwidthManager.sol";
import "./LayerCakeStorageManager.sol";
import "./LayerCakeCalldataInterface.sol";

/**
 * @title LayerCake
 * @dev An insured-in-transit cross-network composability protocol
 */
contract LayerCake is ReentrancyGuard, LayerCakeTools {
    // =================================================================================
    // PUBLIC VARIABLES
    // =================================================================================

    bool public immutable isDestinationChain;
    bytes32 public immutable departingPathwayId;
    bytes32 public immutable arrivingPathwayId;
    // On the source chain, `token` is the real token deposited by users.
    // On the destination chain, `token` represents the wrapped version of this ERC20.
    //      The destination version of the token should be a custom ERC20 with a
    //      maximum deposit capacity.
    IERC20 public immutable token;
    uint256 public immutable depositCap;

    LayerCakeBandwidthManager public immutable bandwidthManager;
    LayerCakeStorageManager public immutable storageManager;
    LayerCakeCalldataInterface public immutable calldataInterface;

    address public immutable forwardedFeeRecipient;
    uint256 public immutable forwardedFeeDenominator;

    // =================================================================================
    // CONSTRUCTOR
    // =================================================================================

    constructor(ConstructorParams memory _params) {
        isDestinationChain = _params.isDestinationChain;
        departingPathwayId =
            getPathwayId(_params.thisChainId, _params.oppositeChainId, _params.assetId, _params.contractId);
        arrivingPathwayId =
            getPathwayId(_params.oppositeChainId, _params.thisChainId, _params.assetId, _params.contractId);
        token = IERC20(_params.tokenAddress);
        depositCap = _params.depositCap;
        forwardedFeeRecipient = _params.forwardedFeeRecipient;
        forwardedFeeDenominator = _params.forwardedFeeDenominator;
        bandwidthManager = new LayerCakeBandwidthManager(
                                    address(this), 
                                    _params.reorgAssumption,
                                    _params.bandwidthDepositDenominator,
                                    _params.defaultNegationCost);
        storageManager = new LayerCakeStorageManager(address(this));
        calldataInterface = new LayerCakeCalldataInterface();
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    // =================
    // Proof functions
    // =================

    function getExecutionValidity(
        address _bandwidthProvider,
        bytes32 _executionId,
        ExecutionProof memory _executionProof
    ) public view returns (bool) {
        // Check that the signature on _proof matches _bandwidthProvider signing the executionId hash
        require(recoverSigner(_executionId, _executionProof) == _bandwidthProvider, "GEV1");
        return (storageManager.getExecutionIdStored(_executionProof.operations.executionTime, _executionId));
    }

    // ==============
    // User functions
    // ==============

    function storeStandardOperations(Operations memory _operations) external {
        require(_operations.negatedBandwidthProvider == address(0), "SSO1");
        require(!_operations.cancel, "SSO2");
        if (forwardedFeeDenominator > 0) {
            uint256 forwardedFee = _operations.amount / forwardedFeeDenominator;
            require(forwardedFee > 0, "SSO3");
            uint256 forwardedFeeRecipientCurrentBalance = token.balanceOf(forwardedFeeRecipient);
            token.transferFrom(msg.sender, forwardedFeeRecipient, forwardedFee);
            require(token.balanceOf(forwardedFeeRecipient) > forwardedFeeRecipientCurrentBalance, "SSO4");
        }
        uint256 thisCurrentBalance = token.balanceOf(address(this));
        token.transferFrom(msg.sender, address(this), _operations.amount);
        _operations.amount = token.balanceOf(address(this)) - thisCurrentBalance;
        _storeOperations(_operations);
    }

    function cancelStandardOperations(Operations memory _operations) external nonReentrant {
        require(_operations.negatedBandwidthProvider == address(0), "CSO1");
        require(!_operations.cancel, "CSO2");
        bytes32 executionId = getExecutionId(arrivingPathwayId, _operations);
        (bool executionPrepared,) = storageManager.getExecutionIdPrepared(_operations.executionTime, executionId);
        require(!executionPrepared, "CSO3");
        ExecutionProof memory cancelExecutionProof =
            ExecutionProof(_operations, _operations.amount, 0, bytes32(0), bytes32(0));
        uint256 partialFee;
        (partialFee, executionPrepared) = _executeOperations(cancelExecutionProof, true);
        require(executionPrepared, "CSO4");
        _operations.cancel = true;
        _operations.amount = _operations.amount - _operations.fee + partialFee;
        _storeOperations(_operations);
    }

    function storeNegationOperations(Operations memory _operations) external nonReentrant {
        require(_operations.negatedBandwidthProvider != address(0), "SNO1");
        require(!_operations.cancel, "SNO2");
        uint256 currentBalance = token.balanceOf(address(this));
        token.transferFrom(msg.sender, address(this), _operations.amount);
        _operations.amount = token.balanceOf(address(this)) - currentBalance;
        _operations.amount = bandwidthManager.negateBp(
            _operations.negatedBandwidthProvider,
            _operations.amount,
            _operations.fee,
            _operations.initialNegation,
            _operations.invalidExecutionProofId
        );
        _storeOperations(_operations);
    }

    function addBandwidth(uint256 _bandwidthAmount) external {
        uint256 depositedAmount = bandwidthManager.addBandwidth(msg.sender, _bandwidthAmount);
        token.transferFrom(msg.sender, address(this), depositedAmount);
        require(token.balanceOf(address(this)) <= depositCap, "AB1");
        emit BandwidthChanged(msg.sender, true, _bandwidthAmount);
    }

    function subtractBandwidth(uint256 _bandwidthAmount) external nonReentrant {
        uint256 withdrawnAmount = bandwidthManager.subtractBandwidth(msg.sender, _bandwidthAmount);
        token.transfer(msg.sender, withdrawnAmount);
        emit BandwidthChanged(msg.sender, false, _bandwidthAmount);
    }

    function increaseFee(bytes32 _executionId, uint256 _executionTime, uint256 _addedFee) external nonReentrant {
        require(block.timestamp >= _executionTime, "IF1");
        token.transferFrom(msg.sender, address(this), _addedFee);
        require(token.balanceOf(address(this)) <= depositCap, "IF2");
        storageManager.increaseFee(_executionTime, _executionId, _addedFee);
    }

    // ==============
    // Bandwidth Provider functions
    // ==============

    function executeStandardOperations(ExecutionProof memory _executionProof) external {
        require(_executionProof.operations.negatedBandwidthProvider == address(0), "ESO1");
        require(!_executionProof.operations.cancel, "ESO2");
        require(_executionProof.operations.cancellationFeeRefund == 0, "ESO3");
        (, bool executionPrepared) = _executeOperations(_executionProof, false);
        if (!executionPrepared) {
            return;
        }
        token.transfer(
            _executionProof.operations.recipient, _executionProof.operations.amount - _executionProof.operations.fee
        );
        if (_executionProof.operations.callData.length > 1) {
            uint256 currentBalance = token.balanceOf(address(calldataInterface));
            uint256 initialGasLeft = gasleft();
            calldataInterface.execute(_executionProof.operations.recipient, _executionProof.operations.callData);
            require(_executionProof.operations.callDataGasLimit >= initialGasLeft - gasleft(), "ESO4");
            require(token.balanceOf(address(calldataInterface)) == currentBalance, "ESO5");
        }
    }

    function executeCancelStandardOperations(ExecutionProof memory _executionProof) external nonReentrant {
        require(_executionProof.operations.negatedBandwidthProvider == address(0), "ECSO1");
        require(_executionProof.operations.cancel, "ECSO2");
        require(_executionProof.operations.cancellationFeeRefund <= _executionProof.operations.fee, "ECSO3");
        // Check that these operations were originally stored on this chain
        uint256 feeRefund = _executionProof.operations.cancellationFeeRefund;
        _executionProof.operations.cancel = false;
        _executionProof.operations.amount =
            _executionProof.operations.amount + _executionProof.operations.fee - feeRefund;
        _executionProof.operations.cancellationFeeRefund = 0;
        bytes32 executionId = getExecutionId(departingPathwayId, _executionProof.operations);
        require(storageManager.getExecutionIdStored(_executionProof.operations.executionTime, executionId), "ECSO4");
        // Execute the operations
        _executionProof.operations.cancel = true;
        _executionProof.operations.amount =
            _executionProof.operations.amount - _executionProof.operations.fee + feeRefund;
        _executionProof.operations.cancellationFeeRefund = feeRefund;
        (, bool executionPrepared) = _executeOperations(_executionProof, false);
        if (!executionPrepared) {
            return;
        }
        token.transfer(
            _executionProof.operations.sender, _executionProof.operations.amount - _executionProof.operations.fee
        );
    }

    function executeNegationOperations(
        ExecutionProof memory _negationExecutionProof,
        ExecutionProof memory _invalidExecutionProof
    ) external nonReentrant {
        require(_negationExecutionProof.operations.negatedBandwidthProvider != address(0), "ENO1");
        require(!_negationExecutionProof.operations.cancel, "ENO2");
        require(_negationExecutionProof.operations.cancellationFeeRefund == 0, "ENO3");
        bytes32 invalidExecutionProofId = getInvalidExecutionProofId(_invalidExecutionProof);
        require(invalidExecutionProofId == _negationExecutionProof.operations.invalidExecutionProofId, "ENO4");
        bytes32 invalidExecutionId = getExecutionId(departingPathwayId, _invalidExecutionProof.operations);
        bool executionValidity = getExecutionValidity(
            _negationExecutionProof.operations.negatedBandwidthProvider, invalidExecutionId, _invalidExecutionProof
        );
        require(_negationExecutionProof.operations.initialNegation != executionValidity, "ENO5");
        (, bool executionPrepared) = _executeOperations(_negationExecutionProof, false);
        if (!executionPrepared) {
            return;
        }
        token.transfer(
            _negationExecutionProof.operations.recipient,
            _negationExecutionProof.operations.amount - _negationExecutionProof.operations.fee
        );
    }

    // ==============
    // Private functions
    // ==============

    function _storeOperations(Operations memory _operations) private {
        require(_operations.recipient != address(0), "SO1");
        require(_operations.sender == msg.sender, "SO2");
        if (!_operations.cancel) {
            require(_operations.amount >= 2 * _operations.fee, "SO3");
        } else {
            require(_operations.amount >= _operations.fee, "SO4");
        }
        require(token.balanceOf(address(this)) <= depositCap, "SO5");
        _operations.executionTime = block.timestamp;
        bytes32 executionId = getExecutionId(departingPathwayId, _operations);
        require(!storageManager.getExecutionIdStored(_operations.executionTime, executionId), "SO6");
        storageManager.storeExecutionId(_operations.executionTime, executionId, _operations.sender, _operations.amount);
        emit OperationsStored(executionId, _operations);
    }

    function _executeOperations(ExecutionProof memory _executionProof, bool _cancel) internal returns (uint256, bool) {
        require(_executionProof.operations.recipient != address(0), "EO1");
        require(block.timestamp >= _executionProof.operations.executionTime, "EO2");
        bytes32 executionId = getExecutionId(arrivingPathwayId, _executionProof.operations);
        (uint256 partialFee, uint256 bandwidthUsed, bool executionPrepared) =
            storageManager.prepareExecutionId(executionId, msg.sender, _executionProof);
        if (!_cancel) {
            require(recoverSigner(executionId, _executionProof) == msg.sender, "EO3");
            bandwidthManager.proveBandwidth(msg.sender, bandwidthUsed);
            token.transfer(msg.sender, partialFee);
        }
        emit OperationsExecuted(executionId, msg.sender, _executionProof, executionPrepared);
        return (partialFee, executionPrepared);
    }
}
