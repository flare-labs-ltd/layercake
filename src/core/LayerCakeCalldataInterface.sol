// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";

contract LayerCakeCalldataInterface is ReentrancyGuard {
    function execute(address _recipient, bytes memory _callData) external nonReentrant {
        (bool success, bytes memory result) = address(_recipient).call(_callData);
        if (!success) {
            if (result.length < 68) revert("E1");
            assembly {
                result := add(result, 0x04)
            }
            revert(abi.decode(result, (string)));
        }
    }
}
