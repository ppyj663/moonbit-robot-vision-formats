///|
pub fn parse_depth_metadata_csv(
  text : String,
) -> Array[DepthMetadata] raise VisionFormatError {
  let lines = non_empty_lines(text)
  if lines.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  let start = if lines[0].to_lower().contains("encoding") { 1 } else { 0 }
  let samples = Array::new()
  for i in start..<lines.length() {
    let row = split_csv_line(lines[i])
    require_columns(row, 9, "depth metadata row \{i + 1}")
    samples.push({
      stamp: parse_stamp(row[0][:], row[1][:]),
      frame_id: row[2],
      width: parse_int_field(row[3][:], "width"),
      height: parse_int_field(row[4][:], "height"),
      encoding: row[5],
      unit: row[6],
      min_depth: parse_double_field(row[7][:], "min_depth"),
      max_depth: parse_double_field(row[8][:], "max_depth"),
    })
  }
  ensure_monotonic(samples, fn(sample) { sample.stamp }, "depth metadata")
  samples
}

///|
pub fn depth_metadata_to_csv(samples : ArrayView[DepthMetadata]) -> String {
  let rows = [
    "sec,nsec,frame_id,width,height,encoding,unit,min_depth,max_depth",
  ]
  for sample in samples {
    rows.push(
      "\{sample.stamp.sec},\{sample.stamp.nsec},\{sample.frame_id},\{sample.width},\{sample.height},\{sample.encoding},\{sample.unit},\{sample.min_depth},\{sample.max_depth}",
    )
  }
  rows.join("\n")
}

///|
pub fn validate_depth_metadata(
  sample : DepthMetadata,
) -> Unit raise VisionFormatError {
  if sample.width <= 0 || sample.height <= 0 {
    raise VisionFormatError::InvalidShape(
      "depth image dimensions must be positive",
    )
  }
  if sample.min_depth > sample.max_depth {
    raise VisionFormatError::InvalidNumber("min_depth exceeds max_depth")
  }
}
