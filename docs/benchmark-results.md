# Reproducible benchmark record

This record is based on commands executed in the repository, not synthetic
library timings. The measurements below are three warm local runs on Windows
PowerShell, recorded on 2026-08-24. They are an engineering baseline, not a
cross-machine performance claim. Re-record them after the MoonBit v0.10.9
toolchain is installed before publishing a release benchmark.

Toolchain during this run: `moon 0.1.20260807`, `moonc v0.10.7`.

| workload | command | three runs (ms) | average (ms) |
|---|---|---:|---:|
| all-target check | `moon check --target all --deny-warn` | 342, 261, 283 | 295.33 |
| all-target test suite | `moon test --target all` | 698, 662, 625 | 661.67 |
| wasm-gc build | `moon build --target wasm-gc` | 611, 128, 117 | 285.33 |
| CLI smoke run | `moon run cmd/main` | 160, 163, 157 | 160.00 |

The suite contains 26 passing tests across wasm, wasm-gc, js and native.
benchmark_suite.mbt provides deterministic checksums for the main workflows.
