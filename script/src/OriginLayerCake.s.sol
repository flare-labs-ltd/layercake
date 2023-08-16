// SPDX-License-Identifier: BUSL-1.1
// Copyright (c) 2023, Flare Mainnet Holdings Ltd.
// All rights reserved.

pragma solidity ^0.8.13;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/Script.sol";
import "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

// LayerCake contracts
import "../../src/core/LayerCake.sol";

contract OriginLayerCake is Test, Script, LayerCakeTools {
    function run() external {
        IERC20 originToken = IERC20(vm.envAddress("ORIGIN_TOKEN_ADDRESS"));

        // ChainIds
        uint256 originChainId = vm.envUint("ORIGIN_CHAIN_ID");

        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");

        address deployerAddress = vm.addr(deployerPrivateKey);
        emit log_address(deployerAddress);

        uint256 thisChainId;
        assembly {
            thisChainId := chainid()
        }
        require(originChainId == thisChainId, "originchainId != chainid()");

        // Create deploy params struct
        ConstructorParams memory originConstructorParams = ConstructorParams(
            false,
            originChainId,
            vm.envUint("DESTINATION_CHAIN_ID"),
            vm.envUint("ASSET_ID"),
            vm.envUint("CONTRACT_ID"),
            address(originToken),
            vm.envUint("DEPOSIT_CAP") * 1 ether,
            vm.envUint("REORG_ASSUMPTION") * 1 minutes,
            vm.envUint("BANDWIDTH_DEPOSIT_DENOMINATOR"),
            vm.envUint("MIN_BANDWIDTH") * 1 ether,
            vm.envAddress("ORIGIN_FORWARDED_FEE_RECIPIENT"),
            vm.envUint("FORWARDED_FEE_DENOMINATOR")
        );

        // Create LayerCake contract
        vm.startBroadcast(deployerPrivateKey);
        LayerCake originLayercake = new LayerCake(originConstructorParams);
        vm.stopBroadcast();
        uint256 blockNumber = block.number;

        string memory path = ".env";
        vm.writeLine(
            path,
            string(abi.encodePacked("ORIGIN_LAYERCAKE_ADDRESS=\"", Strings.toHexString(address(originLayercake)), "\""))
        );
        vm.writeLine(
            path, string(abi.encodePacked("ORIGIN_LAYERCAKE_DEPLOY_BLOCK=\"", Strings.toString(blockNumber), "\""))
        );
    }
}
