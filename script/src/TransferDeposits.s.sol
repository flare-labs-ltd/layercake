// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// LayerCake contracts
import "../../src/core/LayerCakeOriginDeploy.sol";

contract TransferDeposits is Test, Script {
    // Deployment contracts
    LayerCakeOriginDeploy public originDeploy;

    // Deployment params
    uint256 public deployerPrivateKey;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        originDeploy = LayerCakeOriginDeploy(vm.envAddress("ORIGIN_DEPLOY_ADDRESS"));

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);

        originDeploy.transferDepositsToLayerCake();

        string memory path = ".env";
        vm.writeLine(
            path,
            string(
                abi.encodePacked(
                    "ORIGIN_LAYERCAKE_BALANCES_VERIFICATION_HASH=",
                    Strings.toHexString(uint256(originDeploy.verificationHash()), 32)
                )
            )
        );

        vm.stopBroadcast();
    }
}
