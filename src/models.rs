use crate::schema::bandwidthproviders;
use crate::schema::executestandardoperations;
use crate::schema::latestblocknumber;
use crate::schema::storestandardoperations;
use diesel::prelude::*;

#[derive(Queryable, Selectable)]
#[diesel(table_name = bandwidthproviders)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct BandwidthProvider {
    pub addr: String,
    pub origin: bool,
    pub negated: bool,
    pub starttime: String,
    pub timelastactive: String,
    pub timelastnegated: String,
    pub negationcounter: String,
    pub previnvalidexecutionproofid: String,
    pub currenttotalbandwidth: String,
    pub currentusedbandwidth: String,
}

#[derive(Insertable)]
#[diesel(table_name = bandwidthproviders)]
pub struct NewBandwidthProvider<'a> {
    pub addr: &'a str,
    pub origin: &'a bool,
    pub negated: &'a bool,
    pub starttime: &'a str,
    pub timelastactive: &'a str,
    pub timelastnegated: &'a str,
    pub negationcounter: &'a str,
    pub previnvalidexecutionproofid: &'a str,
    pub currenttotalbandwidth: &'a str,
    pub currentusedbandwidth: &'a str,
}

#[derive(Queryable, Selectable)]
#[diesel(table_name = latestblocknumber)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct LatestBlockNumber {
    pub origin: bool,
    pub blocknumber: String,
}

#[derive(Insertable)]
#[diesel(table_name = latestblocknumber)]
pub struct UpdateLatestBlockNumber<'a> {
    pub origin: &'a bool,
    pub blocknumber: &'a str,
}

#[derive(Queryable, Selectable)]
#[diesel(table_name = storestandardoperations)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct StoreStandardOperations {
    pub txhash: String,
    pub explorerlink: String,
    pub txtime: String,
    pub origin: bool,
    pub amount: String,
    pub fee: String,
    pub sender: String,
    pub recipient: String,
    pub executiontime: String,
    pub calldatagaslimit: String,
    pub bytes: String,
    pub cancel: bool,
    pub cancellationfeerefund: String,
    pub negatedbandwidthprovider: String,
    pub initialnegation: bool,
    pub invalidexecutionproofid: String,
}

#[derive(Insertable)]
#[diesel(table_name = storestandardoperations)]
pub struct NewStoreStandardOperations<'a> {
    pub txhash: &'a str,
    pub explorerlink: &'a str,
    pub txtime: &'a str,
    pub origin: &'a bool,
    pub amount: &'a str,
    pub fee: &'a str,
    pub sender: &'a str,
    pub recipient: &'a str,
    pub executiontime: &'a str,
    pub calldatagaslimit: &'a str,
    pub bytes: &'a str,
    pub cancel: &'a bool,
    pub cancellationfeerefund: &'a str,
    pub negatedbandwidthprovider: &'a str,
    pub initialnegation: &'a bool,
    pub invalidexecutionproofid: &'a str,
}

#[derive(Queryable, Selectable)]
#[diesel(table_name = executestandardoperations)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct ExecuteStandardOperations {
    pub txhash: String,
    pub explorerlink: String,
    pub txtime: String,
    pub origin: bool,
    pub bandwidthprovider: String,
    pub partialamount: String,
    pub prepared: bool,
    pub v: String,
    pub r: String,
    pub s: String,
    pub verified: bool,
    pub amount: String,
    pub fee: String,
    pub sender: String,
    pub recipient: String,
    pub executiontime: String,
    pub calldatagaslimit: String,
    pub bytes: String,
    pub cancel: bool,
    pub cancellationfeerefund: String,
    pub negatedbandwidthprovider: String,
    pub initialnegation: bool,
    pub invalidexecutionproofid: String,
}

#[derive(Insertable)]
#[diesel(table_name = executestandardoperations)]
pub struct NewExecuteStandardOperations<'a> {
    pub txhash: &'a str,
    pub explorerlink: &'a str,
    pub txtime: &'a str,
    pub origin: &'a bool,
    pub bandwidthprovider: &'a str,
    pub partialamount: &'a str,
    pub prepared: &'a bool,
    pub v: &'a str,
    pub r: &'a str,
    pub s: &'a str,
    pub verified: &'a bool,
    pub amount: &'a str,
    pub fee: &'a str,
    pub sender: &'a str,
    pub recipient: &'a str,
    pub executiontime: &'a str,
    pub calldatagaslimit: &'a str,
    pub bytes: &'a str,
    pub cancel: &'a bool,
    pub cancellationfeerefund: &'a str,
    pub negatedbandwidthprovider: &'a str,
    pub initialnegation: &'a bool,
    pub invalidexecutionproofid: &'a str,
}
