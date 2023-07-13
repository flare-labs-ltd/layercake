use self::bandwidth_provider;
use self::models::*;
use self::schema::latestblocknumber::dsl::*;
use ::layer_cake::*;
use ::layer_cake_bandwidth_manager::*;
use chrono::prelude::*;
use diesel::prelude::*;
use dotenvy::dotenv;
use ethers::{
    core::types::{Address, Filter},
    prelude::*,
    types::Bytes,
};
use layercake_rs::*;
use std::env::args;
use std::sync::Arc;
use std::{env, thread, time, time::SystemTime};

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    dotenv().ok();
    let network_name_error: String =
        String::from("indexer.rs requires a network specified as one of: [ORIGIN, DESTINATION]");
    let network: String = args()
        .nth(1)
        .expect(&network_name_error)
        .parse::<String>()
        .expect(&network_name_error);
    let mut is_origin: bool = true;
    if network == "DESTINATION" {
        is_origin = false;
    } else if network != "ORIGIN" {
        panic!("{}", &network_name_error);
    }

    let indexer_test_bandwidth_provider: bool = env::var("INDEXER_TEST_BANDWIDTH_PROVIDER")
        .expect(&format!("INDEXER_TEST_BANDWIDTH_PROVIDER is not set."))
        == "true";
    let rpc_url: String = env::var(&format!("{}_RPC_URL", &network))
        .expect(&format!("{}_RPC_URL is not set.", &network));
    let rpc_filter_depth: U64 = U64::from(
        (env::var(&format!("{}_RPC_FILTER_DEPTH", &network))
            .expect(&format!("{}_RPC_FILTER_DEPTH is not set.", &network)))
        .parse::<i64>()
        .unwrap(),
    );
    let rpc_sample_interval: String = env::var(&format!("{}_RPC_SAMPLE_INTERVAL", &network))
        .expect(&format!("{}_RPC_SAMPLE_INTERVAL is not set.", &network));
    let delay: time::Duration = time::Duration::from_secs(rpc_sample_interval.parse().unwrap());
    let rpc_provider: Provider<Http> = Provider::<Http>::try_from(rpc_url)?;
    let explorer_tx_endpoint: String = env::var(&format!("{}_EXPLORER_TX_ENDPOINT", &network))
        .expect(&format!("{}_RPC_SAMPLE_INTERVAL is not set.", &network));

    let lc_address_raw: String = env::var(&format!("{}_LAYERCAKE_ADDRESS", &network))
        .expect(&format!("{}_LAYERCAKE_ADDRESS is not set.", &network));

    let lc_address: Address = lc_address_raw.parse()?;
    let lc_contract: layer_cake::LayerCake<&Provider<Http>> =
        layer_cake::LayerCake::new(lc_address, Arc::new(&rpc_provider));
    let lcbm_address: Address;
    if let Ok(result) = &lc_contract.bandwidth_manager().call().await {
        lcbm_address = *result;
        println!("bandwidthManager is {lcbm_address:?}");
    } else {
        panic!("bandwidthManager not found.")
    }
    let lcbm_contract: layer_cake_bandwidth_manager::LayerCakeBandwidthManager<&Provider<Http>> =
        layer_cake_bandwidth_manager::LayerCakeBandwidthManager::new(
            lcbm_address,
            Arc::new(&rpc_provider),
        );
    let mut initialized: bool = false;
    loop {
        match filter_bandwidth_provider_events(
            &indexer_test_bandwidth_provider,
            &rpc_provider,
            &is_origin,
            &rpc_filter_depth,
            &explorer_tx_endpoint,
            &lc_address,
            &lcbm_contract,
        )
        .await
        {
            Ok(()) => {}
            Err(err) => {
                println!("error filtering bandwidth provider events: {}", err);
            }
        }
        if !initialized {
            initialized = true;
            continue;
        }
        thread::sleep(delay);
    }
}

