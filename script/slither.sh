#!/bin/bash
./script/flatten.sh
slither src/core/flattened/ --checklist --show-ignored-findings > slither.md