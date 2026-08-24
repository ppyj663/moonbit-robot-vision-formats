///|
pub(all) struct FrameGroup {
  frame_id : String
  mut count : Int
  first : Stamp
  mut last : Stamp
  paths : Array[String]
} derive(Debug, ToJson)

///|
pub fn group_images_by_frame(
  frames : ArrayView[ImageFrameRef],
) -> Array[FrameGroup] {
  let groups : Array[FrameGroup] = []
  for frame in frames {
    let mut index : Int? = None
    for i in 0..<groups.length() {
      if groups[i].frame_id == frame.frame_id {
        index = Some(i)
        break
      }
    }
    match index {
      Some(i) => {
        groups[i].count += 1
        groups[i].last = frame.stamp
        groups[i].paths.push(frame.path)
      }
      None =>
        groups.push({
          frame_id: frame.frame_id,
          count: 1,
          first: frame.stamp,
          last: frame.stamp,
          paths: [frame.path],
        })
    }
  }
  groups
}

///|
pub fn image_paths_for_frame(
  frames : ArrayView[ImageFrameRef],
  frame_id : String,
) -> Array[String] {
  frames.filter_map(fn(frame) {
    if frame.frame_id == frame_id {
      Some(frame.path)
    } else {
      None
    }
  })
}

///|
pub fn image_frame_ids(frames : ArrayView[ImageFrameRef]) -> Array[String] {
  let result = Array::new()
  for frame in frames {
    if !result.contains(frame.frame_id) {
      result.push(frame.frame_id)
    }
  }
  result
}

///|
pub fn filter_images_by_extension(
  frames : ArrayView[ImageFrameRef],
  extension : String,
) -> Array[ImageFrameRef] {
  frames.filter(fn(frame) {
    frame.path.to_lower().has_suffix(extension.to_lower())
  })
}

///|
pub fn image_index_duration_ns(frames : ArrayView[ImageFrameRef]) -> Int64 {
  timestamp_span_ns(frames, fn(frame) { frame.stamp })
}

///|
pub fn image_rate_hz(frames : ArrayView[ImageFrameRef]) -> Double {
  let duration = image_index_duration_ns(frames)
  if duration <= 0L {
    0.0
  } else {
    (frames.length() - 1).to_double() * 1000000000.0 / duration.to_double()
  }
}

///|
pub fn image_index_is_complete(
  frames : ArrayView[ImageFrameRef],
  expected_period : Int64,
  tolerance : Int64,
) -> Bool {
  if frames.is_empty() || expected_period <= 0L {
    false
  } else {
    image_periods_ns(frames).all(fn(period) {
      abs_i64(period - expected_period) <= tolerance
    })
  }
}
