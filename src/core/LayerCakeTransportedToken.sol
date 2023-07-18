// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract LayerCakeTransportedToken is ERC20 {
    string public constant TOKEN_PREFIX = "LC";

    // Decimals are set to 18 by default in `ERC20`
    constructor(uint256 mintingCap, string memory originName, string memory originSymbol)
        ERC20(string.concat(TOKEN_PREFIX, originName), string.concat(TOKEN_PREFIX, originSymbol))
    {
        require(mintingCap > 0, "C1");
        _mint(msg.sender, mintingCap);
    }
}
