///|
pub(all) struct TrajectorySummary {
  samples : Int
  distance : Double
  duration_ns : Int64
  average_speed : Double
  min_x : Double
  max_x : Double
  min_y : Double
  max_y : Double
} derive(Debug, ToJson)

///|
pub fn pose_distance(a : Pose2D, b : Pose2D) -> Double {
  let dx = b.x - a.x
  let dy = b.y - a.y
  (dx * dx + dy * dy).sqrt()
}

///|
pub fn trajectory_distance(samples : ArrayView[TrajectorySample]) -> Double {
  let mut total = 0.0
  for i in 1..<samples.length() {
    total += pose_distance(samples[i - 1].pose, samples[i].pose)
  }
  total
}

///|
pub fn trajectory_duration_ns(samples : ArrayView[TrajectorySample]) -> Int64 {
  if samples.length() < 2 {
    0L
  } else {
    samples[samples.length() - 1].stamp.to_nanoseconds() -
    samples[0].stamp.to_nanoseconds()
  }
}

///|
pub fn trajectory_average_speed(
  samples : ArrayView[TrajectorySample],
) -> Double {
  let duration = trajectory_duration_ns(samples)
  if duration <= 0L {
    0.0
  } else {
    trajectory_distance(samples) / duration.to_double() * 1000000000.0
  }
}

///|
pub fn summarize_trajectory(
  samples : ArrayView[TrajectorySample],
) -> TrajectorySummary raise VisionFormatError {
  let (min_x, max_x, min_y, max_y) = trajectory_bounds(samples)
  {
    samples: samples.length(),
    distance: trajectory_distance(samples),
    duration_ns: trajectory_duration_ns(samples),
    average_speed: trajectory_average_speed(samples),
    min_x,
    max_x,
    min_y,
    max_y,
  }
}

///|
pub fn trajectory_turns(
  samples : ArrayView[TrajectorySample],
  minimum_change : Double,
) -> Int {
  let mut turns = 0
  if samples.length() < 3 {
    return turns
  }
  for i in 1..<(samples.length() - 1) {
    let before = samples[i].pose.theta - samples[i - 1].pose.theta
    let after = samples[i + 1].pose.theta - samples[i].pose.theta
    if abs_double(before - after) >= minimum_change {
      turns += 1
    }
  }
  turns
}

///|
pub fn stationary_samples(
  samples : ArrayView[TrajectorySample],
  maximum_speed : Double,
) -> Array[TrajectorySample] {
  let result = Array::new()
  if samples.is_empty() {
    return result
  }
  result.push(samples[0])
  for i in 1..<samples.length() {
    let duration = samples[i].stamp.to_nanoseconds() -
      samples[i - 1].stamp.to_nanoseconds()
    let distance = pose_distance(samples[i - 1].pose, samples[i].pose)
    let speed = if duration <= 0L {
      0.0
    } else {
      distance / duration.to_double() * 1000000000.0
    }
    if speed <= maximum_speed {
      result.push(samples[i])
    }
  }
  result
}

///|
pub fn translate_trajectory(
  samples : ArrayView[TrajectorySample],
  dx : Double,
  dy : Double,
) -> Array[TrajectorySample] {
  samples.map(fn(sample) {
    {
      stamp: sample.stamp,
      frame_id: sample.frame_id,
      pose: {
        x: sample.pose.x + dx,
        y: sample.pose.y + dy,
        theta: sample.pose.theta,
      },
    }
  })
}
