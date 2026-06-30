# AiLang WASM Target

Official AiLang target package for WebAssembly and browser-hosted apps.

Current package release: `0.0.1-alpha.2`.

## Package

```text
packages/target-wasm
```

## Profiles

```text
profiles/spa
profiles/worker
profiles/library
```

## Status

Package discovery is enabled. The current alpha target package declares the
WASM/browser target contract and delegates to the SDK's built-in wasm32
publish/run path while browser host tooling is moved into this repository.

Supported target identifiers:

```text
wasm
wasm32
web
```

Declared artifact types:

```text
dir
spa
module
```

Declared options:

```text
wasm-profile
server
open-browser
```

## Usage

```bash
ailang package restore
ailang run . --target wasm --target-option wasm-profile=spa --out dist-wasm
ailang publish . --target wasm --target-option wasm-profile=spa --out dist-wasm
```

The SPA profile emits browser-hosted artifacts and can serve them locally for
interactive testing. Worker and library profiles are declared target-owned
profiles for follow-up implementation.
