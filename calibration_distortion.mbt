///|
pub(all) struct DistortedPoint {
  x : Double
  y : Double
} derive(Debug, ToJson)

///|
pub(all) struct DistortionCoefficients {
  k1 : Double
  k2 : Double
  p1 : Double
  p2 : Double
  k3 : Double
} derive(Debug, ToJson)

///|
pub fn distortion_coefficients(
  camera : CameraIntrinsics,
) -> DistortionCoefficients {
  {
    k1: if camera.d.length() > 0 {
      camera.d[0]
    } else {
      0.0
    },
    k2: if camera.d.length() > 1 {
      camera.d[1]
    } else {
      0.0
    },
    p1: if camera.d.length() > 2 {
      camera.d[2]
    } else {
      0.0
    },
    p2: if camera.d.length() > 3 {
      camera.d[3]
    } else {
      0.0
    },
    k3: if camera.d.length() > 4 {
      camera.d[4]
    } else {
      0.0
    },
  }
}

///|
pub fn distort_normalized(
  point : NormalizedPoint,
  coefficients : DistortionCoefficients,
) -> DistortedPoint {
  let r2 = point.x * point.x + point.y * point.y
  let radial = 1.0 +
    coefficients.k1 * r2 +
    coefficients.k2 * r2 * r2 +
    coefficients.k3 * r2 * r2 * r2
  {
    x: point.x * radial +
    2.0 * coefficients.p1 * point.x * point.y +
    coefficients.p2 * (r2 + 2.0 * point.x * point.x),
    y: point.y * radial +
    coefficients.p1 * (r2 + 2.0 * point.y * point.y) +
    2.0 * coefficients.p2 * point.x * point.y,
  }
}

///|
pub fn undistort_normalized(
  point : DistortedPoint,
  coefficients : DistortionCoefficients,
  iterations : Int,
) -> NormalizedPoint {
  let mut estimate : NormalizedPoint = { x: point.x, y: point.y }
  let count = if iterations < 0 { 0 } else { iterations }
  for _ in 0..<count {
    let projected = distort_normalized(estimate, coefficients)
    estimate = {
      x: estimate.x + point.x - projected.x,
      y: estimate.y + point.y - projected.y,
    }
  }
  estimate
}

///|
pub fn project_distorted(
  camera : CameraIntrinsics,
  point : NormalizedPoint,
) -> PixelPoint raise VisionFormatError {
  let coefficients = distortion_coefficients(camera)
  let distorted = distort_normalized(point, coefficients)
  let (fx, fy) = focal_length_pair(camera)
  let center = camera.principal_point()
  { u: distorted.x * fx + center.u, v: distorted.y * fy + center.v }
}

///|
pub fn unproject_distorted(
  camera : CameraIntrinsics,
  pixel : PixelPoint,
  iterations : Int,
) -> NormalizedPoint raise VisionFormatError {
  let normalized = camera.normalize_pixel(pixel)
  let coefficients = distortion_coefficients(camera)
  undistort_normalized(
    { x: normalized.x, y: normalized.y },
    coefficients,
    iterations,
  )
}

///|
pub fn camera_matrix_determinant(
  camera : CameraIntrinsics,
) -> Double raise VisionFormatError {
  if camera.k.length() != 9 {
    raise VisionFormatError::InvalidShape("camera_matrix must contain 9 values")
  }
  camera.k[0] * (camera.k[4] * camera.k[8] - camera.k[5] * camera.k[7]) -
  camera.k[1] * (camera.k[3] * camera.k[8] - camera.k[5] * camera.k[6]) +
  camera.k[2] * (camera.k[3] * camera.k[7] - camera.k[4] * camera.k[6])
}

///|
pub fn camera_is_well_conditioned(
  camera : CameraIntrinsics,
  epsilon : Double,
) -> Bool raise VisionFormatError {
  let determinant = camera_matrix_determinant(camera)
  if determinant < 0.0 {
    0.0 - determinant > epsilon
  } else {
    determinant > epsilon
  }
}
