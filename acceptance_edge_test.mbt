///|
test "acceptance edge 1-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 1-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 1-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 1-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 1-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 1-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 1-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 1-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 1-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 1-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 1-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 1-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 1-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 1-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 1-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 2-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 2-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 2-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 2-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 2-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 2-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 2-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 2-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 2-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 2-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 2-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 2-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 2-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 2-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 2-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 3-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 3-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 3-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 3-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 3-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 3-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 3-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 3-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 3-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 3-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 3-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 3-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 3-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 3-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 3-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 4-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 4-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 4-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 4-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 4-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 4-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 4-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 4-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 4-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 4-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 4-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 4-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 4-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 4-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 4-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 5-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 5-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 5-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 5-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 5-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 5-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 5-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 5-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 5-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 5-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 5-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 5-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 5-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 5-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 5-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 6-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 6-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 6-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 6-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 6-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 6-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 6-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 6-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 6-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 6-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 6-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 6-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 6-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 6-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 6-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 7-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 7-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 7-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 7-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 7-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 7-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 7-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 7-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 7-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 7-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 7-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 7-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 7-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 7-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 7-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 8-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 8-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 8-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 8-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 8-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 8-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 8-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 8-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 8-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 8-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 8-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 8-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 8-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 8-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 8-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 9-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 9-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 9-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 9-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 9-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 9-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 9-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 9-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 9-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 9-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 9-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 9-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 9-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 9-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 9-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 10-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 10-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 10-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 10-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 10-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 10-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 10-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 10-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 10-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 10-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 10-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 10-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 10-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 10-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 10-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 11-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 11-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 11-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 11-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 11-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 11-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 11-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 11-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 11-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 11-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 11-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 11-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 11-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 11-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 11-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 12-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 12-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 12-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 12-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 12-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 12-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 12-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 12-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 12-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 12-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 12-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 12-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 12-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 12-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 12-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 13-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 13-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 13-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 13-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 13-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 13-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 13-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 13-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 13-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 13-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 13-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 13-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 13-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 13-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 13-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 14-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 14-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 14-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 14-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 14-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 14-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 14-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 14-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 14-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 14-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 14-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 14-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 14-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 14-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 14-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 15-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 15-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 15-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 15-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 15-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 15-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 15-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 15-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 15-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 15-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 15-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 15-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 15-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 15-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 15-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 16-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 16-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 16-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 16-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 16-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 16-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 16-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 16-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 16-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 16-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 16-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 16-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 16-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 16-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 16-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 17-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 17-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 17-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 17-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 17-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 17-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 17-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 17-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 17-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 17-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 17-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 17-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 17-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 17-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 17-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 18-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 18-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 18-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 18-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 18-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 18-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 18-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 18-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 18-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 18-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 18-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 18-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 18-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 18-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 18-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 19-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 19-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 19-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 19-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 19-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 19-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 19-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 19-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 19-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 19-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 19-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 19-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 19-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 19-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 19-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 20-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 20-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 20-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 20-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 20-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 20-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 20-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 20-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 20-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 20-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 20-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 20-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 20-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 20-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 20-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 21-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 21-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 21-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 21-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 21-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 21-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 21-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 21-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 21-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 21-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 21-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 21-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 21-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 21-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 21-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 22-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 22-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 22-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 22-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 22-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 22-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 22-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 22-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 22-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 22-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 22-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 22-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 22-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 22-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 22-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 23-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 23-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 23-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 23-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 23-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 23-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 23-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 23-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 23-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 23-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 23-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 23-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 23-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 23-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 23-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 24-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 24-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 24-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 24-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 24-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 24-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 24-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 24-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 24-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 24-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 24-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 24-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 24-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 24-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 24-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 25-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 25-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 25-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 25-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 25-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 25-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 25-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 25-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 25-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 25-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 25-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 25-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 25-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 25-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 25-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 26-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 26-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 26-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 26-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 26-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 26-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 26-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 26-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 26-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 26-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 26-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 26-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 26-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 26-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 26-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 27-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 27-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 27-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 27-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 27-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 27-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 27-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 27-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 27-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 27-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 27-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 27-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 27-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 27-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 27-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 28-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 28-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 28-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 28-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 28-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 28-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 28-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 28-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 28-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 28-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 28-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 28-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 28-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 28-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 28-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 29-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 29-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 29-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 29-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 29-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 29-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 29-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 29-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 29-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 29-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 29-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 29-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 29-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 29-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 29-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 30-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 30-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 30-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 30-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 30-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 30-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 30-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 30-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 30-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 30-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 30-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 30-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 30-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 30-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 30-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 31-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 31-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 31-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 31-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 31-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 31-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 31-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 31-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 31-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 31-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 31-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 31-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 31-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 31-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 31-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 32-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 32-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 32-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 32-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 32-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 32-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 32-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 32-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 32-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 32-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 32-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 32-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 32-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 32-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 32-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 33-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 33-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 33-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 33-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 33-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 33-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 33-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 33-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 33-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 33-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 33-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 33-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 33-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 33-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 33-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 34-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 34-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 34-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 34-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 34-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 34-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 34-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 34-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 34-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 34-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 34-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 34-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 34-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 34-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 34-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 35-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 35-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 35-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 35-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 35-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 35-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 35-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 35-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 35-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 35-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 35-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 35-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 35-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 35-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 35-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 36-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 36-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 36-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 36-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 36-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 36-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 36-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 36-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 36-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 36-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 36-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 36-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 36-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 36-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 36-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 37-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 37-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 37-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 37-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 37-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 37-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 37-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 37-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 37-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 37-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 37-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 37-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 37-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 37-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 37-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 38-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 38-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 38-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 38-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 38-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 38-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 38-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 38-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 38-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 38-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 38-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 38-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 38-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 38-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 38-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 39-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 39-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 39-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 39-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 39-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 39-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 39-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 39-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 39-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 39-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 39-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 39-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 39-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 39-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 39-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 40-1" {
  assert_eq(parse_stamp_text("1.25").nsec, 250000000)
  inspect(true, content="true")
}

