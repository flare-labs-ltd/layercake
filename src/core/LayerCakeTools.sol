// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

contract LayerCakeTools {
    // =================================================================================
    // STRUCTS
    // =================================================================================

    struct ConstructorParams {
        bool isDestinationChain;
        uint256 thisChainId;
        uint256 oppositeChainId;
        uint256 assetId;
        uint256 contractId;
        address tokenAddress;
        uint256 depositCap;
        uint256 maxBandwidthMultiple;
        uint256 negationRewardMultiple;
        uint256 reorgAssumption;
        uint256 bandwidthDepositDenominator;
        uint256 minBandwidth;
    }

    struct Execution {
        bool prepared;
        uint256 totalPrepared;
        uint256 feeIncrease;
        uint256 feesPaid;
    }

    struct Operations {
        uint256 nonce;
        uint256 amount;
        uint256 fee;
        address sender;
        address recipient;
        uint256 executionTime;
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

    struct BandwidthProvider {
        bool negated;
        uint256 startTime;
        uint256 timeLastActive;
        uint256 timeLastNegated;
        uint256 negationCounter;
        bytes32 prevInvalidExecutionProofId;
        uint256 currentTotalBandwidth;
        uint256 currentUsedBandwidth;
    }

    // =================================================================================
    // EVENTS
    // =================================================================================

    /// @notice For storeStandardOperations() and storeNegationOperations(). Used by bandwidth providers to compete to be the first to execute the stored operations on the opposite chain.
    event OperationsStored(bytes32 executionId, Operations operations);

    /// @notice For executeStandardOperations() and executeNegationOperations(). Used by anyone to detect invalid executions by bandwidth providers in order to compete to be the first to negate them.
    event OperationsExecuted(
        bytes32 executionId, address bandwidthProvider, ExecutionProof executionProof, bool executionPrepared
    );

    /// @notice For storeNegationOperations(). Used by bandwidth providers to prepare a call to executeNegationOperations().
    event NegationStored(address bandwidthProvider, ExecutionProof invalidExecutionProof);

    /// @notice For executeNegationOperations().
    event NegationExecuted(address bandwidthProvider, ExecutionProof invalidExecutionProof);

    /// @notice For addBandwidth() and subtractBandwidth().
    event BandwidthChanged(address bandwidthProvider, bool added, uint256 amount);

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    function getExecutionId(bytes32 pathwayId, Operations memory operations)
        public
        pure
        returns (bytes32 executionId)
    {
        executionId = keccak256(abi.encode("layercakeExecutionId", pathwayId, operations));
    }

    function getInvalidExecutionProofId(ExecutionProof memory invalidExecutionProof)
        public
        pure
        returns (bytes32 invalidExecutionProofId)
    {
        invalidExecutionProofId = keccak256(abi.encode("layercakeInvalidExecutionProofId", invalidExecutionProof));
    }

    function recoverSigner(bytes32 hash, ExecutionProof memory executionProof) public pure returns (address) {
        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(prefix, hash));
        address signer = ecrecover(prefixedHashMessage, executionProof.v, executionProof.r, executionProof.s);
        require(signer != address(0), "RS1");
        return signer;
    }
}
