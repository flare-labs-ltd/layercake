#!/bin/bash
./script/flatten.sh
slither src/core/flattened/ --checklist --show-ignored-findings > docs/slither.md