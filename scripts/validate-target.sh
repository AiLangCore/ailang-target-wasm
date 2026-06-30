#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
test -f "${ROOT_DIR}/packages/target-wasm/package.toml"
for tool in run publish doctor flash; do
  test -x "${ROOT_DIR}/packages/target-wasm/tools/${tool}"
  sh -n "${ROOT_DIR}/packages/target-wasm/tools/${tool}"
done
grep -q 'types = .*"target"' "${ROOT_DIR}/packages/target-wasm/package.toml"
echo "target-wasm validation: PASS"
