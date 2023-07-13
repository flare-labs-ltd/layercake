// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// LayerCake contracts
import "../../src/core/LayerCakeOriginDeploy.sol";
import "../../src/core/LayerCake.sol";

contract TestDeposit is Test, Script, LayerCakeDeployTools, LayerCakeTools {
    IERC20 public originToken;

    // Deployment contracts
    LayerCakeOriginDeploy public originDeploy;

    // Deployment params
    uint256 public deployerPrivateKey;

    // Testing variables
    uint256 public depositAmount;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");

        originToken = IERC20(vm.envAddress("ORIGIN_TOKEN_ADDRESS"));
        originDeploy = LayerCakeOriginDeploy(vm.envAddress("ORIGIN_DEPLOY_ADDRESS"));
        depositAmount = vm.envUint("TEST_DEPOSIT_AMOUNT") * 1 ether;

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);
        originToken.approve(address(originDeploy), 3 * depositAmount);
        originDeploy.deposit(3 * depositAmount);
        vm.stopBroadcast();

        string memory path = ".env";
        vm.writeLine(
            path, string(abi.encodePacked("TOTAL_DEPOSIT_AMOUNT=\"", Strings.toString(3 * depositAmount), "\""))
        );
    }
}
