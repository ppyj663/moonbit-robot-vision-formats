///|
test "parse image index and summarize periods" {
  let image_csv =
    #|sec,nsec,frame_id,path
    #|10,0,camera/front,frames/front_0001.png
    #|10,33333333,camera/front,frames/front_0002.png
    #|
  let frames = parse_image_index_csv(image_csv)
  inspect(
    image_index_summary(frames),
    content="2 frames from 10.000000000 to 10.033333333",
  )
  debug_inspect(image_periods_ns(frames), content="[33333333]")
}

///|
test "parse camera info yaml subset" {
  let camera_yaml =
    #|image_width: 640
    #|image_height: 480
    #|distortion_model: plumb_bob
    #|camera_matrix: [525.0, 0.0, 319.5, 0.0, 525.0, 239.5, 0.0, 0.0, 1.0]
    #|distortion_coefficients: [0.1, -0.2, 0.0, 0.0, 0.0]
    #|rectification_matrix: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0]
    #|projection_matrix: [525.0, 0.0, 319.5, 0.0, 0.0, 525.0, 239.5, 0.0, 0.0, 0.0, 1.0, 0.0]
    #|
  let camera = parse_camera_info_yaml(camera_yaml)
  inspect(camera.width, content="640")
  debug_inspect(focal_length_pair(camera), content="(525, 525)")
}

///|
test "synchronize robot vision streams" {
  let image_csv =
    #|sec,nsec,frame_id,path
    #|1,0,camera/front,img_1.png
    #|2,0,camera/front,img_2.png
    #|
  let traj_csv =
    #|sec,nsec,frame_id,x,y,theta
    #|1,1000000,map,0.1,0.2,0.0
    #|3,0,map,1.0,2.0,0.1
    #|
  let depth_csv =
    #|sec,nsec,frame_id,width,height,encoding,unit,min_depth,max_depth
    #|1,2000000,camera/front,640,480,16UC1,mm,100.0,5000.0
    #|
  let ann_csv =
    #|sec,nsec,frame_id,label,x,y,width,height,confidence
    #|1,3000000,camera/front,box,10.0,20.0,30.0,40.0,0.98
    #|
  let images = parse_image_index_csv(image_csv)
  let traj = parse_trajectory_csv(traj_csv)
  let depth = parse_depth_metadata_csv(depth_csv)
  let anns = parse_annotation_csv(ann_csv)
  let report = synchronize(images, traj, depth, anns, tolerance_ns=5000000L)
  inspect(
    sync_report_summary(report),
    content="matches=1, unmatched_images=1, unmatched_trajectory=1, unmatched_depth=0, unmatched_annotations=0",
  )
}

///|
test "format catalog names are stable" {
  debug_inspect(
    format_spec_names(),
    content=(
      #|[
      #|  "image-index-csv",
      #|  "camera-info-yaml",
      #|  "trajectory-2d-csv",
      #|  "depth-metadata-csv",
      #|  "annotation-2d-csv",
      #|]
    ),
  )
}

///|
test "annotation geometry computes overlap" {
  let a : BoundingBox = { x: 0.0, y: 0.0, width: 10.0, height: 10.0 }
  let b : BoundingBox = { x: 5.0, y: 5.0, width: 10.0, height: 10.0 }
  inspect(a.intersection_area(b), content="25")
  inspect(a.is_inside_image(20, 20), content="true")
}

///|
test "camera projection roundtrip" {
  let camera_yaml =
    #|image_width: 640
    #|image_height: 480
    #|distortion_model: plumb_bob
    #|camera_matrix: [500.0, 0.0, 320.0, 0.0, 500.0, 240.0, 0.0, 0.0, 1.0]
    #|distortion_coefficients: [0.0, 0.0, 0.0, 0.0, 0.0]
    #|rectification_matrix: [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0]
    #|projection_matrix: [500.0, 0.0, 320.0, 0.0, 0.0, 500.0, 240.0, 0.0, 0.0, 0.0, 1.0, 0.0]
    #|
  let camera = parse_camera_info_yaml(camera_yaml)
  let point = camera.normalize_pixel({ u: 370.0, v: 190.0 })
  debug_inspect(point, content="{ x: 0.1, y: -0.1 }")
  debug_inspect(camera.project_normalized(point), content="{ u: 370, v: 190 }")
  inspect(camera.has_identity_rectification(0.000001), content="true")
}

///|
test "manifest exports markdown and csv rows" {
  let manifest : DatasetManifest = {
    name: "front camera smoke",
    root: "dataset/front",
    image_index: "images.csv",
    camera_info: Some("camera.yaml"),
    trajectory: Some("trajectory.csv"),
    depth_metadata: None,
    annotations: Some("labels.csv"),
  }
  inspect(manifest.required_files().length(), content="4")
  inspect(
    manifest.to_manifest_csv().contains("annotations,labels.csv"),
    content="true",
  )
  inspect(manifest.to_markdown().contains("front camera smoke"), content="true")
}

///|
test "quality report flags missing streams" {
  let report = inspect_stream_quality([], None, [], [], [])
  inspect(report.summary(), content="errors=1, warnings=2, info=1")
  inspect(report.is_clean(), content="false")
}
