///|
pub(all) enum CameraIssue {
  InvalidDimensions
  InvalidIntrinsicMatrix
  InvalidProjectionMatrix
  InvalidRectificationMatrix
  NonPositiveFocalLength
  EmptyDistortionModel
} derive(Debug, Eq)

///|
pub fn camera_diagnostics(camera : CameraIntrinsics) -> Array[CameraIssue] {
  let issues = Array::new()
  if camera.width <= 0 || camera.height <= 0 {
    issues.push(CameraIssue::InvalidDimensions)
  }
  if camera.k.length() != 9 {
    issues.push(CameraIssue::InvalidIntrinsicMatrix)
  } else if camera.k[0] <= 0.0 || camera.k[4] <= 0.0 {
    issues.push(CameraIssue::NonPositiveFocalLength)
  }
  if camera.p.length() != 12 {
    issues.push(CameraIssue::InvalidProjectionMatrix)
  }
  if camera.r.length() != 9 {
    issues.push(CameraIssue::InvalidRectificationMatrix)
  }
  if camera.distortion_model.trim().is_empty() {
    issues.push(CameraIssue::EmptyDistortionModel)
  }
  issues
}

///|
pub fn camera_is_usable(camera : CameraIntrinsics) -> Bool {
  camera_diagnostics(camera).is_empty()
}

///|
pub fn camera_pixel_is_inside(
  camera : CameraIntrinsics,
  pixel : PixelPoint,
) -> Bool {
  pixel.u >= 0.0 &&
  pixel.v >= 0.0 &&
  pixel.u < camera.width.to_double() &&
  pixel.v < camera.height.to_double()
}

///|
pub fn camera_normalized_round_trip_error(
  camera : CameraIntrinsics,
  point : NormalizedPoint,
) -> Double raise VisionFormatError {
  let pixel = camera.project_normalized(point)
  let recovered = camera.normalize_pixel(pixel)
  let dx = recovered.x - point.x
  let dy = recovered.y - point.y
  abs_double(dx) + abs_double(dy)
}

///|
pub fn camera_projection_center(camera : CameraIntrinsics) -> PixelPoint {
  if camera.p.length() == 12 {
    { u: camera.p[2], v: camera.p[6] }
  } else if camera.k.length() == 9 {
    { u: camera.k[2], v: camera.k[5] }
  } else {
    { u: 0.0, v: 0.0 }
  }
}