///|
test "acceptance edge 40-2" {
  assert_eq(parse_stamp_text("-1.5").sec, -1)
  inspect(true, content="true")
}

///|
test "acceptance edge 40-3" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.right(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 40-4" {
  assert_eq(
    BoundingBox::{ x: 2.0, y: 3.0, width: 4.0, height: 5.0 }.bottom(),
    8.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 40-5" {
  assert_eq(
    polygon_area([{ x: 0.0, y: 0.0 }, { x: 1.0, y: 0.0 }, { x: 0.0, y: 1.0 }]),
    0.5,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 40-6" {
  assert_eq(numeric_summary([]).count, 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 40-7" {
  assert_eq(precision_recall_f1(0, 1, 1), (0.0, 0.0, 0.0))
  inspect(true, content="true")
}

///|
test "acceptance edge 40-8" {
  assert_eq(csv_join_row(["a", "b"], ','), "a,b")
  inspect(true, content="true")
}

///|
test "acceptance edge 40-9" {
  assert_eq(
    quality_score([{ code: EmptyStream, source: "x", row: 0, detail: "x" }]),
    70.0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 40-10" {
  assert_eq(default_quality_thresholds().max_gap_ns, 1000000000L)
  inspect(true, content="true")
}

///|
test "acceptance edge 40-11" {
  assert_eq(interpolate_angle(0.0, 1.0, 0.5), 0.5)
  inspect(true, content="true")
}

///|
test "acceptance edge 40-12" {
  assert_eq(downsample_images([], 2).length(), 0)
  inspect(true, content="true")
}

///|
test "acceptance edge 40-13" {
  assert_eq(
    deduplicate_stamps([], fn(item : ImageFrameRef) { item.stamp }).length(),
    0,
  )
  inspect(true, content="true")
}

///|
test "acceptance edge 40-14" {
  assert_eq(benchmark_result("x", 10, 2, 1L, 4L).rows_per_second, 20000000000.0)
  inspect(true, content="true")
}

///|
test "acceptance edge 40-15" {
  assert_true(
    camera_is_well_conditioned(
      {
        width: 1,
        height: 1,
        distortion_model: "",
        k: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0],
        d: [],
        r: [],
        p: [],
      },
      0.1,
    ),
  )
  inspect(true, content="true")
}
