pub mod bandwidth_provider;
pub mod models;
pub mod schema;

use diesel::pg::PgConnection;
use diesel::prelude::*;
use dotenvy::dotenv;
use std::env;

pub fn establish_connection() -> PgConnection {
    dotenv().ok();

    let database_url = env::var("DATABASE_URL").expect("DATABASE_URL must be set");
    PgConnection::establish(&database_url)
        .unwrap_or_else(|_| panic!("Error connecting to {}", database_url))
}

use self::models::{BandwidthProvider, NewBandwidthProvider};
pub async fn update_bp(
    conn: &mut PgConnection,
    addr: &str,
    origin: &bool,
    negated: &bool,
    starttime: &str,
    timelastactive: &str,
    timelastnegated: &str,
    negationcounter: &str,
    previnvalidexecutionproofid: &str,
    currenttotalbandwidth: &str,
    currentusedbandwidth: &str,
) -> Result<(), Box<dyn std::error::Error>> {
    use crate::schema::bandwidthproviders;

    match bandwidthproviders::table
        .filter(bandwidthproviders::addr.eq(&addr))
        .select(BandwidthProvider::as_select())
        .get_result(conn)
    {
        Ok(_result) => {
            diesel::update(bandwidthproviders::table)
                .filter(bandwidthproviders::addr.eq(&addr))
                .set((
                    bandwidthproviders::addr.eq(&addr),
                    bandwidthproviders::origin.eq(&origin),
                    bandwidthproviders::negated.eq(&negated),
                    bandwidthproviders::starttime.eq(&starttime),
                    bandwidthproviders::timelastactive.eq(&timelastactive),
                    bandwidthproviders::timelastnegated.eq(&timelastnegated),
                    bandwidthproviders::negationcounter.eq(&negationcounter),
                    bandwidthproviders::previnvalidexecutionproofid
                        .eq(&previnvalidexecutionproofid),
                    bandwidthproviders::currenttotalbandwidth.eq(&currenttotalbandwidth),
                    bandwidthproviders::currentusedbandwidth.eq(&currentusedbandwidth),
                ))
                .execute(conn)
                .expect("Error updating existing bp");
        }
        Err(_err) => {
            let new_bp: NewBandwidthProvider<'_> = NewBandwidthProvider {
                addr,
                origin,
                negated,
                starttime,
                timelastactive,
                timelastnegated,
                negationcounter,
                previnvalidexecutionproofid,
                currenttotalbandwidth,
                currentusedbandwidth,
            };
            diesel::insert_into(bandwidthproviders::table)
                .values(&new_bp)
                .returning(BandwidthProvider::as_returning())
                .get_result(conn)
                .expect("Error saving new bp");
        }
    }
    Ok(())
}

use self::models::{LatestBlockNumber, UpdateLatestBlockNumber};
pub fn init_latest_blocknumber(
    conn: &mut PgConnection,
    origin: &bool,
    blocknumber: &str,
) -> LatestBlockNumber {
    use crate::schema::latestblocknumber;

    let latest_blocknumber = UpdateLatestBlockNumber {
        origin,
        blocknumber,
    };

    diesel::insert_into(latestblocknumber::table)
        .values(&latest_blocknumber)
        .returning(LatestBlockNumber::as_returning())
        .get_result(conn)
        .expect("Error saving latest blocknumber")
}

use self::models::{ExecuteStandardOperations, NewExecuteStandardOperations};
pub async fn new_execute_standard_operations(
    conn: &mut PgConnection,
    txhash: &str,
    explorerlink: &str,
    txtime: &str,
    origin: &bool,
    bandwidthprovider: &str,
    partialamount: &str,
    prepared: &bool,
    v: &str,
    r: &str,
    s: &str,
    verified: &bool,
    amount: &str,
    fee: &str,
    sender: &str,
    recipient: &str,
    executiontime: &str,
    calldatagaslimit: &str,
    bytes: &str,
    cancel: &bool,
    cancellationfeerefund: &str,
    negatedbandwidthprovider: &str,
    initialnegation: &bool,
    invalidexecutionproofid: &str,
) -> Result<(), Box<dyn std::error::Error>> {
    use crate::schema::executestandardoperations;
    match executestandardoperations::table
        .filter(executestandardoperations::txhash.eq(&txhash))
        .select(ExecuteStandardOperations::as_select())
        .get_result(conn)
    {
        Ok(_result) => {
            println!("This tx has already been stored: {}", txhash);
        }
        Err(_err) => {
            let new_execute_standard_operations: NewExecuteStandardOperations<'_> =
                NewExecuteStandardOperations {
                    txhash,
                    explorerlink,
                    txtime,
                    origin,
                    bandwidthprovider,
                    partialamount,
                    prepared,
                    v,
                    r,
                    s,
                    verified,
                    amount,
                    fee,
                    sender,
                    recipient,
                    executiontime,
                    calldatagaslimit,
                    bytes,
                    cancel,
                    cancellationfeerefund,
                    negatedbandwidthprovider,
                    initialnegation,
                    invalidexecutionproofid,
                };
            diesel::insert_into(executestandardoperations::table)
                .values(&new_execute_standard_operations)
                .returning(ExecuteStandardOperations::as_returning())
                .get_result(conn)
                .expect("Error saving new executeStandardOperations");
        }
    }
    Ok(())
}

use self::models::{NewStoreStandardOperations, StoreStandardOperations};
pub async fn new_store_standard_operations(
    conn: &mut PgConnection,
    txhash: &str,
    explorerlink: &str,
    txtime: &str,
    origin: &bool,
    amount: &str,
    fee: &str,
    sender: &str,
    recipient: &str,
    executiontime: &str,
    calldatagaslimit: &str,
    bytes: &str,
    cancel: &bool,
    cancellationfeerefund: &str,
    negatedbandwidthprovider: &str,
    initialnegation: &bool,
    invalidexecutionproofid: &str,
) -> Result<(), Box<dyn std::error::Error>> {
    use crate::schema::storestandardoperations;
    match storestandardoperations::table
        .filter(storestandardoperations::txhash.eq(&txhash))
        .select(StoreStandardOperations::as_select())
        .get_result(conn)
    {
        Ok(_result) => {
            println!("This tx has already been stored: {}", txhash);
        }
        Err(_err) => {
            let new_store_standard_operations: NewStoreStandardOperations<'_> =
                NewStoreStandardOperations {
                    txhash,
                    explorerlink,
                    txtime,
                    origin,
                    amount,
                    fee,
                    sender,
                    recipient,
                    executiontime,
                    calldatagaslimit,
                    bytes,
                    cancel,
                    cancellationfeerefund,
                    negatedbandwidthprovider,
                    initialnegation,
                    invalidexecutionproofid,
                };
            diesel::insert_into(storestandardoperations::table)
                .values(&new_store_standard_operations)
                .returning(StoreStandardOperations::as_returning())
                .get_result(conn)
                .expect("Error saving new storeStandardOperations");
        }
    }
    Ok(())
}
