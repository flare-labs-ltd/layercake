// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";

// LayerCake contracts
import "../../src/core/LayerCake.sol";

contract TestDestinationAddBandwidth is Test, Script {
    // LayerCake contract
    LayerCake public layercake;

    // Deployment params
    uint256 public executeOperationsPrivateKey;

    // Testing variables
    uint256 public depositAmount;

    function run() external {
        executeOperationsPrivateKey = vm.envUint("EXECUTE_OPERATIONS_PRIVATE_KEY");
        layercake = LayerCake(vm.envAddress("DESTINATION_LAYERCAKE_ADDRESS"));
        depositAmount = vm.envUint("TEST_DEPOSIT_AMOUNT") * 1 ether;

        vm.startBroadcast(executeOperationsPrivateKey);
        uint256 bandwidthAmount = depositAmount / 2;
        (,,,,,,,,,, uint256 bandwidthDepositDenominator,) = layercake.params();
        uint256 approvalAmount = bandwidthAmount + bandwidthAmount / bandwidthDepositDenominator;
        layercake.token().approve(address(layercake), approvalAmount);
        layercake.addBandwidth(bandwidthAmount);
        vm.stopBroadcast();
    }
}