async fn filter_bandwidth_provider_events(
    indexer_test_bandwidth_provider: &bool,
    rpc_provider: &Provider<Http>,
    is_origin: &bool,
    rpc_filter_depth: &U64,
    explorer_tx_endpoint: &str,
    lc_address: &Address,
    lcbm_contract: &LayerCakeBandwidthManager<&Provider<Http>>,
) -> Result<(), Box<dyn std::error::Error>> {
    let block_number_max: U64 = rpc_provider.get_block_number().await?;
    let connection: &mut PgConnection = &mut establish_connection();
    let stored_latestblocknumber = latestblocknumber
        .filter(origin.eq(is_origin))
        .select(LatestBlockNumber::as_select())
        .load(connection)
        .expect("Error loading latest blocknumbers");
    if stored_latestblocknumber.len() == 0 {
        create_latestblocknumber_table();
        return Ok(());
    }
    let block_number_min: U64 = U64::from(
        stored_latestblocknumber[0]
            .blocknumber
            .parse::<i64>()
            .unwrap(),
    );
    let mut curr_filter_begin: U64 = U64::from(block_number_min + 1);
    if curr_filter_begin > block_number_max {
        println!("Awaiting new blocks...");
        return Ok(());
    }
    let mut curr_filter_end: U64 = U64::from(curr_filter_begin + rpc_filter_depth);
    if curr_filter_end > block_number_max {
        curr_filter_end = block_number_max;
    }
    loop {
        println! {
            "filtering origin={is_origin} events from blocks: {curr_filter_begin} to {curr_filter_end}"
        }
        let layercake_filter: Filter = Filter::new()
            .address(*lc_address)
            .from_block(curr_filter_begin)
            .to_block(curr_filter_end);
        let start = SystemTime::now();
        let filtered_logs = rpc_provider.get_logs(&layercake_filter).await?;
        let end = SystemTime::now();
        let duration = end.duration_since(start).unwrap();
        println! {"filter response time: {:?}", duration};
        if filtered_logs.iter().len() > 0 {
            println!("{} bandwidth changes found", filtered_logs.iter().len());
        }
        for log in filtered_logs.iter() {
            let raw_log: abi::RawLog = ethers::core::abi::RawLog::from(log.clone());
            match layer_cake::LayerCakeEvents::decode_log(&raw_log) {
                Ok(event) => match event {
                    LayerCakeEvents::BandwidthChangedFilter(result) => {
                        let bandwidth_provider: H160 = result.bandwidth_provider;
                        let bandwidth_provider_string: String =
                            result.bandwidth_provider.to_string();
                        let added: bool = result.added;
                        let amount: U256 = result.amount;
                        println!(
                                "\x1b[32mBandwidthChanged: {bandwidth_provider_string}, {added}, {amount}\x1b[0m"
                            );
                        set_bp_info(lcbm_contract, connection, is_origin, &bandwidth_provider)
                            .await;
                    }
                    LayerCakeEvents::OperationsExecutedFilter(result) => {
                        let tx_hash: String = format!("{:#x}", log.transaction_hash.unwrap());
                        let explorer_link: String = format!("{}{}", explorer_tx_endpoint, tx_hash);
                        let tx_time: String = Utc
                            .timestamp_opt(
                                rpc_provider
                                    .get_block(log.block_number.unwrap())
                                    .await?
                                    .unwrap()
                                    .timestamp
                                    .try_into()
                                    .unwrap(),
                                0,
                            )
                            .unwrap()
                            .format("%Y-%m-%d %H:%M:%S")
                            .to_string();
                        let execution_id: &Bytes = &Bytes::from(result.execution_id.to_vec());
                        let bandwidth_provider: H160 = result.bandwidth_provider;
                        let execution_proof: ExecutionProof = result.execution_proof;
                        let partial_amount: U256 = execution_proof.partial_amount;
                        let execution_prepared: bool = result.execution_prepared;
                        let bandwidth_provider_string: String = bandwidth_provider.to_string();
                        let execution_id_string: String = execution_id.to_string();
                        println!(
                                "\x1b[32mOperationsExecuted: {bandwidth_provider_string}, {execution_id_string}, {execution_prepared}, {partial_amount}\x1b[0m"
                            );
                        write_execute_standard_operations(
                            connection,
                            &tx_hash,
                            &explorer_link,
                            &tx_time,
                            &is_origin,
                            &bandwidth_provider_string,
                            &execution_prepared,
                            &execution_proof,
                        )
                        .await;
                        set_bp_info(lcbm_contract, connection, is_origin, &bandwidth_provider)
                            .await;
                    }
                    LayerCakeEvents::OperationsStoredFilter(result) => {
                        let tx_hash: String = format!("{:#x}", log.transaction_hash.unwrap());
                        let explorer_link: String = format!("{}{}", explorer_tx_endpoint, tx_hash);
                        let tx_time: String = Local
                            .timestamp_opt(result.operations.execution_time.try_into().unwrap(), 0)
                            .unwrap()
                            .format("%Y-%m-%d %H:%M:%S")
                            .to_string();
                        let execution_id: &Bytes = &Bytes::from(result.execution_id.to_vec());
                        let operations: Operations = result.operations;
                        let execution_id_string: String = execution_id.to_string();
                        let amount: U256 = operations.amount;
                        println!(
                            "\x1b[32mOperationsStored: {execution_id_string}, {amount}\x1b[0m"
                        );
                        write_store_standard_operations(
                            connection,
                            &tx_hash,
                            &explorer_link,
                            &tx_time,
                            &is_origin,
                            &operations,
                        )
                        .await;
                        if *indexer_test_bandwidth_provider {
                            bandwidth_provider::execute_operations(
                                is_origin,
                                execution_id,
                                operations,
                            )
                            .await?;
                        }
                    }
                },
                Err(err) => {
                    println!("error decoding layercake log: {}", err);
                }
            }
        }
        curr_filter_begin = curr_filter_end + 1;
        curr_filter_end = curr_filter_end + rpc_filter_depth;
        if curr_filter_end > block_number_max {
            curr_filter_end = block_number_max;
        }
        if curr_filter_begin > curr_filter_end || curr_filter_begin > block_number_max {
            break;
        }
    }
    diesel::update(latestblocknumber.find(&is_origin))
        .set(blocknumber.eq(block_number_max.to_string()))
        .returning(LatestBlockNumber::as_returning())
        .get_result(connection)
        .unwrap();
    Ok(())
}

