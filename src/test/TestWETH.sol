// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract TestWETH is ERC20 {
    // Decimals are set to 18 by default in `ERC20`
    constructor() ERC20("TestWETH", "testWETH") {
        _mint(msg.sender, 2 ** 256 - 1);
    }
}
