use ::layer_cake::*;
use dotenvy::dotenv;
use ethers::{
    core::types::{Address, TransactionRequest},
    middleware::SignerMiddleware,
    prelude::*,
};
use std::env;
use std::sync::Arc;

// #[tokio::main]
pub async fn execute_operations(
    origin_store: &bool,
    execution_id: &Bytes,
    operations: Operations,
) -> Result<(), Box<dyn std::error::Error>> {
    dotenv().ok();
    let private_key: String = env::var(&format!("EXECUTE_OPERATIONS_PRIVATE_KEY"))
        .expect(&format!("EXECUTE_OPERATIONS_PRIVATE_KEY is not set."));
    let wallet = private_key.parse::<LocalWallet>()?;

    let network: String;
    if *origin_store {
        network = format!("DESTINATION");
    } else {
        network = format!("ORIGIN");
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
    let client = SignerMiddleware::new(
        Provider::<Http>::try_from(&rpc_url)?,
        wallet.with_chain_id(chain_id),
    );
    let gas: U256 = U256::from(1000000);
    let gas_price: U256 = client.get_gas_price().await?;

    let signed_execution_id: Signature = client
        .sign(execution_id.to_vec(), &client.address())
        .await?;
    let partial_amount: U256 = operations.amount;
    let v: u8 = signed_execution_id.v.try_into().unwrap();
    let r: [u8; 32] = signed_execution_id.r.into();
    let s: [u8; 32] = signed_execution_id.s.into();
    let execution_proof: ExecutionProof = ExecutionProof {
        operations,
        partial_amount,
        v,
        r,
        s,
    };

    let data: Bytes;
    match lc_contract
        .execute_standard_operations(execution_proof)
        .calldata()
    {
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
