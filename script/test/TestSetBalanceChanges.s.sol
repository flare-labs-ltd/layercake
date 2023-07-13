// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// LayerCake contracts
import "../../src/core/LayerCakeDestinationDeploy.sol";

contract TestSetBalanceChanges is Test, Script, LayerCakeDeployTools {
    // Deployment contracts
    LayerCakeDestinationDeploy public destinationDeploy;

    // Deployment params
    uint256 public deployerPrivateKey;

    // Testing variables
    uint256 public depositAmount;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        destinationDeploy = LayerCakeDestinationDeploy(vm.envAddress("DESTINATION_DEPLOY_ADDRESS"));
        depositAmount = vm.envUint("TEST_DEPOSIT_AMOUNT") * 1 ether;

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);

        destinationDeploy.setBalanceChange(BalanceChange(true, deployerAddress, 3 * depositAmount));

        string memory path = ".env";
        vm.writeLine(
            path,
            string(
                abi.encodePacked(
                    "DESTINATION_LAYERCAKE_BALANCES_VERIFICATION_HASH=",
                    Strings.toHexString(uint256(destinationDeploy.verificationHash()), 32)
                )
            )
        );

        vm.stopBroadcast();
    }
}
