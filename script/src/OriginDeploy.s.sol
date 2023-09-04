// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// LayerCake contracts
import "../../src/core/LayerCakeDeployTools.sol";
import "../../src/core/LayerCakeOriginDeploy.sol";
import "../../src/core/LayerCake.sol";

contract OriginDeploy is Test, Script, LayerCakeDeployTools, LayerCakeTools {
    IERC20 public originToken;
    LayerCake public originLayercake;

    // Deployment contracts
    LayerCakeOriginDeploy public originDeploy;

    // Deployment params
    uint256 public deployerPrivateKey;

    // Deposit window
    uint256 public depositWindow;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        originLayercake = LayerCake(vm.envAddress("ORIGIN_LAYERCAKE_ADDRESS"));
        depositWindow = vm.envUint("DEPLOYMENT_DEPOSIT_WINDOW");

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);

        (,,,,,, uint256 depositCap,,,,,) = originLayercake.params();

        // Create LayerCakeOriginDeploy contract
        originDeploy = new LayerCakeOriginDeploy(
            address(originLayercake), 
            address(originLayercake.token()), 
            depositWindow,
            depositCap);

        string memory path = ".env";
        vm.writeLine(
            path, string(abi.encodePacked("ORIGIN_DEPLOY_ADDRESS=\"", Strings.toHexString(address(originDeploy)), "\""))
        );

        vm.stopBroadcast();
    }
}
