///|
pub(all) struct Point2D {
  x : Double
  y : Double
} derive(Debug, ToJson)

///|
pub(all) struct Segment2D {
  start : Point2D
  end : Point2D
} derive(Debug, ToJson)

///|
pub fn Point2D::distance(self : Point2D, other : Point2D) -> Double {
  let dx = self.x - other.x
  let dy = self.y - other.y
  (dx * dx + dy * dy).sqrt()
}

///|
pub fn Point2D::lerp(
  self : Point2D,
  other : Point2D,
  amount : Double,
) -> Point2D {
  {
    x: self.x + (other.x - self.x) * amount,
    y: self.y + (other.y - self.y) * amount,
  }
}

///|
pub fn Segment2D::length(self : Segment2D) -> Double {
  self.start.distance(self.end)
}

///|
pub fn Segment2D::point_at(self : Segment2D, amount : Double) -> Point2D {
  self.start.lerp(self.end, amount)
}

///|
pub fn polygon_signed_area(points : ArrayView[Point2D]) -> Double {
  if points.length() < 3 {
    return 0.0
  }
  let mut area = 0.0
  for i in 0..<points.length() {
    let a = points[i]
    let b = points[(i + 1) % points.length()]
    area += a.x * b.y - b.x * a.y
  }
  area / 2.0
}

///|
pub fn polygon_area(points : ArrayView[Point2D]) -> Double {
  let a = polygon_signed_area(points)
  if a < 0.0 {
    0.0 - a
  } else {
    a
  }
}

///|
pub fn polygon_is_clockwise(points : ArrayView[Point2D]) -> Bool {
  polygon_signed_area(points) < 0.0
}

///|
pub fn point_in_polygon(point : Point2D, polygon : ArrayView[Point2D]) -> Bool {
  if polygon.length() < 3 {
    return false
  }
  let mut inside = false
  let mut j = polygon.length() - 1
  for i in 0..<polygon.length() {
    let a = polygon[i]
    let b = polygon[j]
    if (a.y > point.y) != (b.y > point.y) &&
      point.x < (b.x - a.x) * (point.y - a.y) / (b.y - a.y) + a.x {
      inside = !inside
    }
    j = i
  }
  inside
}

///|
pub fn bounding_box_of_points(
  points : ArrayView[Point2D],
) -> BoundingBox raise VisionFormatError {
  if points.is_empty() {
    raise VisionFormatError::EmptyInput
  }
  let mut min_x = points[0].x
  let mut max_x = min_x
  let mut min_y = points[0].y
  let mut max_y = min_y
  for point in points {
    if point.x < min_x {
      min_x = point.x
    }
    if point.x > max_x {
      max_x = point.x
    }
    if point.y < min_y {
      min_y = point.y
    }
    if point.y > max_y {
      max_y = point.y
    }
  }
  { x: min_x, y: min_y, width: max_x - min_x, height: max_y - min_y }
}

///|
pub fn expand_box(box : BoundingBox, padding : Double) -> BoundingBox {
  {
    x: box.x - padding,
    y: box.y - padding,
    width: box.width + padding * 2.0,
    height: box.height + padding * 2.0,
  }
}

///|
pub fn clamp_box(box : BoundingBox, width : Int, height : Int) -> BoundingBox {
  let left = if box.x < 0.0 { 0.0 } else { box.x }
  let top = if box.y < 0.0 { 0.0 } else { box.y }
  let right = if box.right() > width.to_double() {
    width.to_double()
  } else {
    box.right()
  }
  let bottom = if box.bottom() > height.to_double() {
    height.to_double()
  } else {
    box.bottom()
  }
  {
    x: left,
    y: top,
    width: if right > left {
      right - left
    } else {
      0.0
    },
    height: if bottom > top {
      bottom - top
    } else {
      0.0
    },
  }
}
