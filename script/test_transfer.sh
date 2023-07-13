#!/bin/bash

source .env

# Transfer origin-side ERC20 tokens to TEST_TRANSFER_RECIPIENT
forge script script/test/TestTransfer.s.sol:TestTransfer --rpc-url $ORIGIN_RPC_URL --broadcast -vvv
