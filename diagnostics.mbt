///|
pub(all) enum IssueSeverity {
  Info
  Warning
  Error
} derive(Debug, Eq, ToJson)

///|
pub(all) struct QualityIssue {
  severity : IssueSeverity
  source : String
  message : String
} derive(Debug, Eq, ToJson)

///|
pub(all) struct DatasetQualityReport {
  issues : Array[QualityIssue]
} derive(Debug, Eq, ToJson)

///|
fn issue(
  severity : IssueSeverity,
  source : String,
  message : String,
) -> QualityIssue {
  { severity, source, message }
}

///|
pub fn DatasetQualityReport::is_clean(self : DatasetQualityReport) -> Bool {
  self.issues.all(fn(item) { item.severity != Error })
}

///|
pub fn DatasetQualityReport::summary(self : DatasetQualityReport) -> String {
  let errors = self.issues.count_if(fn(item) { item.severity == Error })
  let warnings = self.issues.count_if(fn(item) { item.severity == Warning })
  let infos = self.issues.count_if(fn(item) { item.severity == Info })
  "errors=\{errors}, warnings=\{warnings}, info=\{infos}"
}

///|
pub fn inspect_stream_quality(
  images : ArrayView[ImageFrameRef],
  camera : CameraIntrinsics?,
  trajectory : ArrayView[TrajectorySample],
  depth : ArrayView[DepthMetadata],
  annotations : ArrayView[Annotation],
) -> DatasetQualityReport {
  let issues = Array::new()
  if images.is_empty() {
    issues.push(issue(Error, "image", "no image frames"))
  }
  if trajectory.is_empty() {
    issues.push(issue(Warning, "trajectory", "no trajectory samples"))
  }
  if depth.is_empty() {
    issues.push(issue(Info, "depth", "no depth metadata"))
  }
  match camera {
    Some(cam) => {
      if cam.width <= 0 || cam.height <= 0 {
        issues.push(issue(Error, "camera", "invalid image size"))
      }
      if cam.k.length() != 9 {
        issues.push(issue(Error, "camera", "camera_matrix must have 9 values"))
      }
      if cam.p.length() != 12 {
        issues.push(
          issue(Error, "camera", "projection_matrix must have 12 values"),
        )
      }
    }
    None => issues.push(issue(Warning, "camera", "missing camera calibration"))
  }
  for item in depth {
    validate_depth_metadata(item) catch {
      err => issues.push(issue(Error, "depth", "\{Repr(err)}"))
    }
  }
  for ann in annotations {
    if ann.confidence < 0.0 || ann.confidence > 1.0 {
      issues.push(issue(Error, "annotation", "confidence outside [0, 1]"))
    }
  }
  { issues, }
}

///|
pub fn[T] timestamp_span_ns(
  items : ArrayView[T],
  stamp_of : (T) -> Stamp,
) -> Int64 {
  if items.length() < 2 {
    0L
  } else {
    stamp_of(items[0]).delta_ns(stamp_of(items[items.length() - 1]))
  }
}
