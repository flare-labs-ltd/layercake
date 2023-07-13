// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

contract LayerCakeDeployTools {
    struct BalanceChange {
        bool deposit;
        address sender;
        uint256 amount;
    }

    event BalanceChangeEvent(BalanceChange balanceChange);

    function getVerificationHashUpdate(bytes32 _verificationHash, BalanceChange memory _balanceChange)
        public
        pure
        returns (bytes32 verificationHashUpdate)
    {
        verificationHashUpdate = keccak256(abi.encode("layercakeBalanceChangeHash", _verificationHash, _balanceChange));
    }
}
