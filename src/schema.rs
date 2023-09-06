// @generated automatically by Diesel CLI.

diesel::table! {
    bandwidthproviders (addr) {
        addr -> Varchar,
        origin -> Bool,
        negated -> Bool,
        starttime -> Varchar,
        timelastactive -> Varchar,
        timelastnegated -> Varchar,
        negationcounter -> Varchar,
        previnvalidexecutionproofid -> Varchar,
        currenttotalbandwidth -> Varchar,
        currentusedbandwidth -> Varchar,
    }
}

diesel::table! {
    executestandardoperations (txhash) {
        txhash -> Varchar,
        explorerlink -> Varchar,
        txtime -> Varchar,
        origin -> Bool,
        bandwidthprovider -> Varchar,
        partialamount -> Varchar,
        prepared -> Bool,
        v -> Varchar,
        r -> Varchar,
        s -> Varchar,
        verified -> Bool,
        amount -> Varchar,
        fee -> Varchar,
        sender -> Varchar,
        recipient -> Varchar,
        executiontime -> Varchar,
        negatedbandwidthprovider -> Varchar,
        initialnegation -> Bool,
        invalidexecutionproofid -> Varchar,
    }
}

diesel::table! {
    latestblocknumber (origin) {
        origin -> Bool,
        blocknumber -> Varchar,
    }
}

diesel::table! {
    storestandardoperations (txhash) {
        txhash -> Varchar,
        explorerlink -> Varchar,
        txtime -> Varchar,
        origin -> Bool,
        amount -> Varchar,
        fee -> Varchar,
        sender -> Varchar,
        recipient -> Varchar,
        executiontime -> Varchar,
        negatedbandwidthprovider -> Varchar,
        initialnegation -> Bool,
        invalidexecutionproofid -> Varchar,
    }
}

diesel::allow_tables_to_appear_in_same_query!(
    bandwidthproviders,
    executestandardoperations,
    latestblocknumber,
    storestandardoperations,
);
