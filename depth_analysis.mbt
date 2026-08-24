///|
pub(all) struct DepthSummary {
  sample_count : Int
  valid_samples : Int
  total_pixels : Int64
  valid_pixels : Int64
  min_depth : Double
  max_depth : Double
  mean_depth : Double
} derive(Debug, ToJson)

///|
pub fn depth_sample_is_valid(sample : DepthMetadata) -> Bool {
  sample.width > 0 &&
  sample.height > 0 &&
  sample.min_depth >= 0.0 &&
  sample.max_depth >= sample.min_depth
}

///|
pub fn depth_encoding_bytes_per_pixel(encoding : String) -> Int {
  match encoding.to_upper() {
    "16UC1" => 2
    "MONO16" => 2
    "32FC1" => 4
    "32FC" => 4
    "8UC1" => 1
    "MONO8" => 1
    _ => 0
  }
}

///|
pub fn summarize_depth(samples : ArrayView[DepthMetadata]) -> DepthSummary {
  let mut valid_samples = 0
  let mut total_pixels = 0L
  let mut valid_pixels = 0L
  let mut min_depth = 0.0
  let mut max_depth = 0.0
  let mut sum_depth = 0.0
  for sample in samples {
    let pixels = if sample.width > 0 && sample.height > 0 {
      sample.width.to_int64() * sample.height.to_int64()
    } else {
      0L
    }
    total_pixels += pixels
    if depth_sample_is_valid(sample) {
      if valid_samples == 0 || sample.min_depth < min_depth {
        min_depth = sample.min_depth
      }
      if valid_samples == 0 || sample.max_depth > max_depth {
        max_depth = sample.max_depth
      }
      valid_samples += 1
      valid_pixels += pixels
      sum_depth += (sample.min_depth + sample.max_depth) / 2.0
    }
  }
  {
    sample_count: samples.length(),
    valid_samples,
    total_pixels,
    valid_pixels,
    min_depth,
    max_depth,
    mean_depth: if valid_samples == 0 {
      0.0
    } else {
      sum_depth / valid_samples.to_double()
    },
  }
}

///|
pub fn depth_valid_pixel_ratio(summary : DepthSummary) -> Double {
  if summary.total_pixels <= 0L {
    0.0
  } else {
    summary.valid_pixels.to_double() / summary.total_pixels.to_double()
  }
}

///|
pub fn depth_ranges_overlap(
  left : DepthMetadata,
  right : DepthMetadata,
) -> Bool {
  depth_sample_is_valid(left) &&
  depth_sample_is_valid(right) &&
  left.min_depth <= right.max_depth &&
  right.min_depth <= left.max_depth
}

///|
pub fn depth_dimensions_are_consistent(
  samples : ArrayView[DepthMetadata],
) -> Bool {
  if samples.is_empty() {
    true
  } else {
    let first = samples[0]
    samples.all(fn(sample) {
      sample.width == first.width &&
      sample.height == first.height &&
      sample.encoding == first.encoding &&
      sample.unit == first.unit
    })
  }
}
