///|
test "csv parser preserves quoted delimiters" {
  let row = parse_csv_row(
    "front,\"camera,front\",image.png",
    default_csv_options(),
  )
  assert_eq(row.length(), 3)
  assert_eq(row[1], "camera,front")
  assert_eq(csv_join_row(row, ','), "front,\"camera,front\",image.png")
}

///|
test "csv parser handles comments and rectangular tables" {
  let csv =
    #|# exported by extractor
    #|name,value
    #|alpha,1
    #|beta,2
    #|
  let rows = parse_csv_table(csv, default_csv_options())
  assert_eq(require_rectangular(rows), 2)
  assert_eq(unique_column_values(rows[1:], 0), ["alpha", "beta"])
}

///|
test "timestamp statistics expose gaps and jitter" {
  let frames : Array[ImageFrameRef] = [
    { stamp: { sec: 1, nsec: 0 }, frame_id: "front", path: "a.png" },
    { stamp: { sec: 1, nsec: 100000000 }, frame_id: "front", path: "b.png" },
    { stamp: { sec: 1, nsec: 300000000 }, frame_id: "front", path: "c.png" },
  ]
  let stats = time_series_stats(frames, fn(frame) { frame.stamp })
  assert_eq(stats.count, 3)
  assert_eq(stats.span_ns, 300000000L)
  assert_eq(missing_periods_ns(image_periods_ns(frames), 100000000L, 1L), 1)
}

///|
test "trajectory interpolation follows shortest heading arc" {
  let first : TrajectorySample = {
    stamp: { sec: 0, nsec: 0 },
    frame_id: "map",
    pose: { x: 0.0, y: 2.0, theta: 3.0 },
  }
  let last : TrajectorySample = {
    stamp: { sec: 1, nsec: 0 },
    frame_id: "map",
    pose: { x: 2.0, y: 4.0, theta: -3.0 },
  }
  let middle = interpolate_pose(first, last, { sec: 0, nsec: 500000000 })
  assert_eq(middle.x, 1.0)
  assert_eq(middle.y, 3.0)
  assert_true(middle.theta > 3.0)
}

///|
test "box geometry clamps and scores overlap" {
  let raw : BoundingBox = { x: -5.0, y: 10.0, width: 20.0, height: 20.0 }
  let clipped = clamp_box(raw, 10, 20)
  assert_eq(clipped.x, 0.0)
  assert_eq(clipped.width, 10.0)
  assert_eq(clipped.height, 10.0)
  assert_eq(raw.iou({ x: 0.0, y: 10.0, width: 10.0, height: 10.0 }), 0.25)
}

///|
test "camera distortion is reversible within tolerance" {
  let camera : CameraIntrinsics = {
    width: 640,
    height: 480,
    distortion_model: "plumb_bob",
    k: [500.0, 0.0, 320.0, 0.0, 500.0, 240.0, 0.0, 0.0, 1.0],
    d: [0.1, -0.05, 0.001, 0.001, 0.01],
    r: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
    p: [500.0, 0.0, 320.0, 0.0, 0.0, 500.0, 240.0, 0.0, 0.0, 0.0, 1.0, 0.0],
  }
  let point : NormalizedPoint = { x: 0.2, y: -0.1 }
  let distorted = distort_normalized(point, distortion_coefficients(camera))
  let recovered = undistort_normalized(
    distorted,
    distortion_coefficients(camera),
    8,
  )
  assert_true((recovered.x - point.x).abs() < 0.0001)
  assert_true((recovered.y - point.y).abs() < 0.0001)
}

///|
test "quality rules identify invalid streams" {
  let thresholds = default_quality_thresholds()
  let depth : DepthMetadata = {
    stamp: { sec: 1, nsec: 0 },
    frame_id: "depth",
    width: 0,
    height: 480,
    encoding: "16UC1",
    unit: "mm",
    min_depth: 200.0,
    max_depth: 100.0,
  }
  let violations = validate_depth_stream([depth], thresholds)
  assert_eq(violations.length(), 2)
  assert_true(quality_score(violations) < 100.0)
}

///|
test "detection metrics match one-to-one boxes" {
  let target : BoundingBox = { x: 0.0, y: 0.0, width: 10.0, height: 10.0 }
  let prediction : BoundingBox = { x: 1.0, y: 1.0, width: 8.0, height: 8.0 }
  assert_eq(average_precision_at_iou([prediction], [target], 0.5), 1.0)
  assert_eq(box_recall_at_iou([prediction], [target], 0.5), 1.0)
}

///|
test "quality report markdown is stable" {
  let violations : Array[RuleViolation] = [
    {
      code: MissingCalibration,
      source: "camera",
      row: 0,
      detail: "calibration is missing",
    },
  ]
  let markdown = violations_to_markdown(violations)
  assert_true(markdown.contains("missing_calibration"))
  assert_true(markdown.contains("calibration is missing"))
}

///|
test "manifest round trip keeps optional streams" {
  let manifest = parse_manifest_csv(
    "front",
    "dataset",
    (
      #|kind,path
      #|image_index,images.csv
      #|camera_info,camera.yaml
      #|trajectory,trajectory.csv
      #|
    ),
  )
  assert_true(manifest_has_kind(manifest, "camera_info"))
  assert_eq(manifest_path_for(manifest, "trajectory"), Some("trajectory.csv"))
  assert_true(manifest_to_csv(manifest).contains("camera_info,camera.yaml"))
}

