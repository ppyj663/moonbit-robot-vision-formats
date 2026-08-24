# Changelog

## 0.3.1

- Added manifest CSV parsing and round-trip export for image, camera, depth,
  trajectory and annotation assets.
- Added trajectory summaries, frame grouping, annotation matching and
  deterministic dataset splitting helpers.
- Added depth coverage summaries, camera calibration diagnostics and
  frame-aware synchronization policies.
- Added boundary tests covering malformed dimensions, invalid depth ranges,
  cross-camera timestamp matches and deterministic partitions.

## 0.2.0

- Added CSV tables, time-series analysis, interpolation and resampling.
- Added geometry, camera distortion, quality rules and detection metrics.
- Added executable tests for parser, synchronization, geometry and quality
  boundaries.
- Added stable-toolchain CI and guarded Mooncakes publishing.

## 0.1.0

- Added image timestamp CSV parsing and serialization.
- Added CameraInfo-style YAML subset parsing and serialization.
- Added 2D trajectory CSV parsing and bounds calculation.
- Added depth metadata CSV parsing and validation.
- Added annotation CSV parsing and timestamp synchronization reports.
- Added CLI smoke demo, documentation, examples and CI workflow.
