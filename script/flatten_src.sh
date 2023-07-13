#!/bin/bash

forge flatten ./src/core/LayerCake.sol --output ./src/core/flattened/LayerCake.f.sol
forge flatten ./src/core/LayerCakeBandwidthManager.sol --output ./src/core/flattened/LayerCakeBandwidthManager.f.sol
forge flatten ./src/core/LayerCakeCalldataInterface.sol --output ./src/core/flattened/LayerCakeCalldataInterface.f.sol
forge flatten ./src/core/LayerCakeDeployTools.sol --output ./src/core/flattened/LayerCakeDeployTools.f.sol
forge flatten ./src/core/LayerCakeDestinationDeploy.sol --output ./src/core/flattened/LayerCakeDestinationDeploy.f.sol
forge flatten ./src/core/LayerCakeExecutionProof.sol --output ./src/core/flattened/LayerCakeExecutionProof.f.sol
forge flatten ./src/core/LayerCakeOriginDeploy.sol --output ./src/core/flattened/LayerCakeOriginDeploy.f.sol
forge flatten ./src/core/LayerCakeStorageManager.sol --output ./src/core/flattened/LayerCakeStorageManager.f.sol
forge flatten ./src/core/LayerCakeStorageSlot.sol --output ./src/core/flattened/LayerCakeStorageSlot.f.sol
forge flatten ./src/core/LayerCakeTools.sol --output ./src/core/flattened/LayerCakeTools.f.sol
forge flatten ./src/core/LayerCakeTransportedToken.sol --output ./src/core/flattened/LayerCakeTransportedToken.f.sol
forge flatten ./src/test/TestWETH.sol --output ./src/test/flattened/TestWETH.f.sol