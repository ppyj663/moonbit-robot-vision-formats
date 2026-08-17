///|
test "boundary stamp 1-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 1-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 1-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 1-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 1-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 1-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 1-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 1-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 1-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 1-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 1-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 1-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 1-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 1-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 1-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 1-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 1-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 1-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 1-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 2-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 2-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 2-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 2-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 2-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 2-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 2-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 2-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 2-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 2-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 2-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 2-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 2-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 2-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 2-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 2-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 2-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 2-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 2-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 3-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 3-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 3-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 3-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 3-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 3-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 3-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 3-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 3-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 3-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 3-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 3-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 3-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 3-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 3-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 3-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 3-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 3-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 3-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 4-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 4-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 4-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 4-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 4-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 4-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 4-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 4-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 4-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 4-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 4-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 4-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 4-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 4-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 4-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 4-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 4-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 4-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 4-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 5-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 5-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 5-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 5-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 5-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 5-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 5-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 5-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 5-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 5-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 5-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 5-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 5-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 5-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 5-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 5-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 5-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 5-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 5-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 6-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 6-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 6-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 6-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 6-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 6-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 6-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 6-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 6-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 6-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 6-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 6-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 6-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 6-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 6-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 6-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 6-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 6-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 6-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 7-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 7-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 7-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 7-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 7-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 7-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 7-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 7-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 7-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 7-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 7-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 7-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 7-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 7-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 7-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 7-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 7-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 7-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 7-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 8-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 8-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 8-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 8-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 8-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 8-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 8-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 8-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 8-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 8-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 8-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 8-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 8-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 8-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 8-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 8-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 8-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 8-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 8-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 9-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 9-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 9-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 9-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 9-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 9-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 9-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 9-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 9-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 9-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 9-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 9-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 9-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 9-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 9-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 9-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 9-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 9-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 9-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 10-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 10-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 10-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 10-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 10-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 10-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 10-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 10-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 10-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 10-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 10-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 10-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 10-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 10-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 10-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 10-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 10-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 10-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 10-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 11-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 11-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 11-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 11-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 11-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 11-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 11-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 11-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 11-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 11-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 11-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 11-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 11-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 11-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 11-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 11-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 11-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 11-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 11-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}

///|
test "boundary stamp 12-1" {
  assert_eq(parse_stamp_text("0.000000001").nsec, 1)
  inspect(true, content="true")
}

///|
test "boundary stamp 12-2" {
  assert_eq(parse_stamp_text("42").sec, 42)
  inspect(true, content="true")
}

///|
test "boundary stamp 12-3" {
  assert_true(parse_stamp_text("3.5").compare(parse_stamp_text("3.6")) < 0)
  inspect(true, content="true")
}

///|
test "boundary geometry 12-4" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: 2.0, height: 3.0 }.area(),
    6.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 12-5" {
  assert_eq(
    BoundingBox::{ x: 0.0, y: 0.0, width: -1.0, height: 3.0 }.area(),
    0.0,
  )
  inspect(true, content="true")
}

///|
test "boundary geometry 12-6" {
  assert_true(Point2D::{ x: 0.0, y: 0.0 }.distance({ x: 3.0, y: 4.0 }) == 5.0)
  inspect(true, content="true")
}

///|
test "boundary geometry 12-7" {
  assert_true(
    point_in_polygon({ x: 1.0, y: 1.0 }, [
      { x: 0.0, y: 0.0 },
      { x: 2.0, y: 0.0 },
      { x: 2.0, y: 2.0 },
      { x: 0.0, y: 2.0 },
    ]),
  )
  inspect(true, content="true")
}

///|
test "boundary metrics 12-8" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).count, 3)
  inspect(true, content="true")
}

///|
test "boundary metrics 12-9" {
  assert_eq(numeric_summary([1.0, 2.0, 3.0]).mean, 2.0)
  inspect(true, content="true")
}

///|
test "boundary metrics 12-10" {
  assert_eq(mean_absolute_error([1.0, 2.0], [1.5, 1.0]), 0.75)
  inspect(true, content="true")
}

///|
test "boundary metrics 12-11" {
  assert_eq(precision_recall_f1(5, 0, 0), (1.0, 1.0, 1.0))
  inspect(true, content="true")
}

///|
test "boundary csv 12-12" {
  assert_eq(parse_csv_row("a,\"b,c\",d", default_csv_options()).length(), 3)
  inspect(true, content="true")
}

///|
test "boundary csv 12-13" {
  assert_eq(csv_escape("a,b", ','), "\"a,b\"")
  inspect(true, content="true")
}

///|
test "boundary csv 12-14" {
  assert_eq(column_index(["sec", "path"], "PATH"), Some(1))
  inspect(true, content="true")
}

///|
test "boundary quality 12-15" {
  assert_eq(quality_score([]), 100.0)
  inspect(true, content="true")
}

///|
test "boundary quality 12-16" {
  assert_eq(validate_camera(None, default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 12-17" {
  assert_eq(validate_depth_stream([], default_quality_thresholds()).length(), 1)
  inspect(true, content="true")
}

///|
test "boundary quality 12-18" {
  assert_true(benchmark_is_reproducible(benchmark_result("x", 1, 1, 1L, 1L)))
  inspect(true, content="true")
}

///|
test "boundary resampling 12-19" {
  assert_eq(interpolate_angle(3.0, -3.0, 0.5), 3.141592653589793)
  inspect(true, content="true")
}
