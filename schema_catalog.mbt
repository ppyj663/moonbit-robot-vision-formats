///|
pub(all) enum FieldKind {
  IntField
  FloatField
  StringField
  StampField
  PathField
} derive(Debug, Eq, ToJson)

///|
pub(all) struct FieldSpec {
  name : String
  kind : FieldKind
  required : Bool
  note : String
} derive(Debug, Eq, ToJson)

///|
pub(all) struct FormatSpec {
  name : String
  media_type : String
  fields : Array[FieldSpec]
  description : String
} derive(Debug, Eq, ToJson)

///|
fn field(name : String, kind : FieldKind, note : String) -> FieldSpec {
  { name, kind, required: true, note }
}

///|
pub fn image_index_spec() -> FormatSpec {
  {
    name: "image-index-csv",
    media_type: "text/csv",
    fields: [
      field("sec", IntField, "whole seconds from the export clock"),
      field("nsec", IntField, "nanosecond fraction in [0, 1e9)"),
      field("frame_id", StringField, "source optical or camera frame"),
      field("path", PathField, "relative path to the image payload"),
    ],
    description: "Timestamped image references exported from a bag extraction job.",
  }
}

///|
pub fn camera_info_spec() -> FormatSpec {
  {
    name: "camera-info-yaml",
    media_type: "application/x-yaml",
    fields: [
      field("image_width", IntField, "calibrated image width"),
      field("image_height", IntField, "calibrated image height"),
      field("distortion_model", StringField, "ROS CameraInfo distortion model"),
      field("camera_matrix", FloatField, "flattened 3x3 K matrix"),
      field(
        "distortion_coefficients",
        FloatField,
        "five coefficient plumb_bob vector",
      ),
      field("rectification_matrix", FloatField, "flattened 3x3 R matrix"),
      field("projection_matrix", FloatField, "flattened 3x4 P matrix"),
    ],
    description: "Portable subset of sensor_msgs/CameraInfo YAML dumps.",
  }
}

///|
pub fn trajectory_spec() -> FormatSpec {
  {
    name: "trajectory-2d-csv",
    media_type: "text/csv",
    fields: [
      field("sec", IntField, "whole seconds from the export clock"),
      field("nsec", IntField, "nanosecond fraction in [0, 1e9)"),
      field("frame_id", StringField, "pose reference frame"),
      field("x", FloatField, "planar x coordinate"),
      field("y", FloatField, "planar y coordinate"),
      field("theta", FloatField, "heading in radians"),
    ],
    description: "Timestamped planar trajectory samples for dataset alignment.",
  }
}

///|
pub fn depth_metadata_spec() -> FormatSpec {
  {
    name: "depth-metadata-csv",
    media_type: "text/csv",
    fields: [
      field("sec", IntField, "whole seconds from the export clock"),
      field("nsec", IntField, "nanosecond fraction in [0, 1e9)"),
      field("frame_id", StringField, "depth camera frame"),
      field("width", IntField, "depth image width"),
      field("height", IntField, "depth image height"),
      field("encoding", StringField, "depth pixel encoding"),
      field("unit", StringField, "depth measurement unit"),
      field("min_depth", FloatField, "minimum valid depth"),
      field("max_depth", FloatField, "maximum valid depth"),
    ],
    description: "Small sidecar for depth image payloads that remain on disk.",
  }
}

///|
pub fn annotation_spec() -> FormatSpec {
  {
    name: "annotation-2d-csv",
    media_type: "text/csv",
    fields: [
      field("sec", IntField, "whole seconds from the export clock"),
      field("nsec", IntField, "nanosecond fraction in [0, 1e9)"),
      field("frame_id", StringField, "image frame for the annotation"),
      field("label", StringField, "object or region label"),
      field("x", FloatField, "box left coordinate"),
      field("y", FloatField, "box top coordinate"),
      field("width", FloatField, "box width"),
      field("height", FloatField, "box height"),
      field("confidence", FloatField, "detector confidence in [0, 1]"),
    ],
    description: "Timestamped 2D labels for image stream synchronization.",
  }
}

///|
pub fn all_format_specs() -> Array[FormatSpec] {
  [
    image_index_spec(),
    camera_info_spec(),
    trajectory_spec(),
    depth_metadata_spec(),
    annotation_spec(),
  ]
}

///|
pub fn format_spec_names() -> Array[String] {
  all_format_specs().map(fn(spec) { spec.name })
}
