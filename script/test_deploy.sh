#!/bin/bash

cp .env.secret .env
cat .env.deploy >> .env
source .env

cargo run --bin delete_db

# Deploy testing ERC20 token to use as the origin-side token
forge script script/test/TestTokenDeploy.s.sol:TestTokenDeploy --rpc-url $ORIGIN_RPC_URL --broadcast -vvv

# Deploy LayerCake on the origin-side
forge script script/src/OriginLayerCake.s.sol:OriginLayerCake --gas-estimate-multiplier 110 --rpc-url $ORIGIN_RPC_URL --broadcast -vvv

# Deploy LayerCakeOriginDeploy on the origin-side
forge script script/src/OriginDeploy.s.sol:OriginDeploy --rpc-url $ORIGIN_RPC_URL --broadcast -vvv

# Make a test deposit to LayerCakeOriginDeploy
forge script script/test/TestDeposit.s.sol:TestDeposit --rpc-url $ORIGIN_RPC_URL --broadcast -vvv

# End the deposit period and transfer the deposit to the origin-side LayerCake contract
forge script script/src/TransferDeposits.s.sol:TransferDeposits --rpc-url $ORIGIN_RPC_URL --broadcast -vvv

# Deploy LayerCakeTransportedToken on the destination-side
forge script script/src/TransportedTokenDeploy.s.sol:TransportedTokenDeploy --rpc-url $DESTINATION_RPC_URL --broadcast -vvv

# Deploy LayerCake on the destination-side
forge script script/src/DestinationLayerCake.s.sol:DestinationLayerCake --gas-estimate-multiplier 110 --rpc-url $DESTINATION_RPC_URL --broadcast -vvv

# Deploy LayerCakeDestinationDeploy on the destination-side
forge script script/src/DestinationDeploy.s.sol:DestinationDeploy --rpc-url $DESTINATION_RPC_URL --broadcast -vvv

# Set balanceChanges on LayerCakeDestinationDeploy
forge script script/test/TestSetBalanceChanges.s.sol:TestSetBalanceChanges --rpc-url $DESTINATION_RPC_URL --broadcast -vvv

# Withdraw deposit from LayerCakeDestinationDeploy
forge script script/test/TestWithdraw.s.sol:TestWithdraw --rpc-url $DESTINATION_RPC_URL --broadcast -vvv

# Add bandwidth to origin and destination LayerCake contracts
forge script script/test/TestOriginAddBandwidth.s.sol:TestOriginAddBandwidth --rpc-url $ORIGIN_RPC_URL --broadcast -vvv
forge script script/test/TestDestinationAddBandwidth.s.sol:TestDestinationAddBandwidth --rpc-url $DESTINATION_RPC_URL --broadcast -vvv
