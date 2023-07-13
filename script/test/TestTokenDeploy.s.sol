// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// Testing contracts
import "../../src/test/TestWETH.sol";

contract TestTokenDeploy is Test, Script {
    TestWETH public originToken;
    uint256 public deployerPrivateKey;
    uint256 public storeOperationsPrivateKey;
    uint256 public executeOperationsPrivateKey;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        storeOperationsPrivateKey = vm.envUint("STORE_OPERATIONS_PRIVATE_KEY");
        executeOperationsPrivateKey = vm.envUint("EXECUTE_OPERATIONS_PRIVATE_KEY");

        address deployerAddress = vm.addr(deployerPrivateKey);
        address storeOperationsAddress = vm.addr(storeOperationsPrivateKey);
        address executeOperationsAddress = vm.addr(executeOperationsPrivateKey);

        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);

        // Deploy example origin-side ERC-20 contract that acts as a real asset (e.g. testWETH)
        originToken = new TestWETH();
        uint256 amount = 1000000000 ether;
        originToken.transfer(storeOperationsAddress, amount);
        originToken.transfer(executeOperationsAddress, amount);

        string memory path = ".env";
        vm.writeLine(
            path, string(abi.encodePacked("ORIGIN_TOKEN_ADDRESS=\"", Strings.toHexString(address(originToken)), "\""))
        );
        vm.writeLine(path, string(abi.encodePacked("ORIGIN_TOKEN_NAME=\"", originToken.name(), "\"")));
        vm.writeLine(path, string(abi.encodePacked("ORIGIN_TOKEN_SYMBOL=\"", originToken.symbol(), "\"")));

        vm.stopBroadcast();
    }
}
