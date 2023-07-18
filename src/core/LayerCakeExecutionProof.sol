// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

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
