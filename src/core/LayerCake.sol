// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "./LayerCakeTools.sol";
import "./LayerCakeBandwidthManager.sol";
import "./LayerCakeStorageManager.sol";
import "./LayerCakeCalldataInterface.sol";

/**
 * @title LayerCake
 * @dev An insured-in-transit cross-network composability protocol
 */
contract LayerCake is LayerCakeTools {
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

    constructor(ConstructorParams memory params) {
        isDestinationChain = params.isDestinationChain;
        departingPathwayId = getPathwayId(params.thisChainId, params.oppositeChainId, params.assetId, params.contractId);
        arrivingPathwayId = getPathwayId(params.oppositeChainId, params.thisChainId, params.assetId, params.contractId);
        token = IERC20(params.tokenAddress);
        depositCap = params.depositCap;
        forwardedFeeRecipient = params.forwardedFeeRecipient;
        forwardedFeeDenominator = params.forwardedFeeDenominator;
        bandwidthManager = new LayerCakeBandwidthManager(
                                    address(this), 
                                    params.reorgAssumption,
                                    params.bandwidthDepositDenominator,
                                    params.defaultNegationCost);
        storageManager = new LayerCakeStorageManager(address(this));
        calldataInterface = new LayerCakeCalldataInterface();
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    // =================
    // Proof functions
    // =================

    function getExecutionValidity(address bandwidthProvider, bytes32 executionId, ExecutionProof memory executionProof)
        public
        view
        returns (bool)
    {
        // Check that the signature on proof matches bandwidthProvider signing the executionId hash
        require(recoverSigner(executionId, executionProof) == bandwidthProvider, "GEV1");
        return (storageManager.getExecutionIdStored(executionProof.operations.executionTime, executionId));
    }

    // ==============
    // User functions
    // ==============

    function storeStandardOperations(Operations memory operations) external {
        require(operations.negatedBandwidthProvider == address(0), "SSO1");
        require(!operations.cancel, "SSO2");
        if (forwardedFeeDenominator > 0) {
            uint256 forwardedFee = operations.amount / forwardedFeeDenominator;
            require(forwardedFee > 0, "SSO3");
            uint256 forwardedFeeRecipientCurrentBalance = token.balanceOf(forwardedFeeRecipient);
            require(token.transferFrom(msg.sender, forwardedFeeRecipient, forwardedFee), "SSO4");
            require(token.balanceOf(forwardedFeeRecipient) > forwardedFeeRecipientCurrentBalance, "SSO5");
        }
        uint256 thisCurrentBalance = token.balanceOf(address(this));
        require(token.transferFrom(msg.sender, address(this), operations.amount), "SSO6");
        operations.amount = token.balanceOf(address(this)) - thisCurrentBalance;
        _storeOperations(operations);
    }

    function cancelStandardOperations(Operations memory operations) external {
        require(operations.negatedBandwidthProvider == address(0), "CSO1");
        require(!operations.cancel, "CSO2");
        bytes32 executionId = getExecutionId(arrivingPathwayId, operations);
        (bool executionPrepared,) = storageManager.getExecutionIdPrepared(operations.executionTime, executionId);
        require(!executionPrepared, "CSO3");
        ExecutionProof memory cancelExecutionProof =
            ExecutionProof(operations, operations.amount, 0, bytes32(0), bytes32(0));
        uint256 partialFee;
        (partialFee, executionPrepared) = _executeOperations(cancelExecutionProof, true);
        require(executionPrepared, "CSO4");
        operations.cancel = true;
        operations.amount = operations.amount - operations.fee + partialFee;
        _storeOperations(operations);
    }

    function storeNegationOperations(Operations memory operations) external {
        require(operations.negatedBandwidthProvider != address(0), "SNO1");
        require(!operations.cancel, "SNO2");
        uint256 currentBalance = token.balanceOf(address(this));
        require(token.transferFrom(msg.sender, address(this), operations.amount), "SNO3");
        operations.amount = token.balanceOf(address(this)) - currentBalance;
        operations.amount = bandwidthManager.negateBp(
            operations.negatedBandwidthProvider,
            operations.amount,
            operations.fee,
            operations.initialNegation,
            operations.invalidExecutionProofId
        );
        _storeOperations(operations);
    }

    function addBandwidth(uint256 bandwidthAmount) external {
        uint256 depositedAmount = bandwidthManager.addBandwidth(msg.sender, bandwidthAmount);
        require(token.transferFrom(msg.sender, address(this), depositedAmount), "AB1");
        require(token.balanceOf(address(this)) <= depositCap, "AB2");
        emit BandwidthChanged(msg.sender, true, bandwidthAmount);
    }

    function subtractBandwidth(uint256 bandwidthAmount) external {
        uint256 withdrawnAmount = bandwidthManager.subtractBandwidth(msg.sender, bandwidthAmount);
        require(token.transfer(msg.sender, withdrawnAmount), "SB1");
        emit BandwidthChanged(msg.sender, false, bandwidthAmount);
    }

    function increaseFee(bytes32 executionId, uint256 executionTime, uint256 addedFee) external {
        require(block.timestamp >= executionTime, "IF1");
        require(token.transferFrom(msg.sender, address(this), addedFee), "IF2");
        require(token.balanceOf(address(this)) <= depositCap, "IF3");
        storageManager.increaseFee(executionTime, executionId, addedFee);
    }

    // ==============
    // Bandwidth Provider functions
    // ==============

    function executeStandardOperations(ExecutionProof memory executionProof) external {
        require(executionProof.operations.negatedBandwidthProvider == address(0), "ESO1");
        require(!executionProof.operations.cancel, "ESO2");
        require(executionProof.operations.cancellationFeeRefund == 0, "ESO3");
        (, bool executionPrepared) = _executeOperations(executionProof, false);
        if (!executionPrepared) {
            return;
        }
        require(
            token.transfer(
                executionProof.operations.recipient, executionProof.operations.amount - executionProof.operations.fee
            ),
            "ESO4"
        );
        if (executionProof.operations.callData.length > 1) {
            uint256 currentBalance = token.balanceOf(address(calldataInterface));
            uint256 initialGasLeft = gasleft();
            calldataInterface.execute(executionProof.operations.recipient, executionProof.operations.callData);
            require(executionProof.operations.callDataGasLimit >= initialGasLeft - gasleft(), "ESO5");
            require(token.balanceOf(address(calldataInterface)) == currentBalance, "ESO6");
        }
    }

    function executeCancelStandardOperations(ExecutionProof memory executionProof) external {
        require(executionProof.operations.negatedBandwidthProvider == address(0), "ECSO1");
        require(executionProof.operations.cancel, "ECSO2");
        require(executionProof.operations.cancellationFeeRefund <= executionProof.operations.fee, "ECSO3");
        // Check that these operations were originally stored on this chain
        uint256 feeRefund = executionProof.operations.cancellationFeeRefund;
        executionProof.operations.cancel = false;
        executionProof.operations.amount = executionProof.operations.amount + executionProof.operations.fee - feeRefund;
        executionProof.operations.cancellationFeeRefund = 0;
        bytes32 executionId = getExecutionId(departingPathwayId, executionProof.operations);
        require(storageManager.getExecutionIdStored(executionProof.operations.executionTime, executionId), "ECSO4");
        // Execute the operations
        executionProof.operations.cancel = true;
        executionProof.operations.amount = executionProof.operations.amount - executionProof.operations.fee + feeRefund;
        executionProof.operations.cancellationFeeRefund = feeRefund;
        (, bool executionPrepared) = _executeOperations(executionProof, false);
        if (!executionPrepared) {
            return;
        }
        require(
            token.transfer(
                executionProof.operations.sender, executionProof.operations.amount - executionProof.operations.fee
            ),
            "ECSO5"
        );
    }

    function executeNegationOperations(
        ExecutionProof memory negationExecutionProof,
        ExecutionProof memory invalidExecutionProof
    ) external {
        require(negationExecutionProof.operations.negatedBandwidthProvider != address(0), "ENO1");
        require(!negationExecutionProof.operations.cancel, "ENO2");
        require(negationExecutionProof.operations.cancellationFeeRefund == 0, "ENO3");
        bytes32 invalidExecutionProofId = getInvalidExecutionProofId(invalidExecutionProof);
        require(invalidExecutionProofId == negationExecutionProof.operations.invalidExecutionProofId, "ENO4");
        bytes32 invalidExecutionId = getExecutionId(departingPathwayId, invalidExecutionProof.operations);
        bool executionValidity = getExecutionValidity(
            negationExecutionProof.operations.negatedBandwidthProvider, invalidExecutionId, invalidExecutionProof
        );
        require(negationExecutionProof.operations.initialNegation != executionValidity, "ENO5");
        (, bool executionPrepared) = _executeOperations(negationExecutionProof, false);
        if (!executionPrepared) {
            return;
        }
        require(
            token.transfer(
                negationExecutionProof.operations.recipient,
                negationExecutionProof.operations.amount - negationExecutionProof.operations.fee
            ),
            "ENO6"
        );
    }

    // ==============
    // Private functions
    // ==============

    function _storeOperations(Operations memory operations) private {
        require(operations.recipient != address(0), "SO1");
        require(operations.sender == msg.sender, "SO2");
        if (!operations.cancel) {
            require(operations.amount >= 2 * operations.fee, "SO3");
        } else {
            require(operations.amount >= operations.fee, "SO4");
        }
        require(token.balanceOf(address(this)) <= depositCap, "SO5");
        operations.executionTime = block.timestamp;
        bytes32 executionId = getExecutionId(departingPathwayId, operations);
        require(!storageManager.getExecutionIdStored(operations.executionTime, executionId), "SO6");
        storageManager.storeExecutionId(operations.executionTime, executionId, operations.sender, operations.amount);
        emit OperationsStored(executionId, operations);
    }

    function _executeOperations(ExecutionProof memory executionProof, bool cancel) private returns (uint256, bool) {
        require(executionProof.operations.recipient != address(0), "EO1");
        require(block.timestamp >= executionProof.operations.executionTime, "EO2");
        bytes32 executionId = getExecutionId(arrivingPathwayId, executionProof.operations);
        (uint256 partialFee, uint256 bandwidthUsed, bool executionPrepared) =
            storageManager.prepareExecutionId(executionId, msg.sender, executionProof);
        if (!cancel) {
            require(recoverSigner(executionId, executionProof) == msg.sender, "EO3");
            bandwidthManager.proveBandwidth(msg.sender, bandwidthUsed);
            require(token.transfer(msg.sender, partialFee), "EO4");
        }
        emit OperationsExecuted(executionId, msg.sender, executionProof, executionPrepared);
        return (partialFee, executionPrepared);
    }
}
