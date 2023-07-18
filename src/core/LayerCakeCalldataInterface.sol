// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity 0.8.19;

import "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";

contract LayerCakeCalldataInterface is ReentrancyGuard {
    function execute(address recipient, bytes memory callData) external nonReentrant {
        require(recipient != address(0), "E1");
        (bool success, bytes memory result) = address(recipient).call(callData);
        if (!success) {
            if (result.length < 68) revert("E2");
            assembly {
                result := add(result, 0x04)
            }
            revert(abi.decode(result, (string)));
        }
    }
}
