///|
pub fn BoundingBox::area(self : BoundingBox) -> Double {
  if self.width <= 0.0 || self.height <= 0.0 {
    0.0
  } else {
    self.width * self.height
  }
}

///|
pub fn BoundingBox::right(self : BoundingBox) -> Double {
  self.x + self.width
}

///|
pub fn BoundingBox::bottom(self : BoundingBox) -> Double {
  self.y + self.height
}

///|
fn max_double(a : Double, b : Double) -> Double {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn min_double(a : Double, b : Double) -> Double {
  if a < b {
    a
  } else {
    b
  }
}

///|
pub fn BoundingBox::intersection_area(
  self : BoundingBox,
  other : BoundingBox,
) -> Double {
  let left = max_double(self.x, other.x)
  let top = max_double(self.y, other.y)
  let right = min_double(self.right(), other.right())
  let bottom = min_double(self.bottom(), other.bottom())
  if right <= left || bottom <= top {
    0.0
  } else {
    (right - left) * (bottom - top)
  }
}

///|
pub fn BoundingBox::iou(self : BoundingBox, other : BoundingBox) -> Double {
  let inter = self.intersection_area(other)
  let union = self.area() + other.area() - inter
  if union <= 0.0 {
    0.0
  } else {
    inter / union
  }
}

///|
pub fn BoundingBox::is_inside_image(
  self : BoundingBox,
  width : Int,
  height : Int,
) -> Bool {
  self.x >= 0.0 &&
  self.y >= 0.0 &&
  self.right() <= width.to_double() &&
  self.bottom() <= height.to_double()
}

///|
pub fn filter_annotations_by_label(
  annotations : ArrayView[Annotation],
  label : String,
) -> Array[Annotation] {
  Array::from_iter(annotations.iter().filter(fn(item) { item.label == label }))
}

///|
pub fn filter_annotations_by_confidence(
  annotations : ArrayView[Annotation],
  min_confidence : Double,
) -> Array[Annotation] {
  Array::from_iter(
    annotations.iter().filter(fn(item) { item.confidence >= min_confidence }),
  )
}

///|
pub fn validate_annotation(
  annotation : Annotation,
  image_width : Int,
  image_height : Int,
) -> Unit raise VisionFormatError {
  if annotation.confidence < 0.0 || annotation.confidence > 1.0 {
    raise VisionFormatError::InvalidNumber("confidence must be in [0, 1]")
  }
  if annotation.bbox.area() <= 0.0 {
    raise VisionFormatError::InvalidShape(
      "annotation box must have positive area",
    )
  }
  if !annotation.bbox.is_inside_image(image_width, image_height) {
    raise VisionFormatError::InvalidShape(
      "annotation box is outside image bounds",
    )
  }
}
