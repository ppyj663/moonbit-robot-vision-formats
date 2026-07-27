///|
pub fn parse_trajectory_csv(
  text : String,
) -> Array[TrajectorySample] raise VisionFormatError {
  let lines = non_empty_lines(text)
  if lines.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  let start = if lines[0].to_lower().contains("theta") { 1 } else { 0 }
  let samples = Array::new()
  for i in start..<lines.length() {
    let row = split_csv_line(lines[i])
    require_columns(row, 6, "trajectory row \{i + 1}")
    samples.push({
      stamp: parse_stamp(row[0][:], row[1][:]),
      frame_id: row[2],
      pose: {
        x: parse_double_field(row[3][:], "x"),
        y: parse_double_field(row[4][:], "y"),
        theta: parse_double_field(row[5][:], "theta"),
      },
    })
  }
  ensure_monotonic(samples, fn(sample) { sample.stamp }, "trajectory")
  samples
}

///|
pub fn trajectory_to_csv(samples : ArrayView[TrajectorySample]) -> String {
  let rows = ["sec,nsec,frame_id,x,y,theta"]
  for sample in samples {
    rows.push(
      "\{sample.stamp.sec},\{sample.stamp.nsec},\{sample.frame_id},\{sample.pose.x},\{sample.pose.y},\{sample.pose.theta}",
    )
  }
  rows.join("\n")
}

///|
pub fn trajectory_bounds(
  samples : ArrayView[TrajectorySample],
) -> (Double, Double, Double, Double) raise VisionFormatError {
  if samples.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  for i = 1, min_x = samples[0].pose.x, max_x = samples[0].pose.x, min_y = samples[0].pose.y, max_y = samples[0].pose.y; i <
     samples.length(); {
    let p = samples[i].pose
    continue i + 1,
      if p.x < min_x {
        p.x
      } else {
        min_x
      },
      if p.x > max_x {
        p.x
      } else {
        max_x
      },
      if p.y < min_y {
        p.y
      } else {
        min_y
      },
      if p.y > max_y {
        p.y
      } else {
        max_y
      }
  } nobreak {
    (min_x, max_x, min_y, max_y)
  }
}
