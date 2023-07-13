// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

contract TestTransfer is Test, Script {
    IERC20 public originToken;

    // Deployment params
    uint256 public deployerPrivateKey;

    // Testing variables
    address public recipient;
    uint256 public transferAmount;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");

        originToken = IERC20(vm.envAddress("ORIGIN_TOKEN_ADDRESS"));
        recipient = vm.envAddress("TEST_TRANSFER_RECIPIENT");
        transferAmount = vm.envUint("TEST_DEPOSIT_AMOUNT") * 1 ether / 10;

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);
        originToken.transfer(recipient, transferAmount);
        vm.stopBroadcast();
    }
}
