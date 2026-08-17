# MoonBit August Hackathon acceptance self-check

This checklist is written for the August hackathon acceptance stage. It is
kept in the repository so the result can be reproduced by a reviewer.

## Repository and identity

- [x] Public repository: ppyj663/moonbit-robot-vision-formats
- [x] Default branch: main
- [x] Apache-2.0 LICENSE is present.
- [x] README.md points to the tested README.mbt.md documentation.
- [x] CHANGELOG.md, CONTRIBUTING.md, design notes and proposal materials
      are present.
- [x] GitHub commit author is the repository owner ppyj663; no generated
      contributor identity is used.
- [x] GitLink is maintained as a separate owner-controlled mirror. Its local
      commit is prepared, but the remote currently rejects writes with a Gitea
      permission error and therefore requires a GitLink credential with write
      access.

## MoonBit implementation

- [x] moon.mod is versioned as 0.3.0, uses the ppyj663 module owner and
      declares Apache-2.0 licensing.
- [x] Library source: 18,965 .mbt lines, excluding _test.mbt files.
- [x] Test source: 5,538 .mbt lines.
- [x] Total MoonBit source: 24,503 lines.
- [x] The implementation remains offline and does not claim to be a ROS client.
- [x] Public APIs cover CSV/YAML bridges, timestamp synchronization, camera
      geometry, dataset quality, resampling, metrics and stream queries.

## Reproducible validation

    moon fmt --check
    moon check --target all --deny-warn
    moon test --target all
    moon test --target native
    moon info

The current local result is 837 passing tests on wasm, wasm-gc, js and native.
The generated pkg.generated.mbti file is committed for API review.

## CI and package delivery

- [x] .github/workflows/test.yml checks all targets, warnings, formatting,
      interface generation and native tests on Ubuntu, macOS and Windows.
- [x] .github/workflows/publish.yml validates before publishing and requires
      an explicit MOONCAKES_TOKEN secret.
- [x] Mooncakes package ppyj663/moonbit-robot-vision-formats version 0.3.0
      passed moon publish validation and returned HTTP 200.
- [x] Real local build/test measurements are recorded in
      docs/benchmark-results.md.
