#!/usr/bin/env bash

set -e

./scripts/test.sh ./sidebarleft
./scripts/test.sh ./resume

echo 'all tests passed'
exit 0
