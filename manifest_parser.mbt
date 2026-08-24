///|
pub(all) suberror ManifestError {
  MissingKind
  DuplicateKind(String)
  UnknownKind(String)
  EmptyPath(String)
} derive(Debug, Eq)

///|
pub fn parse_manifest_csv(
  name : String,
  root : String,
  text : String,
) -> DatasetManifest raise ManifestError {
  let rows = parse_csv_table(text, default_csv_options()) catch {
    _ => raise ManifestError::MissingKind
  }
  if rows.is_empty() {
    raise ManifestError::MissingKind
  }
  let header = rows[0]
  let kind_index = column_index(header, "kind")
  let path_index = column_index(header, "path")
  match (kind_index, path_index) {
    (Some(kind), Some(path)) => {
      let mut image_index : String? = None
      let mut camera_info : String? = None
      let mut trajectory : String? = None
      let mut depth_metadata : String? = None
      let mut annotations : String? = None
      for row in rows[1:] {
        if row.length() <= kind || row.length() <= path {
          continue
        }
        let value = row[kind]
        let file = row[path]
        if file.is_empty() {
          raise ManifestError::EmptyPath(value)
        }
        match value {
          "image_index" => {
            if image_index is Some(_) {
              raise ManifestError::DuplicateKind(value)
            }
            image_index = Some(file)
          }
          "camera_info" => {
            if camera_info is Some(_) {
              raise ManifestError::DuplicateKind(value)
            }
            camera_info = Some(file)
          }
          "trajectory" => {
            if trajectory is Some(_) {
              raise ManifestError::DuplicateKind(value)
            }
            trajectory = Some(file)
          }
          "depth_metadata" => {
            if depth_metadata is Some(_) {
              raise ManifestError::DuplicateKind(value)
            }
            depth_metadata = Some(file)
          }
          "annotations" => {
            if annotations is Some(_) {
              raise ManifestError::DuplicateKind(value)
            }
            annotations = Some(file)
          }
          _ => raise ManifestError::UnknownKind(value)
        }
      }
      match image_index {
        Some(path) =>
          {
            name,
            root,
            image_index: path,
            camera_info,
            trajectory,
            depth_metadata,
            annotations,
          }
        None => raise ManifestError::MissingKind
      }
    }
    _ => raise ManifestError::MissingKind
  }
}

///|
pub fn manifest_from_paths(
  name : String,
  root : String,
  image_index : String,
  camera_info? : String,
  trajectory? : String,
  depth_metadata? : String,
  annotations? : String,
) -> DatasetManifest raise ManifestError {
  if image_index.is_empty() {
    raise ManifestError::EmptyPath("image_index")
  }
  {
    name,
    root,
    image_index,
    camera_info,
    trajectory,
    depth_metadata,
    annotations,
  }
}

///|
pub fn manifest_path_for(manifest : DatasetManifest, kind : String) -> String? {
  match kind {
    "image_index" => Some(manifest.image_index)
    "camera_info" => manifest.camera_info
    "trajectory" => manifest.trajectory
    "depth_metadata" => manifest.depth_metadata
    "annotations" => manifest.annotations
    _ => None
  }
}

///|
pub fn manifest_has_kind(manifest : DatasetManifest, kind : String) -> Bool {
  manifest_path_for(manifest, kind) is Some(_)
}

///|
pub fn manifest_to_csv(manifest : DatasetManifest) -> String {
  let rows = ["kind,path", "image_index,\{manifest.image_index}"]
  match manifest.camera_info {
    Some(path) => rows.push("camera_info,\{path}")
    None => ()
  }
  match manifest.trajectory {
    Some(path) => rows.push("trajectory,\{path}")
    None => ()
  }
  match manifest.depth_metadata {
    Some(path) => rows.push("depth_metadata,\{path}")
    None => ()
  }
  match manifest.annotations {
    Some(path) => rows.push("annotations,\{path}")
    None => ()
  }
  rows.join("\n")
}
