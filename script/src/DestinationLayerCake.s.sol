// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// LayerCake contracts
import "../../src/core/LayerCakeTransportedToken.sol";
import "../../src/core/LayerCake.sol";

contract DestinationLayerCake is Test, Script, LayerCakeTools {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        LayerCakeTransportedToken destinationToken =
            LayerCakeTransportedToken(vm.envAddress("DESTINATION_TOKEN_ADDRESS"));

        uint256 destinationChainId = vm.envUint("DESTINATION_CHAIN_ID");

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        uint256 thisChainId;
        assembly {
            thisChainId := chainid()
        }
        require(destinationChainId == thisChainId, "destinationChainId != chainid()");

        // Destination deploy
        ConstructorParams memory destinationConstructorParams = ConstructorParams(
            true,
            destinationChainId,
            vm.envUint("ORIGIN_CHAIN_ID"),
            vm.envUint("ASSET_ID"),
            vm.envUint("CONTRACT_ID"),
            address(destinationToken),
            vm.envString("ORIGIN_TOKEN_NAME"),
            vm.envString("ORIGIN_TOKEN_SYMBOL"),
            vm.envUint("DEPOSIT_CAP") * 1 ether,
            vm.envUint("REORG_ASSUMPTION") * 1 hours,
            vm.envUint("BANDWIDTH_DEPOSIT_DENOMINATOR"),
            vm.envUint("DEFAULT_NEGATION_COST") * 1 ether,
            vm.envAddress("DESTINATION_FORWARDED_FEE_RECIPIENT"),
            vm.envUint("FORWARDED_FEE_DENOMINATOR")
        );

        vm.startBroadcast(deployerPrivateKey);
        LayerCake destinationLayercake = new LayerCake(destinationConstructorParams);
        destinationToken.transfer(
            address(destinationLayercake), destinationConstructorParams.depositCap - vm.envUint("TOTAL_DEPOSIT_AMOUNT")
        );
        uint256 blockNumber = block.number;
        vm.stopBroadcast();

        string memory path = ".env";
        vm.writeLine(
            path,
            string(
                abi.encodePacked(
                    "DESTINATION_LAYERCAKE_ADDRESS=\"", Strings.toHexString(address(destinationLayercake)), "\""
                )
            )
        );
        vm.writeLine(
            path, string(abi.encodePacked("DESTINATION_LAYERCAKE_DEPLOY_BLOCK=\"", Strings.toString(blockNumber), "\""))
        );
    }
}
