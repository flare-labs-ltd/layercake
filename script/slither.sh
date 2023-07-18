#!/bin/bash
./script/flatten_src.sh
slither src/core/flattened/ --checklist --show-ignored-findings > slither.md