async fn set_bp_info(
    lcbm_contract: &LayerCakeBandwidthManager<&Provider<Http>>,
    connection: &mut PgConnection,
    is_origin: &bool,
    bandwidth_provider: &Address,
) {
    // Get BP Info
    match &lcbm_contract.bp_info(*bandwidth_provider).call().await {
        Ok(bandwidth_provider_info) => {
            println!("\tnegated: {}", &bandwidth_provider_info.0);
            println!("\tstartTime: {}", &bandwidth_provider_info.1);
            println!("\ttimeLastActive: {}", &bandwidth_provider_info.2);
            println!("\ttimeLastNegated: {}", &bandwidth_provider_info.3);
            println!("\tnegationCounter: {}", &bandwidth_provider_info.4);
            println!(
                "\tprevInvalidExecutionProofId: {:?}",
                &bandwidth_provider_info.5
            );
            println!("\tcurrentTotalBandwidth: {}", &bandwidth_provider_info.6);
            println!("\tcurrentUsedBandwidth: {}", &bandwidth_provider_info.7);
            let mut prefixed_bandwidth_provider: String = bandwidth_provider.to_string();
            if *is_origin {
                prefixed_bandwidth_provider = format!("o_{}", prefixed_bandwidth_provider);
            } else {
                prefixed_bandwidth_provider = format!("d_{}", prefixed_bandwidth_provider);
            }
            match update_bp(
                connection,
                &prefixed_bandwidth_provider,
                &is_origin,
                &bandwidth_provider_info.0,
                &bandwidth_provider_info.1.to_string(),
                &bandwidth_provider_info.2.to_string(),
                &bandwidth_provider_info.3.to_string(),
                &bandwidth_provider_info.4.to_string(),
                &Bytes::from(&bandwidth_provider_info.5).to_string(),
                &bandwidth_provider_info.6.to_string(),
                &bandwidth_provider_info.7.to_string(),
            )
            .await
            {
                Ok(()) => {}
                Err(err) => {
                    println!("error updating bandwidth provider info: {}", err);
                }
            }
        }
        Err(err) => {
            println!("BP not found: {}", err);
        }
    }
}

