# LayerCake Indexer

The following instructions are for linux machines and the recommended instance is:

- Ubuntu 22.10 x64
- 8GB of RAM
- 4 CPUs
- 160 GB storage
- 5TB transfer

From the `layercake/` directory, install the dependencies and deploy the LayerCake contracts on the Coston1 and Coston2 testnets:
```sh
bash -i script/deps/linux/base.sh
source $HOME/.bashrc
```

## Optional: Run the Example Bandwidth Provider
If you would like to run the example test bandwidth provider as part of the indexer, then set `INDEXER_TEST_BANDWIDTH_PROVIDER=true` in the `.env.deploy` file, and also set the private key variables in the `.env.secret` file to accounts that are funded on both networks. Note that this example deployment does not cover everything that should be done to secure your server and secret variables as a professional bandwidth provider - the instructions in this section should just be used for testing purposes.

## Optional: Deploy the LayerCake Contracts
After setting the private key variables in the `.env.secret` file to funded accounts on both networks, you can test deploying a new set of LayerCake contracts by running:
```sh
./script/test_deploy.sh
```

## Set the .env file
If you ran the above `test_deploy.sh` script, then this step can be skipped. Otherwise, before continuing ensure that your `.env` file is set with all of the example fields shown in the `.env.example` file.

## Run the Indexer
Run the LayerCake indexer on both the origin network and the destination network:

```sh
nohup cargo run --bin indexer ORIGIN > indexerOrigin.log 2>&1 &
```

```sh
nohup cargo run --bin indexer DESTINATION > indexerDestination.log 2>&1 &
```

## Run the LayerCake Grafana Dashboard
Install grafana by running:

```sh
bash -i script/deps/linux/grafana.sh
source $HOME/.bashrc
```

![LayerCake grafana dashboard](/assets/indexer.png)

Then, navigate in your web browser to `localhost:3000`, and use the first-time login {username: `admin`, password: `admin`}, which will then prompt you to set a new password. Next, import the LayerCake grafana dashboard:

1) Click "Add your first data source". Search for "PostgreSQL", and complete the fields:
    - Host: `localhost:5432`
    - Database: `lcdb`
    - User: `postgres`
    - Password: Your password set in the above section when installing postgres
    - TLS/SSL Mode: `disable`
2) Click "Save & test"
3) If the connection test worked in the previous step, then click the 3-dashes navigation button in the top left corner, and navigate to "Dashboards"
4) Click "New" > "Import" > "Upload dashboard JSON file", and select the grafana json file in the `layercake/src/grafana` folder of this repo. Click the PostgreSQL drop-down and select the data source that was created above.

You will now see the LayerCake grafana dashboard, which displays storeStandardOpertions time series, executeStandardOperations time series and bandwidth statistics for the origin and destination networks. The explorer links for each tx in the time series can be navigated to by clicking the top of each data point and selecting "View on explorer".

## Optional: Send Test StoreStandardOperations Transactions
With the private key variables set to funded accounts in the `.env` file, test operations can be stored once by running the following binary on the origin or destination network:

```sh
cargo run --bin store_operations ORIGIN
```

```sh
cargo run --bin store_operations DESTINATION
```

The binary can be repeatedly executed by running:

```sh
nohup watch -n 2 cargo run --bin store_operations ORIGIN > storeOperationsOrigin.log 2>&1 &
```

```sh
nohup watch -n 2 cargo run --bin store_operations DESTINATION > storeOperationsDestination.log 2>&1 &
```

The LayerCake indexer will automatically pick up the stored operations and execute them as a bandwidth provider on the opposite network.

Copyright (c) 2023, Flare Mainnet Holdings Ltd.
All rights reserved.