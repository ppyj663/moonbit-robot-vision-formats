///|
pub(all) struct DatasetManifest {
  name : String
  root : String
  image_index : String
  camera_info : String?
  trajectory : String?
  depth_metadata : String?
  annotations : String?
} derive(Debug, Eq, ToJson)

///|
pub fn DatasetManifest::required_files(self : DatasetManifest) -> Array[String] {
  let files = [self.image_index]
  match self.camera_info {
    Some(path) => files.push(path)
    None => ()
  }
  match self.trajectory {
    Some(path) => files.push(path)
    None => ()
  }
  match self.depth_metadata {
    Some(path) => files.push(path)
    None => ()
  }
  match self.annotations {
    Some(path) => files.push(path)
    None => ()
  }
  files
}

///|
pub fn DatasetManifest::to_markdown(self : DatasetManifest) -> String {
  let rows = [
    "# \{self.name}",
    "",
    "- root: `\{self.root}`",
    "- image_index: `\{self.image_index}`",
  ]
  match self.camera_info {
    Some(path) => rows.push("- camera_info: `\{path}`")
    None => rows.push("- camera_info: not provided")
  }
  match self.trajectory {
    Some(path) => rows.push("- trajectory: `\{path}`")
    None => rows.push("- trajectory: not provided")
  }
  match self.depth_metadata {
    Some(path) => rows.push("- depth_metadata: `\{path}`")
    None => rows.push("- depth_metadata: not provided")
  }
  match self.annotations {
    Some(path) => rows.push("- annotations: `\{path}`")
    None => rows.push("- annotations: not provided")
  }
  rows.join("\n")
}

///|
pub fn DatasetManifest::to_manifest_csv(self : DatasetManifest) -> String {
  let rows = ["kind,path", "image_index,\{self.image_index}"]
  match self.camera_info {
    Some(path) => rows.push("camera_info,\{path}")
    None => ()
  }
  match self.trajectory {
    Some(path) => rows.push("trajectory,\{path}")
    None => ()
  }
  match self.depth_metadata {
    Some(path) => rows.push("depth_metadata,\{path}")
    None => ()
  }
  match self.annotations {
    Some(path) => rows.push("annotations,\{path}")
    None => ()
  }
  rows.join("\n")
}
