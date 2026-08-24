///|
pub(all) enum SyncFramePolicy {
  IgnoreFrameId
  RequireSameFrameId
} derive(Debug, Eq)

///|
fn frame_ids_compatible(
  left : String,
  right : String,
  policy : SyncFramePolicy,
) -> Bool {
  match policy {
    IgnoreFrameId => true
    RequireSameFrameId => left == right
  }
}

///|
pub fn image_trajectory_is_compatible(
  image : ImageFrameRef,
  sample : TrajectorySample,
  tolerance_ns : Int64,
  policy : SyncFramePolicy,
) -> Bool {
  frame_ids_compatible(image.frame_id, sample.frame_id, policy) &&
  abs_i64(image.stamp.to_nanoseconds() - sample.stamp.to_nanoseconds()) <=
  tolerance_ns
}

///|
pub fn image_depth_is_compatible(
  image : ImageFrameRef,
  sample : DepthMetadata,
  tolerance_ns : Int64,
  policy : SyncFramePolicy,
) -> Bool {
  frame_ids_compatible(image.frame_id, sample.frame_id, policy) &&
  abs_i64(image.stamp.to_nanoseconds() - sample.stamp.to_nanoseconds()) <=
  tolerance_ns
}

///|
pub fn nearest_trajectory_for_image(
  image : ImageFrameRef,
  samples : ArrayView[TrajectorySample],
  tolerance_ns : Int64,
  policy : SyncFramePolicy,
) -> TrajectorySample? {
  let mut result : TrajectorySample? = None
  let mut best_offset = tolerance_ns + 1L
  for sample in samples {
    let offset = abs_i64(
      image.stamp.to_nanoseconds() - sample.stamp.to_nanoseconds(),
    )
    if offset <= tolerance_ns &&
      offset < best_offset &&
      frame_ids_compatible(image.frame_id, sample.frame_id, policy) {
      result = Some(sample)
      best_offset = offset
    }
  }
  result
}

///|
pub fn annotations_for_image(
  image : ImageFrameRef,
  annotations : ArrayView[Annotation],
  tolerance_ns : Int64,
  policy : SyncFramePolicy,
) -> Array[Annotation] {
  annotations.filter(fn(annotation) {
    frame_ids_compatible(image.frame_id, annotation.frame_id, policy) &&
    abs_i64(image.stamp.to_nanoseconds() - annotation.stamp.to_nanoseconds()) <=
    tolerance_ns
  })
}

///|
pub fn sync_report_max_offset(report : SyncReport) -> Int64 {
  let mut result = 0L
  for item in report.matches {
    if item.max_abs_offset_ns > result {
      result = item.max_abs_offset_ns
    }
  }
  result
}

///|
pub fn sync_report_is_complete(report : SyncReport) -> Bool {
  report.unmatched_images.is_empty() &&
  report.unmatched_trajectory.is_empty() &&
  report.unmatched_depth.is_empty() &&
  report.unmatched_annotations.is_empty()
}
