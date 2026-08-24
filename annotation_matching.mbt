///|
pub(all) struct LabelSummary {
  label : String
  count : Int
  mean_confidence : Double
  total_area : Double
} derive(Debug, ToJson)

///|
pub fn summarize_labels(
  annotations : ArrayView[Annotation],
) -> Array[LabelSummary] {
  let labels : Array[String] = []
  for annotation in annotations {
    if !labels.contains(annotation.label) {
      labels.push(annotation.label)
    }
  }
  labels.map(fn(label) {
    let selected = annotations.filter(fn(item) { item.label == label })
    let confidence = selected.map(fn(item) { item.confidence })
    let areas = selected.map(fn(item) { item.bbox.area() })
    let confidence_stats = numeric_summary(confidence)
    {
      label,
      count: selected.length(),
      mean_confidence: confidence_stats.mean,
      total_area: areas.fold(init=0.0, fn(total, value) { total + value }),
    }
  })
}

///|
pub fn annotations_for_label(
  annotations : ArrayView[Annotation],
  label : String,
) -> Array[Annotation] {
  annotations.filter(fn(annotation) { annotation.label == label })
}

///|
pub fn annotations_in_region(
  annotations : ArrayView[Annotation],
  region : BoundingBox,
) -> Array[Annotation] {
  annotations.filter(fn(annotation) {
    annotation.bbox.intersection_area(region) > 0.0
  })
}

///|
pub fn annotations_at_stamp(
  annotations : ArrayView[Annotation],
  stamp : Stamp,
  tolerance_ns : Int64,
) -> Array[Annotation] {
  annotations.filter(fn(annotation) {
    abs_i64(annotation.stamp.to_nanoseconds() - stamp.to_nanoseconds()) <=
    tolerance_ns
  })
}

///|
pub fn greedy_non_max_suppression(
  annotations : ArrayView[Annotation],
  iou_threshold : Double,
) -> Array[Annotation] {
  let ordered = annotations.to_owned()
  ordered.sort_by(fn(a, b) { b.confidence.compare(a.confidence) })
  let selected : Array[Annotation] = []
  for candidate in ordered {
    if selected.all(fn(previous) {
        previous.label != candidate.label ||
        previous.bbox.iou(candidate.bbox) < iou_threshold
      }) {
      selected.push(candidate)
    }
  }
  selected
}

///|
pub fn annotation_centroid(annotation : Annotation) -> Point2D {
  {
    x: annotation.bbox.x + annotation.bbox.width / 2.0,
    y: annotation.bbox.y + annotation.bbox.height / 2.0,
  }
}

///|
pub fn annotation_centroids(
  annotations : ArrayView[Annotation],
) -> Array[Point2D] {
  annotations.map(annotation_centroid)
}

///|
pub fn annotation_density(
  annotations : ArrayView[Annotation],
  width : Int,
  height : Int,
) -> Double {
  let area = width.to_double() * height.to_double()
  if area <= 0.0 {
    0.0
  } else {
    annotations.fold(init=0.0, fn(total, annotation) {
      total + annotation.bbox.area()
    }) /
    area
  }
}

///|
pub fn validate_label_name(label : String) -> Bool {
  if label.is_empty() {
    false
  } else {
    label.trim() == label &&
    !label.contains(" ") &&
    !label.contains("\t") &&
    !label.contains(",")
  }
}

///|
pub fn invalid_label_names(
  annotations : ArrayView[Annotation],
) -> Array[String] {
  let result = Array::new()
  for annotation in annotations {
    if !validate_label_name(annotation.label) &&
      !result.contains(annotation.label) {
      result.push(annotation.label)
    }
  }
  result
}
