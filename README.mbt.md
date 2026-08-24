# moonbit-robot-vision-formats

Offline format bridges for robotics vision datasets in MoonBit.

The project focuses on text artifacts commonly exported from ROS bag workflows:
image timestamp indexes, `CameraInfo`-style calibration YAML, 2D trajectory CSV,
depth image metadata and object annotations. It is not a ROS client and does not
subscribe to topics. The goal is to give MoonBit users a small, testable library
for converting and aligning perception data before it reaches SLAM, calibration
or dataset review tools.

```mbt check
///|
test "README quick start" {
  let csv =
    #|sec,nsec,frame_id,path
    #|42,0,camera/front,front_000001.png
    #|42,33333333,camera/front,front_000002.png
    #|
  let frames = parse_image_index_csv(csv)
  inspect(
    image_index_summary(frames),
    content="2 frames from 42.000000000 to 42.033333333",
  )
}
```

## Scope

- Parse and write image timestamp CSV exported from bag extraction scripts.
- Parse the scalar and matrix subset of camera calibration YAML used by common
  `sensor_msgs/CameraInfo` dumps.
- Parse trajectory CSV containing timestamped planar poses.
- Parse depth metadata sidecars without loading large depth image payloads.
- Parse 2D annotation CSV and align all streams by timestamp tolerance.

## Repository Notes

This repository is an original MoonBit application-ecosystem library.
Before implementation, the package space on Mooncakes was checked with robotics,
vision, camera, depth, CSV and YAML keywords. No mature MoonBit package with this
same offline robotics vision bridge scope was found.

## Validation

Run these commands before submitting or publishing:

```bash
moon check --target all
moon test --target all
moon check --target all --deny-warn --fmt
moon fmt --check
moon info
git diff --exit-code
```

## License

Apache-2.0.

The extended API includes quoted CSV parsing, time-series statistics and
resampling, polygon and box geometry, camera distortion/undistortion, quality
rules and deterministic benchmark checksums.

The package is published to Mooncakes. Publishing from CI is available through
the guarded workflow in .github/workflows/publish.yml.
