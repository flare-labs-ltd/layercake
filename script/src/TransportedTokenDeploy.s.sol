// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// LayerCake contracts
import "../../src/core/LayerCakeTransportedToken.sol";

contract TransportedTokenDeploy is Test, Script {
    LayerCakeTransportedToken public destinationToken;

    // Deployment params
    uint256 public deployerPrivateKey;

    // Constructor value
    uint256 public depositCap;

    // Token name
    string public originTokenName;
    string public originTokenSymbol;
    uint256 public originTokenDecimals;

    function run() external {
        deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        originTokenName = vm.envString("ORIGIN_TOKEN_NAME");
        originTokenSymbol = vm.envString("ORIGIN_TOKEN_SYMBOL");
        originTokenDecimals = vm.envUint("ORIGIN_TOKEN_DECIMALS");
        depositCap = vm.envUint("DEPOSIT_CAP") * 1 ether;

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        vm.startBroadcast(deployerPrivateKey);

        destinationToken = new LayerCakeTransportedToken(
                                    depositCap, 
                                    originTokenName, 
                                    originTokenSymbol,
                                    uint8(originTokenDecimals));

        string memory path = ".env";
        vm.writeLine(
            path,
            string(
                abi.encodePacked("DESTINATION_TOKEN_ADDRESS=\"", Strings.toHexString(address(destinationToken)), "\"")
            )
        );

        vm.stopBroadcast();
    }
}
