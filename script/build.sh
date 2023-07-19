#!/bin/bash
forge build && forge test --revert-strings=debug -vvv && forge fmt
cargo build && cargo fmt
./script/slither.sh