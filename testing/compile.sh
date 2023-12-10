#!/bin/bash
NODE=${NODE:=$(which node)}
TEST=$1
shift

../.lake/build/bin/c0deine $TEST > $TEST.wat &&
wat2wasm --output=$TEST.wasm $TEST.wat
