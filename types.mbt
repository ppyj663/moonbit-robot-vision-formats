///|
pub(all) suberror VisionFormatError {
  EmptyInput
  MissingField(String)
  InvalidNumber(String)
  InvalidRow(String)
  InvalidShape(String)
  OutOfOrder(String)
} derive(Debug, Eq)

///|
pub(all) struct Stamp {
  sec : Int
  nsec : Int
} derive(Debug, Eq, ToJson)

///|
pub fn Stamp::to_nanoseconds(self : Stamp) -> Int64 {
  self.sec.to_int64() * 1000000000L + self.nsec.to_int64()
}

///|
pub fn Stamp::to_string(self : Stamp) -> String {
  "\{self.sec}.\{self.nsec.to_string().pad_start(9, '0')}"
}

///|
pub fn Stamp::compare(self : Stamp, other : Stamp) -> Int {
  if self.sec != other.sec {
    self.sec.compare(other.sec)
  } else {
    self.nsec.compare(other.nsec)
  }
}

///|
pub fn Stamp::delta_ns(self : Stamp, next : Stamp) -> Int64 {
  next.to_nanoseconds() - self.to_nanoseconds()
}

///|
pub(all) struct ImageFrameRef {
  stamp : Stamp
  frame_id : String
  path : String
} derive(Debug, Eq, ToJson)

///|
pub(all) struct CameraIntrinsics {
  width : Int
  height : Int
  distortion_model : String
  k : Array[Double]
  d : Array[Double]
  r : Array[Double]
  p : Array[Double]
} derive(Debug, ToJson)

///|
pub(all) struct Pose2D {
  x : Double
  y : Double
  theta : Double
} derive(Debug, ToJson)

///|
pub(all) struct TrajectorySample {
  stamp : Stamp
  frame_id : String
  pose : Pose2D
} derive(Debug, ToJson)

///|
pub(all) struct DepthMetadata {
  stamp : Stamp
  frame_id : String
  width : Int
  height : Int
  encoding : String
  unit : String
  min_depth : Double
  max_depth : Double
} derive(Debug, ToJson)

///|
pub(all) struct BoundingBox {
  x : Double
  y : Double
  width : Double
  height : Double
} derive(Debug, ToJson)

///|
pub(all) struct Annotation {
  stamp : Stamp
  frame_id : String
  label : String
  bbox : BoundingBox
  confidence : Double
} derive(Debug, ToJson)

///|
pub(all) struct SyncMatch {
  image : ImageFrameRef
  trajectory : TrajectorySample?
  depth : DepthMetadata?
  annotations : Array[Annotation]
  max_abs_offset_ns : Int64
} derive(Debug, ToJson)

///|
pub(all) struct SyncReport {
  matches : Array[SyncMatch]
  unmatched_images : Array[ImageFrameRef]
  unmatched_trajectory : Array[TrajectorySample]
  unmatched_depth : Array[DepthMetadata]
  unmatched_annotations : Array[Annotation]
} derive(Debug, ToJson)
