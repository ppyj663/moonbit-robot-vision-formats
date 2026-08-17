///|
pub(all) struct QualityThresholds {
  max_gap_ns : Int64
  min_confidence : Double
  max_confidence : Double
  min_depth : Double
  max_depth : Double
  require_camera : Bool
} derive(Debug, ToJson)

///|
pub fn default_quality_thresholds() -> QualityThresholds {
  {
    max_gap_ns: 1000000000L,
    min_confidence: 0.0,
    max_confidence: 1.0,
    min_depth: 0.0,
    max_depth: 100.0,
    require_camera: true,
  }
}

///|
pub(all) enum QualityRuleCode {
  EmptyStream
  NonMonotonic
  LargeTimestampGap
  InvalidDimensions
  InvalidRange
  MissingCalibration
  LowConfidence
  OutOfBounds
  SparseStream
} derive(Debug, Eq, ToJson)

///|
fn quality_rule_code_name(code : QualityRuleCode) -> String {
  match code {
    EmptyStream => "empty_stream"
    NonMonotonic => "non_monotonic"
    LargeTimestampGap => "large_timestamp_gap"
    InvalidDimensions => "invalid_dimensions"
    InvalidRange => "invalid_range"
    MissingCalibration => "missing_calibration"
    LowConfidence => "low_confidence"
    OutOfBounds => "out_of_bounds"
    SparseStream => "sparse_stream"
  }
}

///|
pub(all) struct RuleViolation {
  code : QualityRuleCode
  source : String
  row : Int
  detail : String
} derive(Debug, ToJson)

///|
pub fn validate_image_stream(
  frames : ArrayView[ImageFrameRef],
  thresholds : QualityThresholds,
) -> Array[RuleViolation] {
  let result = Array::new()
  if frames.is_empty() {
    result.push({
      code: EmptyStream,
      source: "images",
      row: 0,
      detail: "no frames",
    })
    return result
  }
  for i in 1..<frames.length() {
    let gap = frames[i].stamp.to_nanoseconds() -
      frames[i - 1].stamp.to_nanoseconds()
    if gap < 0L {
      result.push({
        code: NonMonotonic,
        source: "images",
        row: i,
        detail: "timestamp moved backwards",
      })
    }
    if gap > thresholds.max_gap_ns {
      result.push({
        code: LargeTimestampGap,
        source: "images",
        row: i,
        detail: "timestamp gap exceeds threshold",
      })
    }
  }
  result
}

///|
pub fn validate_trajectory_stream(
  samples : ArrayView[TrajectorySample],
  thresholds : QualityThresholds,
) -> Array[RuleViolation] {
  let result = Array::new()
  if samples.is_empty() {
    result.push({
      code: EmptyStream,
      source: "trajectory",
      row: 0,
      detail: "no samples",
    })
    return result
  }
  for i, sample in samples {
    if sample.frame_id.is_empty() {
      result.push({
        code: InvalidRange,
        source: "trajectory",
        row: i,
        detail: "empty frame id",
      })
    }
    if i > 0 && sample.stamp.compare(samples[i - 1].stamp) < 0 {
      result.push({
        code: NonMonotonic,
        source: "trajectory",
        row: i,
        detail: "timestamp moved backwards",
      })
    }
    if i > 0 &&
      sample.stamp.to_nanoseconds() - samples[i - 1].stamp.to_nanoseconds() >
      thresholds.max_gap_ns {
      result.push({
        code: LargeTimestampGap,
        source: "trajectory",
        row: i,
        detail: "timestamp gap exceeds threshold",
      })
    }
  }
  result
}

///|
pub fn validate_depth_stream(
  samples : ArrayView[DepthMetadata],
  thresholds : QualityThresholds,
) -> Array[RuleViolation] {
  let result = Array::new()
  if samples.is_empty() {
    result.push({
      code: EmptyStream,
      source: "depth",
      row: 0,
      detail: "no samples",
    })
    return result
  }
  for i, sample in samples {
    if sample.width <= 0 || sample.height <= 0 {
      result.push({
        code: InvalidDimensions,
        source: "depth",
        row: i,
        detail: "dimensions must be positive",
      })
    }
    if sample.min_depth < thresholds.min_depth ||
      sample.max_depth > thresholds.max_depth ||
      sample.min_depth > sample.max_depth {
      result.push({
        code: InvalidRange,
        source: "depth",
        row: i,
        detail: "depth range violates policy",
      })
    }
  }
  result
}

///|
pub fn validate_annotation_stream(
  annotations : ArrayView[Annotation],
  image_width : Int,
  image_height : Int,
  thresholds : QualityThresholds,
) -> Array[RuleViolation] {
  let result = Array::new()
  if annotations.is_empty() {
    result.push({
      code: EmptyStream,
      source: "annotations",
      row: 0,
      detail: "no annotations",
    })
    return result
  }
  for i, annotation in annotations {
    if annotation.confidence < thresholds.min_confidence {
      result.push({
        code: LowConfidence,
        source: "annotations",
        row: i,
        detail: "confidence below threshold",
      })
    }
    if annotation.confidence > thresholds.max_confidence {
      result.push({
        code: InvalidRange,
        source: "annotations",
        row: i,
        detail: "confidence above threshold",
      })
    }
    if !annotation.bbox.is_inside_image(image_width, image_height) {
      result.push({
        code: OutOfBounds,
        source: "annotations",
        row: i,
        detail: "box outside image",
      })
    }
  }
  result
}

///|
pub fn validate_camera(
  camera : CameraIntrinsics?,
  thresholds : QualityThresholds,
) -> Array[RuleViolation] {
  let result = Array::new()
  match camera {
    None =>
      if thresholds.require_camera {
        result.push({
          code: MissingCalibration,
          source: "camera",
          row: 0,
          detail: "camera calibration is required",
        })
      }
    Some(value) => {
      if value.width <= 0 || value.height <= 0 {
        result.push({
          code: InvalidDimensions,
          source: "camera",
          row: 0,
          detail: "image dimensions must be positive",
        })
      }
      if value.k.length() != 9 || value.p.length() != 12 {
        result.push({
          code: InvalidRange,
          source: "camera",
          row: 0,
          detail: "matrix shape is invalid",
        })
      }
    }
  }
  result
}

///|
pub fn violations_to_markdown(violations : ArrayView[RuleViolation]) -> String {
  let rows = ["| source | row | code | detail |", "|---|---:|---|---|"]
  for violation in violations {
    rows.push(
      "| \{violation.source} | \{violation.row} | \{quality_rule_code_name(violation.code)} | \{violation.detail} |",
    )
  }
  rows.join("\n")
}

///|
pub fn violations_by_code(
  violations : ArrayView[RuleViolation],
) -> Map[String, Int] {
  let result : Map[String, Int] = Map([])
  for violation in violations {
    let key = quality_rule_code_name(violation.code)
    if result.contains(key) {
      result[key] = result[key] + 1
    } else {
      result[key] = 1
    }
  }
  result
}

///|
pub fn quality_score(violations : ArrayView[RuleViolation]) -> Double {
  let mut score = 100.0
  for violation in violations {
    score -= match violation.code {
      EmptyStream => 30.0
      InvalidDimensions => 15.0
      InvalidRange => 10.0
      MissingCalibration => 15.0
      NonMonotonic => 8.0
      LargeTimestampGap => 4.0
      LowConfidence => 2.0
      OutOfBounds => 5.0
      SparseStream => 3.0
    }
  }
  if score < 0.0 {
    0.0
  } else {
    score
  }
}
