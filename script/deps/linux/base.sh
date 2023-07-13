#!/bin/bash

sudo apt-get update -y
sudo apt-get install gcc -y
# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
# Install Postgresql
sudo apt-get install postgresql -y 
sudo apt-get install libpq-dev -y
# Install Foundry
curl -L https://foundry.paradigm.xyz | bash
source "$HOME/.bashrc"
foundryup
# Install Diesel for Postgresql
cargo install diesel_cli --no-default-features --features postgres
# Create database
sudo -Hiu postgres psql postgres -c "\password postgres"
sudo -Hiu postgres createdb lcdb --owner="postgres"

printf "\n"
read -sp 'Re-enter same password for .env.secret file: ' password
echo DATABASE_URL=postgres://postgres:$password@localhost/lcdb > .env.secret

echo DEPLOYER_PRIVATE_KEY= >> .env.secret
echo STORE_OPERATIONS_PRIVATE_KEY= >> .env.secret
echo EXECUTE_OPERATIONS_PRIVATE_KEY= >> .env.secret

printf "\n"
read -p 'Enter ORIGIN_RPC_URL: ' orpc
echo ORIGIN_RPC_URL=$orpc >> .env.secret

printf "\n"
read -p 'Enter DESTINATION_RPC_URL: ' drpc
echo DESTINATION_RPC_URL=$drpc >> .env.secret
printf "\n"

cp .env.secret .env
cat .env.deploy >> .env
source .env
diesel setup
forge build
forge test --revert-strings=debug -vvv
cargo build