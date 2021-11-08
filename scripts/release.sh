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

REQUIRED_BRANCH="master"
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [[ "$CURRENT_BRANCH" != "$REQUIRED_BRANCH" ]]
then
echo "You must run this script from the $REQUIRED_BRANCH branch.  You are currently on $CURRENT_BRANCH."
# exit 1
fi

if [[ `git status --porcelain` ]]; then
echo "You cannot run this script with uncommitted changes."

fi