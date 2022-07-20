#!/bin/bash

trap "exit" INT TERM ERR
trap "kill 0" EXIT

set -o errexit
set -o pipefail

TMP_DIR=$(mktemp -d -t heap-ios-sdk)
cd ..
PATH_TO_HEAP="$PWD"
cd -

unzip resources/ReleaseTester.zip -d "$TMP_DIR"
cd "$TMP_DIR/ReleaseTester"

sed -i '' "s#PATH_TO_HEAP#${PATH_TO_HEAP}#" Package.swift
xcodebuild clean build -scheme ReleaseTester -destination "generic/platform=iOS Simulator" |xcpretty
xcodebuild clean build -scheme ReleaseTester -destination "generic/platform=iOS" |xcpretty