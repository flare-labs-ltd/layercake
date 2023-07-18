# Unit Tests

First, install the Foundry development toolchain on your machine: https://book.getfoundry.sh/getting-started/installation

Clone this repo and its gitmodules by running:
```sh
git clone --recurse-submodules -j8 https://github.com/flare-labs-ltd/layercake.git
```

Then in the `layercake/` directory, build the project:
```sh
forge build
```
Run tests:
```sh
forge test --revert-strings=debug -vvv
```

Copyright (c) 2023, Flare Mainnet Holdings Ltd.
All rights reserved.