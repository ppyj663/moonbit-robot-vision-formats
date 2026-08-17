# Reproducible benchmark record

This record is based on commands executed in the repository, not synthetic
library timings. MoonBit 0.1.20260807 (4da23f8) was used on 2026-08-18.

| workload | command | elapsed |
|---|---|---:|
| all-target check | moon check --target all --deny-warn | 0.122 s |
| native test suite | moon test --target native | 0.126 s |
| wasm-gc build | moon build --target wasm-gc | 0.291 s |

The suite contains 837 passing tests across wasm, wasm-gc, js and native.
benchmark_suite.mbt provides deterministic checksums for the main workflows.