async fn write_execute_standard_operations(
    connection: &mut PgConnection,
    tx_hash: &str,
    explorer_link: &str,
    tx_time: &str,
    is_origin: &bool,
    bandwidth_provider: &str,
    execution_prepared: &bool,
    execution_proof: &ExecutionProof,
) {
    match new_execute_standard_operations(
        connection,
        tx_hash,
        explorer_link,
        tx_time,
        is_origin,
        bandwidth_provider,
        &execution_proof.operations.amount.to_string(),
        execution_prepared,
        &execution_proof.v.to_string(),
        &Bytes::from(execution_proof.r).to_string(),
        &Bytes::from(execution_proof.s).to_string(),
        &false,
        &execution_proof.operations.amount.to_string(),
        &execution_proof.operations.fee.to_string(),
        &execution_proof.operations.sender.to_string(),
        &execution_proof.operations.recipient.to_string(),
        &execution_proof.operations.execution_time.to_string(),
        &execution_proof.operations.call_data_gas_limit.to_string(),
        &execution_proof.operations.call_data.to_string(),
        &execution_proof.operations.cancel,
        &execution_proof
            .operations
            .cancellation_fee_refund
            .to_string(),
        &execution_proof
            .operations
            .negated_bandwidth_provider
            .to_string(),
        &execution_proof.operations.initial_negation,
        &Bytes::from(
            execution_proof
                .operations
                .invalid_execution_proof_id
                .to_vec(),
        )
        .to_string(),
    )
    .await
    {
        Ok(()) => {}
        Err(err) => {
            println!("error writing store_standard_operations: {}", err);
        }
    }
}

async fn write_store_standard_operations(
    connection: &mut PgConnection,
    tx_hash: &str,
    explorer_link: &str,
    tx_time: &str,
    is_origin: &bool,
    operations: &Operations,
) {
    match new_store_standard_operations(
        connection,
        tx_hash,
        explorer_link,
        tx_time,
        is_origin,
        &operations.amount.to_string(),
        &operations.fee.to_string(),
        &operations.sender.to_string(),
        &operations.recipient.to_string(),
        &operations.execution_time.to_string(),
        &operations.call_data_gas_limit.to_string(),
        &operations.call_data.to_string(),
        &operations.cancel,
        &operations.cancellation_fee_refund.to_string(),
        &operations.negated_bandwidth_provider.to_string(),
        &operations.initial_negation,
        &Bytes::from(operations.invalid_execution_proof_id.to_vec()).to_string(),
    )
    .await
    {
        Ok(()) => {}
        Err(err) => {
            println!("error writing store_standard_operations: {}", err);
        }
    }
}

fn create_latestblocknumber_table() {
    let connection = &mut establish_connection();
    let origin_deploy_block = env::var("ORIGIN_LAYERCAKE_DEPLOY_BLOCK")
        .expect("ORIGIN_LAYERCAKE_DEPLOY_BLOCK is not set.");
    let destination_deploy_block = env::var("DESTINATION_LAYERCAKE_DEPLOY_BLOCK")
        .expect("DESTINATION_LAYERCAKE_DEPLOY_BLOCK is not set.");

    init_latest_blocknumber(connection, &true, &origin_deploy_block);
    init_latest_blocknumber(connection, &false, &destination_deploy_block);
}
