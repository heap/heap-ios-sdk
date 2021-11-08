#!/bin/bash

trap "exit" INT TERM ERR
trap "kill 0" EXIT

set -o errexit
set -o pipefail

if [[ "undefined$1" = "undefined" ]]
then
echo "Usage: $0 HEAP_VERSION"
exit 1
fi

HEAP_VERSION=$1

TMP_DIR=$(mktemp -d -t heap-ios-sdk)
ZIP_FILE="heap-ios-${HEAP_VERSION}.zip"
ZIP_URL="https://cdn.heapanalytics.com/ios/${ZIP_FILE}"
ZIP_PATH="${TMP_DIR}/${ZIP_FILE}"




curl -o "$ZIP_PATH" "https://cdn.heapanalytics.com/ios/${ZIP_FILE}"

echo "$TMP_DIR"

CHECKSUM=$(swift package compute-checksum "${ZIP_PATH}")

unzip -o "$ZIP_PATH" CHANGELOG.md README.md -d "../" # Here's where we fail if it's a bad version number.

sed -i '' "s#\"https://cdn.heapanalytics.com/ios/heap-ios-[^\"]*\"#\"${ZIP_URL}\"#; s#\(checksum: \"\)[^\"]*#\1${CHECKSUM}#" ../Package.swift
