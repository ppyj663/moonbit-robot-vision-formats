///|
pub(all) struct DatasetSplit[T] {
  train : Array[T]
  validation : Array[T]
  test_set : Array[T]
} derive(Debug)

///|
pub fn split_index(
  index : Int,
  seed : Int,
  validation_percent : Int,
  test_percent : Int,
) -> Int {
  let value = (index * 1103515245 + seed * 12345).abs()
  let bucket = value % 100
  if bucket < test_percent {
    2
  } else if bucket < test_percent + validation_percent {
    1
  } else {
    0
  }
}

///|
pub fn[T] split_items(
  items : ArrayView[T],
  seed : Int,
  validation_percent : Int,
  test_percent : Int,
) -> DatasetSplit[T] {
  let train = Array::new()
  let validation = Array::new()
  let test_set : Array[T] = []
  let valid_percent = if validation_percent < 0 {
    0
  } else {
    validation_percent
  }
  let test_percent = if test_percent < 0 { 0 } else { test_percent }
  for index, item in items {
    match split_index(index, seed, valid_percent, test_percent) {
      0 => train.push(item)
      1 => validation.push(item)
      2 => test_set.push(item)
      _ => train.push(item)
    }
  }
  { train, validation, test_set }
}

///|
pub fn split_images(
  frames : ArrayView[ImageFrameRef],
  seed : Int,
  validation_percent : Int,
  test_percent : Int,
) -> DatasetSplit[ImageFrameRef] {
  split_items(frames, seed, validation_percent, test_percent)
}

///|
pub fn split_annotations(
  annotations : ArrayView[Annotation],
  seed : Int,
  validation_percent : Int,
  test_percent : Int,
) -> DatasetSplit[Annotation] {
  split_items(annotations, seed, validation_percent, test_percent)
}

///|
pub fn split_trajectory(
  samples : ArrayView[TrajectorySample],
  seed : Int,
  validation_percent : Int,
  test_percent : Int,
) -> DatasetSplit[TrajectorySample] {
  split_items(samples, seed, validation_percent, test_percent)
}

///|
pub fn[T] split_counts(split : DatasetSplit[T]) -> (Int, Int, Int) {
  (split.train.length(), split.validation.length(), split.test_set.length())
}

///|
pub fn[T] split_is_disjoint(
  split : DatasetSplit[T],
  equal : (T, T) -> Bool,
) -> Bool {
  split.train.all(fn(item) {
    split.validation.all(fn(other) { !equal(item, other) }) &&
    split.test_set.all(fn(other) { !equal(item, other) })
  }) &&
  split.validation.all(fn(item) {
    split.test_set.all(fn(other) { !equal(item, other) })
  })
}

///|
pub fn split_manifest(
  manifest : DatasetManifest,
  split_name : String,
) -> DatasetManifest {
  {
    name: manifest.name + "-" + split_name,
    root: manifest.root + "/" + split_name,
    image_index: manifest.image_index,
    camera_info: manifest.camera_info,
    trajectory: manifest.trajectory,
    depth_metadata: manifest.depth_metadata,
    annotations: manifest.annotations,
  }
}
