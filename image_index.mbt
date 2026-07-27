///|
pub fn parse_image_index_csv(
  text : String,
) -> Array[ImageFrameRef] raise VisionFormatError {
  let lines = non_empty_lines(text)
  if lines.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  let start = if lines[0].to_lower().contains("sec") { 1 } else { 0 }
  let frames = Array::new()
  for i in start..<lines.length() {
    let row = split_csv_line(lines[i])
    require_columns(row, 4, "image index row \{i + 1}")
    frames.push({
      stamp: parse_stamp(row[0][:], row[1][:]),
      frame_id: row[2],
      path: row[3],
    })
  }
  ensure_monotonic(frames, fn(frame) { frame.stamp }, "image index")
  frames
}

///|
pub fn image_index_to_csv(frames : ArrayView[ImageFrameRef]) -> String {
  let rows = ["sec,nsec,frame_id,path"]
  for frame in frames {
    rows.push(
      "\{frame.stamp.sec},\{frame.stamp.nsec},\{frame.frame_id},\{frame.path}",
    )
  }
  rows.join("\n")
}

///|
pub fn image_periods_ns(frames : ArrayView[ImageFrameRef]) -> Array[Int64] {
  let periods = Array::new()
  for i in 1..<frames.length() {
    periods.push(frames[i - 1].stamp.delta_ns(frames[i].stamp))
  }
  periods
}

///|
pub fn image_index_summary(frames : ArrayView[ImageFrameRef]) -> String {
  if frames.is_empty() {
    "0 frames"
  } else {
    let first = frames[0].stamp.to_string()
    let last = frames[frames.length() - 1].stamp.to_string()
    "\{frames.length()} frames from \{first} to \{last}"
  }
}
