#!/bin/sh
set -eu

# Exports for binaries access
export PATH="./node_modules/.bin:$PATH"

setup() {
  # install nodejs dependencies
  npm ci --no-audit
}

# shellcheck disable=SC3045
export -f setup

hyperfine --warmup 3 --runs 10 'ls-lint' './node_modules/ls-lint-go-npm/ls-lint' --setup 'setup' --export-markdown "result.md"
