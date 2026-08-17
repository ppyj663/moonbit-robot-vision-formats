///|
pub(all) struct Sample2D {
  stamp : Stamp
  value : Point2D
} derive(Debug, ToJson)

///|
pub fn interpolate_point(a : Sample2D, b : Sample2D, stamp : Stamp) -> Point2D {
  let total = b.stamp.to_nanoseconds() - a.stamp.to_nanoseconds()
  if total <= 0L {
    return a.value
  }
  let amount = (stamp.to_nanoseconds() - a.stamp.to_nanoseconds()).to_double() /
    total.to_double()
  a.value.lerp(b.value, amount)
}

///|
pub fn interpolate_pose(
  a : TrajectorySample,
  b : TrajectorySample,
  stamp : Stamp,
) -> Pose2D {
  let total = b.stamp.to_nanoseconds() - a.stamp.to_nanoseconds()
  if total <= 0L {
    return a.pose
  }
  let amount = (stamp.to_nanoseconds() - a.stamp.to_nanoseconds()).to_double() /
    total.to_double()
  {
    x: a.pose.x + (b.pose.x - a.pose.x) * amount,
    y: a.pose.y + (b.pose.y - a.pose.y) * amount,
    theta: interpolate_angle(a.pose.theta, b.pose.theta, amount),
  }
}

///|
pub fn interpolate_angle(a : Double, b : Double, amount : Double) -> Double {
  let mut delta = b - a
  while delta > 3.141592653589793 {
    delta -= 6.283185307179586
  }
  while delta < -3.141592653589793 {
    delta += 6.283185307179586
  }
  a + delta * amount
}

///|
pub fn resample_trajectory(
  samples : ArrayView[TrajectorySample],
  start : Stamp,
  end : Stamp,
  step_ns : Int64,
) -> Array[TrajectorySample] {
  let result = Array::new()
  if samples.is_empty() || step_ns <= 0L || end.compare(start) < 0 {
    return result
  }
  let mut stamp = start
  while stamp.compare(end) <= 0 {
    match interpolate_trajectory(samples, stamp) {
      Some(value) => result.push(value)
      None => ()
    }
    let next = stamp.to_nanoseconds() + step_ns
    if next > end.to_nanoseconds() {
      break
    }
    stamp = {
      sec: (next / 1000000000L).to_int(),
      nsec: (next % 1000000000L).to_int(),
    }
  }
  result
}

///|
pub fn interpolate_trajectory(
  samples : ArrayView[TrajectorySample],
  stamp : Stamp,
) -> TrajectorySample? {
  if samples.is_empty() {
    return None
  }
  if stamp.compare(samples[0].stamp) < 0 ||
    stamp.compare(samples[samples.length() - 1].stamp) > 0 {
    return None
  }
  for i in 0..<samples.length() {
    if samples[i].stamp.compare(stamp) == 0 {
      return Some(samples[i])
    }
    if i + 1 < samples.length() &&
      samples[i].stamp.compare(stamp) < 0 &&
      samples[i + 1].stamp.compare(stamp) > 0 {
      return Some({
        stamp,
        frame_id: samples[i].frame_id,
        pose: interpolate_pose(samples[i], samples[i + 1], stamp),
      })
    }
  }
  None
}

///|
pub fn downsample_images(
  frames : ArrayView[ImageFrameRef],
  every : Int,
) -> Array[ImageFrameRef] {
  let result = Array::new()
  if every <= 0 {
    return result
  }
  for i, frame in frames {
    if i % every == 0 {
      result.push(frame)
    }
  }
  result
}

///|
pub fn[T] deduplicate_stamps(
  items : ArrayView[T],
  stamp_of : (T) -> Stamp,
) -> Array[T] {
  let result = Array::new()
  let mut previous : Stamp? = None
  for item in items {
    let stamp = stamp_of(item)
    match previous {
      Some(value) =>
        if value.compare(stamp) != 0 {
          result.push(item)
          previous = Some(stamp)
        }
      None => {
        result.push(item)
        previous = Some(stamp)
      }
    }
  }
  result
}

///|
pub fn merge_sorted_images(
  left : ArrayView[ImageFrameRef],
  right : ArrayView[ImageFrameRef],
) -> Array[ImageFrameRef] {
  let result = Array::new()
  let mut a = 0
  let mut b = 0
  while a < left.length() || b < right.length() {
    if b >= right.length() ||
      (a < left.length() && left[a].stamp.compare(right[b].stamp) <= 0) {
      result.push(left[a])
      a += 1
    } else {
      result.push(right[b])
      b += 1
    }
  }
  result
}
