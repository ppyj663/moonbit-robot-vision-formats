///|
fn yaml_value(lines : Array[String], key : String) -> String? {
  let prefix = key + ":"
  for line in lines {
    if line.has_prefix(prefix) {
      return Some(line.strip_prefix(prefix).unwrap().trim().to_owned())
    }
  }
  None
}

///|
fn require_yaml_value(
  lines : Array[String],
  key : String,
) -> String raise VisionFormatError {
  match yaml_value(lines, key) {
    Some(value) => value
    None => raise VisionFormatError::MissingField(key)
  }
}

///|
fn parse_yaml_number_list(
  lines : Array[String],
  key : String,
  expected : Int,
) -> Array[Double] raise VisionFormatError {
  let raw = require_yaml_value(lines, key)
  let clean = raw.replace(old="[", new="").replace(old="]", new="")
  let values = Array::new()
  for part in clean.split(",") {
    let item = part.trim()
    if !item.is_empty() {
      values.push(parse_double_field(item, key))
    }
  }
  if values.length() != expected {
    raise VisionFormatError::InvalidShape(
      "\{key} expected \{expected}, got \{values.length()}",
    )
  }
  values
}

///|
pub fn parse_camera_info_yaml(
  text : String,
) -> CameraIntrinsics raise VisionFormatError {
  let lines = non_empty_lines(text)
  if lines.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  {
    width: parse_int_field(
      require_yaml_value(lines, "image_width")[:],
      "image_width",
    ),
    height: parse_int_field(
      require_yaml_value(lines, "image_height")[:],
      "image_height",
    ),
    distortion_model: require_yaml_value(lines, "distortion_model").replace(
      old="\"",
      new="",
    ),
    k: parse_yaml_number_list(lines, "camera_matrix", 9),
    d: parse_yaml_number_list(lines, "distortion_coefficients", 5),
    r: parse_yaml_number_list(lines, "rectification_matrix", 9),
    p: parse_yaml_number_list(lines, "projection_matrix", 12),
  }
}

///|
pub fn camera_info_to_yaml(camera : CameraIntrinsics) -> String {
  [
    "image_width: \{camera.width}",
    "image_height: \{camera.height}",
    "distortion_model: \{camera.distortion_model}",
    "camera_matrix: [\{camera.k.map(fn(v) { v.to_string() }).join(", ")}]",
    "distortion_coefficients: [\{camera.d.map(fn(v) { v.to_string() }).join(", ")}]",
    "rectification_matrix: [\{camera.r.map(fn(v) { v.to_string() }).join(", ")}]",
    "projection_matrix: [\{camera.p.map(fn(v) { v.to_string() }).join(", ")}]",
  ].join("\n")
}

///|
pub fn focal_length_pair(
  camera : CameraIntrinsics,
) -> (Double, Double) raise VisionFormatError {
  if camera.k.length() != 9 {
    raise VisionFormatError::InvalidShape("camera_matrix must contain 9 values")
  }
  (camera.k[0], camera.k[4])
}
