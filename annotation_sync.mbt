///|
pub fn parse_annotation_csv(
  text : String,
) -> Array[Annotation] raise VisionFormatError {
  let lines = non_empty_lines(text)
  if lines.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  let start = if lines[0].to_lower().contains("label") { 1 } else { 0 }
  let annotations = Array::new()
  for i in start..<lines.length() {
    let row = split_csv_line(lines[i])
    require_columns(row, 9, "annotation row \{i + 1}")
    annotations.push({
      stamp: parse_stamp(row[0][:], row[1][:]),
      frame_id: row[2],
      label: row[3],
      bbox: {
        x: parse_double_field(row[4][:], "bbox_x"),
        y: parse_double_field(row[5][:], "bbox_y"),
        width: parse_double_field(row[6][:], "bbox_width"),
        height: parse_double_field(row[7][:], "bbox_height"),
      },
      confidence: parse_double_field(row[8][:], "confidence"),
    })
  }
  ensure_monotonic(
    annotations,
    fn(annotation) { annotation.stamp },
    "annotations",
  )
  annotations
}

///|
pub fn annotations_to_csv(annotations : ArrayView[Annotation]) -> String {
  let rows = ["sec,nsec,frame_id,label,x,y,width,height,confidence"]
  for item in annotations {
    rows.push(
      "\{item.stamp.sec},\{item.stamp.nsec},\{item.frame_id},\{item.label},\{item.bbox.x},\{item.bbox.y},\{item.bbox.width},\{item.bbox.height},\{item.confidence}",
    )
  }
  rows.join("\n")
}

///|
fn[T] nearest_by_stamp(
  stamp : Stamp,
  items : ArrayView[T],
  stamp_of : (T) -> Stamp,
  tolerance_ns : Int64,
) -> (T, Int64)? {
  let mut best : T? = None
  let mut best_offset = tolerance_ns + 1L
  for item in items {
    let offset = abs_i64(
      stamp.to_nanoseconds() - stamp_of(item).to_nanoseconds(),
    )
    if offset <= tolerance_ns && offset < best_offset {
      best = Some(item)
      best_offset = offset
    }
  }
  match best {
    Some(item) => Some((item, best_offset))
    None => None
  }
}

///|
fn annotations_near(
  stamp : Stamp,
  annotations : ArrayView[Annotation],
  tolerance_ns : Int64,
) -> (Array[Annotation], Int64) {
  let found = Array::new()
  let mut max_offset = 0L
  for item in annotations {
    let offset = abs_i64(stamp.to_nanoseconds() - item.stamp.to_nanoseconds())
    if offset <= tolerance_ns {
      found.push(item)
      if offset > max_offset {
        max_offset = offset
      }
    }
  }
  (found, max_offset)
}

///|
pub fn synchronize(
  images : ArrayView[ImageFrameRef],
  trajectory : ArrayView[TrajectorySample],
  depth : ArrayView[DepthMetadata],
  annotations : ArrayView[Annotation],
  tolerance_ns~ : Int64,
) -> SyncReport {
  let matches = Array::new()
  let unmatched_images = Array::new()
  let unmatched_trajectory = trajectory.to_owned()
  let unmatched_depth = depth.to_owned()
  let unmatched_annotations = annotations.to_owned()
  for image in images {
    let traj = nearest_by_stamp(
      image.stamp,
      trajectory,
      fn(item) { item.stamp },
      tolerance_ns,
    )
    let dep = nearest_by_stamp(
      image.stamp,
      depth,
      fn(item) { item.stamp },
      tolerance_ns,
    )
    let (anns, ann_offset) = annotations_near(
      image.stamp,
      annotations,
      tolerance_ns,
    )
    let mut max_offset = ann_offset
    let traj_item = match traj {
      Some((item, offset)) => {
        if offset > max_offset {
          max_offset = offset
        }
        unmatched_trajectory.retain(fn(sample) { sample.stamp != item.stamp })
        Some(item)
      }
      None => None
    }
    let depth_item = match dep {
      Some((item, offset)) => {
        if offset > max_offset {
          max_offset = offset
        }
        unmatched_depth.retain(fn(sample) { sample.stamp != item.stamp })
        Some(item)
      }
      None => None
    }
    for ann in anns {
      unmatched_annotations.retain(fn(item) {
        item.stamp != ann.stamp || item.label != ann.label
      })
    }
    if traj_item is None && depth_item is None && anns.is_empty() {
      unmatched_images.push(image)
    } else {
      matches.push({
        image,
        trajectory: traj_item,
        depth: depth_item,
        annotations: anns,
        max_abs_offset_ns: max_offset,
      })
    }
  }
  {
    matches,
    unmatched_images,
    unmatched_trajectory,
    unmatched_depth,
    unmatched_annotations,
  }
}

///|
pub fn sync_report_summary(report : SyncReport) -> String {
  [
    "matches=\{report.matches.length()}",
    "unmatched_images=\{report.unmatched_images.length()}",
    "unmatched_trajectory=\{report.unmatched_trajectory.length()}",
    "unmatched_depth=\{report.unmatched_depth.length()}",
    "unmatched_annotations=\{report.unmatched_annotations.length()}",
  ].join(", ")
}