///|
test "trajectory summary reports distance and speed" {
  let samples : Array[TrajectorySample] = [
    {
      stamp: { sec: 0, nsec: 0 },
      frame_id: "map",
      pose: { x: 0.0, y: 0.0, theta: 0.0 },
    },
    {
      stamp: { sec: 1, nsec: 0 },
      frame_id: "map",
      pose: { x: 3.0, y: 4.0, theta: 0.1 },
    },
  ]
  let summary = summarize_trajectory(samples)
  assert_eq(summary.distance, 5.0)
  assert_eq(summary.duration_ns, 1000000000L)
  assert_eq(summary.average_speed, 5.0)
}

///|
test "stream index groups frames and estimates rate" {
  let frames : Array[ImageFrameRef] = [
    { stamp: { sec: 0, nsec: 0 }, frame_id: "front", path: "a.png" },
    { stamp: { sec: 0, nsec: 500000000 }, frame_id: "front", path: "b.png" },
    { stamp: { sec: 1, nsec: 0 }, frame_id: "rear", path: "c.png" },
  ]
  let groups = group_images_by_frame(frames)
  assert_eq(groups.length(), 2)
  assert_eq(groups[0].count, 2)
  assert_eq(image_rate_hz(frames), 2.0)
}

///|
test "annotation matching suppresses overlapping detections" {
  let annotations : Array[Annotation] = [
    {
      stamp: { sec: 0, nsec: 0 },
      frame_id: "front",
      label: "person",
      bbox: { x: 0.0, y: 0.0, width: 10.0, height: 10.0 },
      confidence: 0.9,
    },
    {
      stamp: { sec: 0, nsec: 0 },
      frame_id: "front",
      label: "person",
      bbox: { x: 1.0, y: 1.0, width: 9.0, height: 9.0 },
      confidence: 0.8,
    },
  ]
  let selected = greedy_non_max_suppression(annotations, 0.5)
  assert_eq(selected.length(), 1)
  assert_eq(summarize_labels(annotations)[0].count, 2)
}

///|
test "dataset split is deterministic and disjoint" {
  let frames : Array[ImageFrameRef] = [
    { stamp: { sec: 0, nsec: 0 }, frame_id: "front", path: "a.png" },
    { stamp: { sec: 1, nsec: 0 }, frame_id: "front", path: "b.png" },
    { stamp: { sec: 2, nsec: 0 }, frame_id: "front", path: "c.png" },
    { stamp: { sec: 3, nsec: 0 }, frame_id: "front", path: "d.png" },
  ]
  let first = split_images(frames, 7, 20, 20)
  let second = split_images(frames, 7, 20, 20)
  assert_eq(split_counts(first), split_counts(second))
  assert_true(split_is_disjoint(first, fn(a, b) { a.path == b.path }))
}

///|
test "depth summary rejects invalid samples without losing totals" {
  let samples : Array[DepthMetadata] = [
    {
      stamp: { sec: 0, nsec: 0 },
      frame_id: "depth",
      width: 2,
      height: 2,
      encoding: "16UC1",
      unit: "mm",
      min_depth: 100.0,
      max_depth: 300.0,
    },
    {
      stamp: { sec: 1, nsec: 0 },
      frame_id: "depth",
      width: 1,
      height: 2,
      encoding: "16UC1",
      unit: "mm",
      min_depth: 400.0,
      max_depth: 200.0,
    },
  ]
  let summary = summarize_depth(samples)
  assert_eq(summary.sample_count, 2)
  assert_eq(summary.valid_samples, 1)
  assert_eq(summary.total_pixels, 6L)
  assert_eq(summary.valid_pixels, 4L)
  assert_eq(depth_encoding_bytes_per_pixel("16uc1"), 2)
  assert_eq(depth_valid_pixel_ratio(summary), 2.0 / 3.0)
  assert_true(!depth_dimensions_are_consistent(samples))
}

///|
test "camera diagnostics expose malformed calibration" {
  let camera : CameraIntrinsics = {
    width: 0,
    height: 480,
    distortion_model: "",
    k: [0.0, 0.0],
    d: [],
    r: [],
    p: [],
  }
  let issues = camera_diagnostics(camera)
  assert_eq(issues.length(), 5)
  assert_true(!camera_is_usable(camera))
  assert_true(camera_pixel_is_inside(camera, { u: 0.0, v: 0.0 }) == false)
}

///|
test "frame-aware synchronization filters cross-camera matches" {
  let image : ImageFrameRef = {
    stamp: { sec: 1, nsec: 0 },
    frame_id: "front",
    path: "front.png",
  }
  let samples : Array[TrajectorySample] = [
    {
      stamp: { sec: 1, nsec: 100 },
      frame_id: "rear",
      pose: { x: 0.0, y: 0.0, theta: 0.0 },
    },
    {
      stamp: { sec: 1, nsec: 200 },
      frame_id: "front",
      pose: { x: 1.0, y: 0.0, theta: 0.0 },
    },
  ]
  assert_true(
    nearest_trajectory_for_image(image, samples, 1000L, RequireSameFrameId)
    is Some(_),
  )
  assert_true(
    image_trajectory_is_compatible(image, samples[0], 1000L, RequireSameFrameId) ==
    false,
  )
  assert_eq(
    annotations_for_image(image, [], 1000L, RequireSameFrameId).length(),
    0,
  )
}
