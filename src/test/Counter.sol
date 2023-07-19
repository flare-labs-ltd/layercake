// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

contract Counter {
    uint256 public counter;

    function incrementCounter(uint256 _increment) public {
        counter = counter + _increment;
    }

    function getCounterValue() public view returns (uint256) {
        return counter;
    }
}
