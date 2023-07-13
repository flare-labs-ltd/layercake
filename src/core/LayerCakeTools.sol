// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

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

    function getPathwayId(uint256 _originChainId, uint256 _destinationChainId, uint256 _assetId, uint256 _contractId)
        public
        pure
        returns (bytes32 pathwayId)
    {
        pathwayId =
            keccak256(abi.encode("layercakePathwayId", _originChainId, _destinationChainId, _assetId, _contractId));
    }

    function getExecutionId(bytes32 _pathwayId, Operations memory _operations)
        public
        pure
        returns (bytes32 executionId)
    {
        executionId = keccak256(abi.encode("layercakeExecutionId", _pathwayId, _operations));
    }

    function getInvalidExecutionProofId(ExecutionProof memory _invalidExecutionProof)
        public
        pure
        returns (bytes32 invalidExecutionProofId)
    {
        invalidExecutionProofId = keccak256(abi.encode("layercakeInvalidExecutionProofId", _invalidExecutionProof));
    }

    function recoverSigner(bytes32 _hash, ExecutionProof memory _executionProof) public pure returns (address) {
        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
        bytes32 prefixedHashMessage = keccak256(abi.encodePacked(prefix, _hash));
        address signer = ecrecover(prefixedHashMessage, _executionProof.v, _executionProof.r, _executionProof.s);
        return signer;
    }
}
