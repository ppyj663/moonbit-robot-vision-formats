# Reproducible benchmark record

This record is based on commands executed in the repository, not synthetic
library timings. The measurements below are three warm local runs on Windows
PowerShell, recorded on 2026-08-24. They are an engineering baseline, not a
cross-machine performance claim.

Toolchain during this run: `moon 0.1.20260819`, `moonc v0.10.9+6e6c44045`.

| workload | command | three runs (ms) | average (ms) |
|---|---|---:|---:|
| all-target check | `moon check --target all --deny-warn` | 301, 78, 77 | 152.00 |
| all-target test suite | `moon test --target all --deny-warn` | 313, 334, 348 | 331.67 |
| wasm-gc build | `moon build --target wasm-gc` | 80, 74, 71 | 75.00 |
| CLI smoke run | `moon run cmd/main` | 97, 99, 102 | 99.33 |

The suite contains 26 passing tests across wasm, wasm-gc, js and native.
benchmark_suite.mbt provides deterministic checksums for the main workflows.
