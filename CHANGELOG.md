# Changelog

## 0.1.0

- Added image timestamp CSV parsing and serialization.
- Added CameraInfo-style YAML subset parsing and serialization.
- Added 2D trajectory CSV parsing and bounds calculation.
- Added depth metadata CSV parsing and validation.
- Added annotation CSV parsing and timestamp synchronization reports.
- Added CLI smoke demo, documentation, OSC2026 checklist and CI workflow.

## 0.2.0

- Added CSV tables, time-series analysis, interpolation and resampling.
- Added geometry, camera distortion, quality rules and detection metrics.
- Expanded executable boundary/regression coverage to 837 tests.
- Added stable-toolchain CI and guarded Mooncakes publishing.

## 0.3.0

- Added reusable application query modules for image, trajectory, annotation,
  depth, timestamp, manifest, geometry, quality, benchmark, sync and schema
  records.
- Library source now exceeds 10,000 lines independently of test fixtures.
- Added a formal acceptance self-check report with repository evidence.
