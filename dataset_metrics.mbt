///|
pub(all) struct NumericSummary {
  count : Int
  min : Double
  max : Double
  mean : Double
  variance : Double
} derive(Debug, ToJson)

///|
pub fn numeric_summary(values : ArrayView[Double]) -> NumericSummary {
  if values.is_empty() {
    return { count: 0, min: 0.0, max: 0.0, mean: 0.0, variance: 0.0 }
  }
  let mut min_value = values[0]
  let mut max_value = values[0]
  let mut sum = 0.0
  for value in values {
    if value < min_value {
      min_value = value
    }
    if value > max_value {
      max_value = value
    }
    sum += value
  }
  let mean = sum / values.length().to_double()
  let mut squared = 0.0
  for value in values {
    let delta = value - mean
    squared += delta * delta
  }
  {
    count: values.length(),
    min: min_value,
    max: max_value,
    mean,
    variance: squared / values.length().to_double(),
  }
}

///|
pub fn percentile(
  values : ArrayView[Double],
  fraction : Double,
) -> Double raise VisionFormatError {
  if values.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  if fraction < 0.0 || fraction > 1.0 {
    raise VisionFormatError::InvalidNumber("percentile must be in [0, 1]")
  }
  let sorted = values.to_owned()
  sorted.sort()
  let index = fraction * (sorted.length() - 1).to_double()
  let low = index.to_int()
  let high = if low + 1 < sorted.length() { low + 1 } else { low }
  sorted[low] + (sorted[high] - sorted[low]) * (index - low.to_double())
}

///|
pub fn median(values : ArrayView[Double]) -> Double raise VisionFormatError {
  percentile(values, 0.5)
}

///|
pub fn mean_absolute_error(
  actual : ArrayView[Double],
  predicted : ArrayView[Double],
) -> Double raise VisionFormatError {
  if actual.length() != predicted.length() {
    raise VisionFormatError::InvalidShape(
      "metric vectors must have equal length",
    )
  }
  if actual.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  let mut total = 0.0
  for i in 0..<actual.length() {
    let error = actual[i] - predicted[i]
    total += if error < 0.0 { 0.0 - error } else { error }
  }
  total / actual.length().to_double()
}

///|
pub fn root_mean_square_error(
  actual : ArrayView[Double],
  predicted : ArrayView[Double],
) -> Double raise VisionFormatError {
  if actual.length() != predicted.length() || actual.is_empty() {
    raise VisionFormatError::InvalidShape(
      "metric vectors must have equal non-zero length",
    )
  }
  let mut total = 0.0
  for i in 0..<actual.length() {
    let error = actual[i] - predicted[i]
    total += error * error
  }
  (total / actual.length().to_double()).sqrt()
}

///|
pub fn precision_recall_f1(
  true_positive : Int,
  false_positive : Int,
  false_negative : Int,
) -> (Double, Double, Double) {
  let precision = if true_positive + false_positive == 0 {
    0.0
  } else {
    true_positive.to_double() / (true_positive + false_positive).to_double()
  }
  let recall = if true_positive + false_negative == 0 {
    0.0
  } else {
    true_positive.to_double() / (true_positive + false_negative).to_double()
  }
  let f1 = if precision + recall == 0.0 {
    0.0
  } else {
    2.0 * precision * recall / (precision + recall)
  }
  (precision, recall, f1)
}

///|
pub fn average_precision_at_iou(
  predictions : ArrayView[BoundingBox],
  ground_truth : ArrayView[BoundingBox],
  threshold : Double,
) -> Double {
  if ground_truth.is_empty() {
    return 0.0
  }
  let mut matched = 0
  let used : Array[Bool] = Array::make(ground_truth.length(), false)
  for prediction in predictions {
    let mut best = -1
    let mut best_iou = threshold
    for i in 0..<ground_truth.length() {
      let score = prediction.iou(ground_truth[i])
      if !used[i] && score >= best_iou {
        best = i
        best_iou = score
      }
    }
    if best >= 0 {
      used[best] = true
      matched += 1
    }
  }
  matched.to_double() / predictions.length().to_double()
}

///|
pub fn box_recall_at_iou(
  predictions : ArrayView[BoundingBox],
  ground_truth : ArrayView[BoundingBox],
  threshold : Double,
) -> Double {
  if ground_truth.is_empty() {
    return 1.0
  }
  let mut count = 0
  for target in ground_truth {
    if predictions.any(fn(candidate) { candidate.iou(target) >= threshold }) {
      count += 1
    }
  }
  count.to_double() / ground_truth.length().to_double()
}

///|
pub fn annotation_area_histogram(
  annotations : ArrayView[Annotation],
  bins : Int,
) -> Array[Int] {
  let result : Array[Int] = Array::make(if bins > 0 { bins } else { 0 }, 0)
  if bins <= 0 {
    return result
  }
  for annotation in annotations {
    let area = annotation.bbox.area()
    let index = if area.to_int() >= bins { bins - 1 } else { area.to_int() }
    result[index] += 1
  }
  result
}

///|
pub fn label_counts(annotations : ArrayView[Annotation]) -> Map[String, Int] {
  let result : Map[String, Int] = Map([])
  for annotation in annotations {
    if result.contains(annotation.label) {
      result[annotation.label] = result[annotation.label] + 1
    } else {
      result[annotation.label] = 1
    }
  }
  result
}

///|
pub fn confidence_summary(
  annotations : ArrayView[Annotation],
) -> NumericSummary {
  let values = annotations.map(fn(annotation) { annotation.confidence })
  numeric_summary(values)
}
