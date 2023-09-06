// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import "./LayerCakeTools.sol";

/**
 * @title LayerCake
 * @dev An insured-in-transit cross-network composability protocol
 */
contract LayerCake is LayerCakeTools {
    using SafeERC20 for IERC20;

    // =================================================================================
    // PUBLIC VARIABLES
    // =================================================================================

    ConstructorParams public params;
    bytes32 public immutable departingPathwayId;
    bytes32 public immutable arrivingPathwayId;
    // On the source chain, `token` is the real token deposited by users.
    // On the destination chain, `token` represents the wrapped version of this ERC20.
    // The destination version of the token should be a custom ERC20 with a
    // maximum deposit capacity.
    IERC20 public immutable token;

    mapping(address => BandwidthProvider) public bpInfo;
    mapping(bytes32 => bool) public storedExecutionIds;
    mapping(bytes32 => Execution) public preparedExecutionIds;

    // =================================================================================
    // CONSTRUCTOR
    // =================================================================================

    constructor(ConstructorParams memory p) {
        params = p;
        departingPathwayId = keccak256(
            abi.encode(
                "layercakePathwayId", params.thisChainId, params.oppositeChainId, params.assetId, params.contractId
            )
        );
        arrivingPathwayId = keccak256(
            abi.encode(
                "layercakePathwayId", params.oppositeChainId, params.thisChainId, params.assetId, params.contractId
            )
        );
        require(departingPathwayId != arrivingPathwayId, "C1");
        require(params.tokenAddress != address(0), "C2");
        require(params.depositCap > 0, "C3");
        require(params.maxBandwidthMultiple > 0, "C4");
        require(params.negationRewardMultiple > 0, "C5");
        require(params.reorgAssumption > 0, "C6");
        require(params.bandwidthDepositDenominator > 0, "C7");
        require(params.minBandwidth > 0, "C8");
        token = IERC20(params.tokenAddress);
    }

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    /// @notice Proves whether an execution on the opposite chain has a valid corresponding storage of operations on this chain.
    /// @dev This function is used for verifying the execution of negation operations.
    function getExecutionValidity(address bandwidthProvider, ExecutionProof memory executionProof)
        public
        view
        returns (bool)
    {
        bytes32 executionId = getExecutionId(departingPathwayId, executionProof.operations);
        // Check that the signature on proof matches bandwidthProvider signing the executionId hash
        require(recoverSigner(executionId, executionProof) == bandwidthProvider, "GEV1");
        return (storedExecutionIds[executionId]);
    }

    // ==============
    // User functions
    // ==============

    /// @notice Deposits an amount of tokens that are sent to a recipient on the opposite chain.
    /// @dev These operations are executed on the opposite chain by calling executeStandardOperations() as a bandwidth provider.
    function storeStandardOperations(Operations memory operations) external {
        require(operations.negatedBandwidthProvider == address(0), "SSO1");
        uint256 currentBalance = token.balanceOf(address(this));
        token.safeTransferFrom(msg.sender, address(this), operations.amount);
        operations.amount = token.balanceOf(address(this)) - currentBalance;
        _storeOperations(operations);
    }

    /// @notice If a deposit is not immediately being transferred, this function can speed up execution by increasing the paid fee.
    /// @dev This function is called on the chain where tokens are expected to be received by the recipient, and not on the chain where a deposit was initially made.
    function increaseFee(bytes32 executionId, uint256 addedFee) external {
        uint256 currentBalance = token.balanceOf(address(this));
        token.safeTransferFrom(msg.sender, address(this), addedFee);
        addedFee = token.balanceOf(address(this)) - currentBalance;
        require(token.balanceOf(address(this)) <= params.depositCap, "IF1");
        preparedExecutionIds[executionId].feeIncrease = preparedExecutionIds[executionId].feeIncrease + addedFee;
    }

    // ==============
    // Bandwidth Provider functions
    // ==============

    /// @notice Add bandwidth to a new or existing bandwidth provider.
    /// @dev There is a delay in using new bandwidth of one bandwidth period.
    function addBandwidth(uint256 bandwidthAmount) external {
        // Require that the added bandwidth is divisible by bandwidthDepositDenominator without a remainder
        require(bandwidthAmount % params.bandwidthDepositDenominator == 0, "AB1");
        uint256 depositedAmount = bandwidthAmount + (bandwidthAmount / params.bandwidthDepositDenominator);
        _proveBandwidth(msg.sender, bandwidthAmount, 1);
        uint256 currentBalance = token.balanceOf(address(this));
        token.safeTransferFrom(msg.sender, address(this), depositedAmount);
        bandwidthAmount = token.balanceOf(address(this)) - currentBalance;
        require(token.balanceOf(address(this)) <= params.depositCap, "AB2");
        emit BandwidthChanged(msg.sender, true, bandwidthAmount);
    }

    /// @notice Subtract bandwidth from an existing bandwidth provider and receive the corresponding amount of tokens.
    /// @dev This is the only correct way to remove bandwidth from the system such that the entire amount of value deposited to become a bandwidth provider is retrieved.
    function subtractBandwidth(uint256 bandwidthAmount) external {
        // Require that the subtracted bandwidth is divisible by bandwidthDepositDenominator without a remainder
        require(bandwidthAmount % params.bandwidthDepositDenominator == 0, "SB1");
        uint256 withdrawnAmount = bandwidthAmount + (bandwidthAmount / params.bandwidthDepositDenominator);
        _proveBandwidth(msg.sender, bandwidthAmount, 2);
        token.safeTransfer(msg.sender, withdrawnAmount);
        emit BandwidthChanged(msg.sender, false, bandwidthAmount);
    }

    /// @notice Insurance mechanism of LayerCake on the chain where an invalid execution occurred.
    /// @dev Multiplies a bandwidth provider's bandwidth by -1 such that it either has no effective bandwidth or recovers from being previously negated.
    function storeNegationOperations(Operations memory operations, ExecutionProof memory invalidExecutionProof)
        external
    {
        require(operations.negatedBandwidthProvider != address(0), "SNO1");
        require(getInvalidExecutionProofId(invalidExecutionProof) == operations.invalidExecutionProofId, "SNO2");
        require(
            recoverSigner(getExecutionId(arrivingPathwayId, invalidExecutionProof.operations), invalidExecutionProof)
                == operations.negatedBandwidthProvider,
            "SNO3"
        );
        uint256 currentBalance = token.balanceOf(address(this));
        token.safeTransferFrom(msg.sender, address(this), operations.amount);
        operations.amount = token.balanceOf(address(this)) - currentBalance;
        operations.amount = _negateBp(
            operations.negatedBandwidthProvider,
            operations.amount,
            operations.fee,
            operations.initialNegation,
            operations.invalidExecutionProofId
        );
        _storeOperations(operations);
        emit NegationStored(operations.negatedBandwidthProvider, invalidExecutionProof);
    }

    /// @notice Sends an amount of tokens to a recipient corresponding to a deposit on the opposite chain.
    /// @dev Callable only by bandwidth providers with an available bandwidth of at least partialAmount.
    function executeStandardOperations(ExecutionProof memory executionProof) external {
        require(executionProof.operations.negatedBandwidthProvider == address(0), "ESO1");
        if (!_executeOperations(executionProof)) {
            return;
        }
        token.safeTransfer(
            executionProof.operations.recipient, executionProof.operations.amount - executionProof.operations.fee
        );
    }

    /// @notice Insurance mechanism of LayerCake on the chain opposite where an invalid execution occurred.
    /// @dev If a bandwidth provider has their bandwidth made negative on the opposite chain, then they must be proven to have executed operations that don't exist on this chain in order for this function call to succeed.
    function executeNegationOperations(
        ExecutionProof memory negationExecutionProof,
        ExecutionProof memory invalidExecutionProof
    ) external {
        require(negationExecutionProof.operations.negatedBandwidthProvider != address(0), "ENO1");
        require(
            getInvalidExecutionProofId(invalidExecutionProof)
                == negationExecutionProof.operations.invalidExecutionProofId,
            "ENO2"
        );
        require(
            negationExecutionProof.operations.initialNegation
                != getExecutionValidity(negationExecutionProof.operations.negatedBandwidthProvider, invalidExecutionProof),
            "ENO3"
        );
        if (!_executeOperations(negationExecutionProof)) {
            return;
        }
        token.safeTransfer(
            negationExecutionProof.operations.recipient,
            negationExecutionProof.operations.amount - negationExecutionProof.operations.fee
        );
        emit NegationExecuted(negationExecutionProof.operations.negatedBandwidthProvider, invalidExecutionProof);
    }

    // ==============
    // Private functions
    // ==============

    function _storeOperations(Operations memory operations) private {
        require(operations.recipient != address(0), "SO1");
        require(operations.sender == msg.sender, "SO2");
        require(operations.amount >= operations.fee, "SO3");
        require(token.balanceOf(address(this)) <= params.depositCap, "SO4");
        operations.executionTime = block.timestamp;
        bytes32 executionId = getExecutionId(departingPathwayId, operations);
        require(!storedExecutionIds[executionId], "SO5");
        storedExecutionIds[executionId] = true;
        emit OperationsStored(executionId, operations);
    }

    function _executeOperations(ExecutionProof memory executionProof) private returns (bool) {
        require(executionProof.operations.recipient != address(0), "EO1");
        require(block.timestamp >= executionProof.operations.executionTime, "EO2");
        bytes32 executionId = getExecutionId(arrivingPathwayId, executionProof.operations);
        (uint256 partialFee, uint256 bandwidthUsed, bool executionPrepared) =
            _prepareExecutionId(executionId, executionProof);
        require(recoverSigner(executionId, executionProof) == msg.sender, "EO3");
        _proveBandwidth(msg.sender, bandwidthUsed, 0);
        token.safeTransfer(msg.sender, partialFee);
        emit OperationsExecuted(executionId, msg.sender, executionProof, executionPrepared);
        return executionPrepared;
    }

    function _prepareExecutionId(bytes32 executionId, ExecutionProof memory executionProof)
        private
        returns (uint256, uint256, bool)
    {
        Execution memory executionIdInfo = preparedExecutionIds[executionId];
        uint256 remainingAmount = executionProof.operations.amount - executionIdInfo.totalPrepared;
        require(remainingAmount > 0, "PEIP1");
        if (executionProof.partialAmount >= remainingAmount) {
            executionIdInfo.prepared = true;
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
        return (partialFee, executionProof.partialAmount, executionIdInfo.prepared);
    }

    function _proveBandwidth(address bandwidthProvider, uint256 amount, uint256 setting) private {
        BandwidthProvider memory bp = bpInfo[bandwidthProvider];
        require(!bp.negated && block.timestamp - bp.timeLastNegated > 2 * params.reorgAssumption, "PB1");
        require(block.timestamp >= bp.timeLastActive, "PB2");
        bp.negationCounter = 0;
        if (setting != 1) {
            if (
                (block.timestamp - bp.startTime) / (2 * params.reorgAssumption)
                    > (bp.timeLastActive - bp.startTime) / (2 * params.reorgAssumption)
            ) {
                // New bandwidth period
                if (
                    bp.currentUsedBandwidth > bp.currentTotalBandwidth
                        || amount > bp.currentTotalBandwidth - bp.currentUsedBandwidth
                ) {
                    require(block.timestamp - bp.timeLastActive > params.reorgAssumption, "PB3");
                }
                bp.currentUsedBandwidth = 0;
            }
            // Prove that the bandwidth provider calling this function has free bandwidth >= amount
            require(bp.currentTotalBandwidth - bp.currentUsedBandwidth >= amount, "PB4");
        } else {
            if (bp.startTime == 0) {
                // This is a new BP
                bp.startTime = block.timestamp;
            }
            bp.currentTotalBandwidth = bp.currentTotalBandwidth + amount;
            // Require that the added bandwidth is greater than or equal to the default negation cost
            require(bp.currentTotalBandwidth >= params.minBandwidth, "PB5");
            require(bp.currentTotalBandwidth <= params.minBandwidth * params.maxBandwidthMultiple, "PB6");
        }
        if (setting <= 1) {
            bp.timeLastActive = block.timestamp + setting * 2 * params.reorgAssumption;
            bp.currentUsedBandwidth = bp.currentUsedBandwidth + amount;
        } else {
            bp.currentTotalBandwidth = bp.currentTotalBandwidth - amount;
            if (bp.currentTotalBandwidth > 0) {
                require(bp.currentTotalBandwidth >= params.minBandwidth, "PB7");
            }
        }
        bpInfo[bandwidthProvider] = bp;
    }

    function _negateBp(
        address bandwidthProvider,
        uint256 depositedAmount,
        uint256 fee,
        bool initialNegation,
        bytes32 invalidExecutionProofId
    ) private returns (uint256 executionAmount) {
        BandwidthProvider memory bp = bpInfo[bandwidthProvider];
        if (!bp.negated) {
            if (bp.negationCounter <= 1) {
                require(depositedAmount - fee == bp.currentTotalBandwidth / params.maxBandwidthMultiple, "NB1");
            } else {
                require(depositedAmount - fee == bp.currentTotalBandwidth, "NB2");
                bp.negationCounter = 0;
            }
            bp.negationCounter = bp.negationCounter + 1;
            executionAmount = depositedAmount
                + (bp.currentTotalBandwidth / (params.negationRewardMultiple * params.bandwidthDepositDenominator));
        } else {
            require(bp.prevInvalidExecutionProofId == invalidExecutionProofId, "NB3");
            require(depositedAmount - fee == bp.currentTotalBandwidth, "NB4");
            executionAmount = depositedAmount + bp.currentTotalBandwidth / params.maxBandwidthMultiple;
        }
        bp.negated = !bp.negated;
        require(initialNegation == bp.negated, "NB5");
        bp.timeLastNegated = block.timestamp;
        bp.prevInvalidExecutionProofId = invalidExecutionProofId;
        bpInfo[bandwidthProvider] = bp;
        return executionAmount;
    }
}
