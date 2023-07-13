// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";

// LayerCake contracts
import "../../src/core/LayerCake.sol";
import "../../src/core/LayerCakeDestinationDeploy.sol";

contract TestWithdraw is Test, Script {
    // LayerCake contract
    LayerCake public layercake;

    // Deployment contract
    LayerCakeDestinationDeploy public destinationDeploy;

    // Deployment params
    uint256 public deployerPrivateKey;
    uint256 public storeOperationsPrivateKey;
    uint256 public executeOperationsPrivateKey;

    // Testing variables
    uint256 public depositAmount;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        storeOperationsPrivateKey = vm.envUint("STORE_OPERATIONS_PRIVATE_KEY");
        executeOperationsPrivateKey = vm.envUint("EXECUTE_OPERATIONS_PRIVATE_KEY");
        destinationDeploy = LayerCakeDestinationDeploy(vm.envAddress("DESTINATION_DEPLOY_ADDRESS"));
        layercake = LayerCake(vm.envAddress("DESTINATION_LAYERCAKE_ADDRESS"));
        depositAmount = vm.envUint("TEST_DEPOSIT_AMOUNT") * 1 ether;

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);
        destinationDeploy.withdraw();
        layercake.token().transfer(vm.addr(storeOperationsPrivateKey), depositAmount);
        layercake.token().transfer(vm.addr(executeOperationsPrivateKey), depositAmount);
        vm.stopBroadcast();

        // vm.startBroadcast(storeOperationsPrivateKey);
        // destinationDeploy.withdraw();
        // vm.stopBroadcast();

        // vm.startBroadcast(executeOperationsPrivateKey);
        // destinationDeploy.withdraw();
        // uint256 bandwidthAmount = depositAmount/2;
        // uint256 approvalAmount = bandwidthAmount + bandwidthAmount/10;
        // layercake.token().approve(address(layercake), approvalAmount);
        // layercake.addBandwidth(depositAmount);
        // vm.stopBroadcast();
    }
}
