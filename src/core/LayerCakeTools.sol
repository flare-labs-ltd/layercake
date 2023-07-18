// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "./LayerCakeExecutionProof.sol";

contract LayerCakeTools is LayerCakeExecutionProof {
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
        string tokenName;
        string tokenSymbol;
        uint256 depositCap;
        uint256 reorgAssumption;
        uint256 bandwidthDepositDenominator;
        uint256 defaultNegationCost;
        address forwardedFeeRecipient;
        uint256 forwardedFeeDenominator;
    }

    // =================================================================================
    // EVENTS
    // =================================================================================

    event OperationsStored(bytes32 executionId, Operations operations);

    event OperationsExecuted(
        bytes32 executionId, address bandwidthProvider, ExecutionProof executionProof, bool executionPrepared
    );

    event BandwidthChanged(address bandwidthProvider, bool added, uint256 amount);

    // =================================================================================
    // FUNCTIONS
    // =================================================================================

    function getPathwayId(uint256 originChainId, uint256 destinationChainId, uint256 assetId, uint256 contractId)
        public
        pure
        returns (bytes32 pathwayId)
    {
        pathwayId = keccak256(abi.encode("layercakePathwayId", originChainId, destinationChainId, assetId, contractId));
    }

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
        return signer;
    }
}
