///|
pub(all) struct PixelPoint {
  u : Double
  v : Double
} derive(Debug, ToJson)

///|
pub(all) struct NormalizedPoint {
  x : Double
  y : Double
} derive(Debug, ToJson)

///|
pub fn CameraIntrinsics::principal_point(
  self : CameraIntrinsics,
) -> PixelPoint raise VisionFormatError {
  if self.k.length() != 9 {
    raise VisionFormatError::InvalidShape("camera_matrix must contain 9 values")
  }
  { u: self.k[2], v: self.k[5] }
}

///|
pub fn CameraIntrinsics::normalize_pixel(
  self : CameraIntrinsics,
  pixel : PixelPoint,
) -> NormalizedPoint raise VisionFormatError {
  let (fx, fy) = focal_length_pair(self)
  if fx == 0.0 || fy == 0.0 {
    raise VisionFormatError::InvalidNumber("focal length must be non-zero")
  }
  let center = self.principal_point()
  { x: (pixel.u - center.u) / fx, y: (pixel.v - center.v) / fy }
}

///|
pub fn CameraIntrinsics::project_normalized(
  self : CameraIntrinsics,
  point : NormalizedPoint,
) -> PixelPoint raise VisionFormatError {
  let (fx, fy) = focal_length_pair(self)
  let center = self.principal_point()
  { u: point.x * fx + center.u, v: point.y * fy + center.v }
}

///|
pub fn CameraIntrinsics::has_identity_rectification(
  self : CameraIntrinsics,
  tolerance : Double,
) -> Bool {
  if self.r.length() != 9 {
    false
  } else {
    abs_double(self.r[0] - 1.0) <= tolerance &&
    abs_double(self.r[4] - 1.0) <= tolerance &&
    abs_double(self.r[8] - 1.0) <= tolerance &&
    abs_double(self.r[1]) <= tolerance &&
    abs_double(self.r[2]) <= tolerance &&
    abs_double(self.r[3]) <= tolerance &&
    abs_double(self.r[5]) <= tolerance &&
    abs_double(self.r[6]) <= tolerance &&
    abs_double(self.r[7]) <= tolerance
  }
}

///|
fn abs_double(value : Double) -> Double {
  if value < 0.0 {
    0.0 - value
  } else {
    value
  }
}

///|
pub fn CameraIntrinsics::aspect_ratio(
  self : CameraIntrinsics,
) -> Double raise VisionFormatError {
  if self.height <= 0 {
    raise VisionFormatError::InvalidShape("image height must be positive")
  }
  self.width.to_double() / self.height.to_double()
}
