# Design Notes

`moonbit-robot-vision-formats` is intentionally an offline bridge. It models
small textual sidecars that robotics teams already export while inspecting or
curating bag-derived datasets. This keeps the package portable across MoonBit
targets and leaves transport concerns to ROS, MCAP or vendor-specific tools.

## Data Boundaries

The package treats image payloads and depth images as external files. It stores
paths, frame identifiers and timestamps, then validates the metadata needed to
line up those files with calibration, trajectory and annotation streams.

## Current Formats

- Image index CSV: `sec,nsec,frame_id,path`
- Camera calibration YAML subset: `image_width`, `image_height`,
  `distortion_model`, `camera_matrix`, `distortion_coefficients`,
  `rectification_matrix`, `projection_matrix`
- Trajectory CSV: `sec,nsec,frame_id,x,y,theta`
- Depth metadata CSV:
  `sec,nsec,frame_id,width,height,encoding,unit,min_depth,max_depth`
- Annotation CSV: `sec,nsec,frame_id,label,x,y,width,height,confidence`

## Extension Points

The next useful additions are richer YAML parsing, stereo calibration helpers,
timestamp interpolation policies, MCAP/rosbag manifest readers and exporters for
dataset review dashboards. Those can be added without changing the current API
shape because the core public types already separate stamps, frames, calibration,
pose, depth and labels.

