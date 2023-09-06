use ::ierc20::*;
use ::layer_cake::*;
use dotenvy::dotenv;
use ethers::{
    core::types::{Address, TransactionRequest},
    middleware::SignerMiddleware,
    prelude::*,
};
use rand::Rng;
use std::env;
use std::env::args;
use std::sync::Arc;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    dotenv().ok();
    let private_key: String = env::var(&format!("STORE_OPERATIONS_PRIVATE_KEY"))
        .expect(&format!("STORE_OPERATIONS_PRIVATE_KEY is not set."));
    let wallet = private_key.parse::<LocalWallet>()?;

    let network_name_error: String =
        String::from("indexer.rs requires a network specified as one of: [ORIGIN, DESTINATION]");
    let network: String = args()
        .nth(1)
        .expect(&network_name_error)
        .parse::<String>()
        .expect(&network_name_error);
    let mut _is_origin: bool = true;
    if network == "DESTINATION" {
        _is_origin = false;
    } else if network != "ORIGIN" {
        panic!("{}", &network_name_error);
    }

    let rpc_url: String = env::var(&format!("{}_RPC_URL", &network))
        .expect(&format!("{}_RPC_URL is not set.", &network));
    let chain_id_raw: String = env::var(&format!("{}_CHAIN_ID", &network))
        .expect(&format!("{}_CHAIN_ID is not set.", &network));
    let chain_id: u64 = chain_id_raw
        .parse()
        .expect(&format!("{}_CHAIN_ID should be a u64 value.", &network));
    let rpc_provider: Provider<Http> = Provider::<Http>::try_from(&rpc_url)?;
    let lc_address_raw: String = env::var(&format!("{}_LAYERCAKE_ADDRESS", &network))
        .expect(&format!("{}_LAYERCAKE_ADDRESS is not set.", &network));
    let lc_address: Address = lc_address_raw.parse()?;
    let lc_contract: layer_cake::LayerCake<&Provider<Http>> =
        layer_cake::LayerCake::new(lc_address, Arc::new(&rpc_provider));
    let token_address: Address;
    if let Ok(result) = &lc_contract.token().call().await {
        token_address = *result;
        println!("token address is {token_address:?}");
    } else {
        panic!("token address not found.")
    }
    let token_contract: IERC20<&Provider<Http>> =
        ierc20::IERC20::new(token_address, Arc::new(&rpc_provider));

    let client = SignerMiddleware::new(
        Provider::<Http>::try_from(&rpc_url)?,
        wallet.with_chain_id(chain_id),
    );
    let gas: U256 = U256::from(1000000);
    let gas_price: U256 = client.get_gas_price().await?;

    // Approve IERC20 transfer
    let amount: U256 = U256::from(rand::thread_rng().gen_range(10..10 * 10));
    let data: Bytes;
    match token_contract.approve(lc_address, amount).calldata() {
        Some(result) => data = result,
        None => panic!("token_contract returned no calldata"),
    }
    let tx: TransactionRequest = TransactionRequest::new()
        .to(token_address)
        .value(0)
        .from(client.address())
        .data(data)
        .gas(gas)
        .gas_price(gas_price);
    let _receipt: Option<TransactionReceipt> = client
        .send_transaction(tx, None)
        .await? // PendingTransaction<_>
        .log_msg("Pending transaction hash")
        .await?; // Result<Option<TransactionReceipt>, _>

    // Store Operations
    let fee: U256 = U256::from(1);
    let operations: Operations = Operations {
        nonce: U256::from(1),
        amount: amount,
        fee: fee,
        sender: client.address(),
        recipient: "0x000000000000000000000000000000000000dEaD".parse::<Address>()?,
        execution_time: U256::from(0),
        negated_bandwidth_provider: Address::from([u8::from(0); 20]),
        initial_negation: false,
        invalid_execution_proof_id: [u8::from(0); 32],
    };
    let data: Bytes;
    match lc_contract.store_standard_operations(operations).calldata() {
        Some(result) => data = result,
        None => panic!("lc_contract returned no calldata"),
    }
    let tx: TransactionRequest = TransactionRequest::new()
        .to(lc_address)
        .value(0)
        .from(client.address())
        .data(data)
        .gas(gas)
        .gas_price(gas_price);
    let _receipt: Option<TransactionReceipt> = client
        .send_transaction(tx, None)
        .await? // PendingTransaction<_>
        .log_msg("Pending transaction hash")
        .await?; // Result<Option<TransactionReceipt>, _>

    Ok(())
}
