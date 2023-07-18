// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract LayerCakeTransportedToken is ERC20 {
    string public tokenPrefix = "LC";

    // Decimals are set to 18 by default in `ERC20`
    constructor(uint256 _mintingCap, string memory _originName, string memory _originSymbol)
        ERC20(string.concat(tokenPrefix, _originName), string.concat(tokenPrefix, _originSymbol))
    {
        require(_mintingCap > 0, "C1");
        _mint(msg.sender, _mintingCap);
    }
}
