CREATE TABLE bandwidthproviders (
  addr VARCHAR PRIMARY KEY,
  origin BOOLEAN NOT NULL,
  negated BOOLEAN NOT NULL DEFAULT FALSE,
  starttime VARCHAR NOT NULL,
  timelastactive VARCHAR NOT NULL,
  timelastnegated VARCHAR NOT NULL,
  negationcounter VARCHAR NOT NULL,
  previnvalidexecutionproofid VARCHAR NOT NULL,
  currenttotalbandwidth VARCHAR NOT NULL,
  currentusedbandwidth VARCHAR NOT NULL
);
CREATE TABLE latestblocknumber (
  origin BOOLEAN PRIMARY KEY,
  blocknumber VARCHAR NOT NULL
);
CREATE TABLE storestandardoperations (
  txhash VARCHAR PRIMARY KEY,
  explorerlink VARCHAR NOT NULL,
  txtime VARCHAR NOT NULL,
  origin BOOLEAN NOT NULL,
  amount VARCHAR NOT NULL,
  fee VARCHAR NOT NULL,
  sender VARCHAR NOT NULL,
  recipient VARCHAR NOT NULL,
  executiontime VARCHAR NOT NULL,
  negatedbandwidthprovider VARCHAR NOT NULL,
  initialnegation BOOLEAN NOT NULL,
  invalidexecutionproofid VARCHAR NOT NULL
);
CREATE TABLE executestandardoperations (
  txhash VARCHAR PRIMARY KEY,
  explorerlink VARCHAR NOT NULL,
  txtime VARCHAR NOT NULL,
  origin BOOLEAN NOT NULL,
  bandwidthprovider VARCHAR NOT NULL,
  partialamount VARCHAR NOT NULL,
  prepared BOOLEAN NOT NULL,
  v VARCHAR NOT NULL,
  r VARCHAR NOT NULL,
  s VARCHAR NOT NULL,
  verified BOOLEAN NOT NULL,
  amount VARCHAR NOT NULL,
  fee VARCHAR NOT NULL,
  sender VARCHAR NOT NULL,
  recipient VARCHAR NOT NULL,
  executiontime VARCHAR NOT NULL,
  negatedbandwidthprovider VARCHAR NOT NULL,
  initialnegation BOOLEAN NOT NULL,
  invalidexecutionproofid VARCHAR NOT NULL
);