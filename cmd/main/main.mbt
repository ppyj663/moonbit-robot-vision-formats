///|
fn main raise {
  let csv =
    #|sec,nsec,frame_id,path
    #|12,0,camera/front,front_000001.png
    #|12,33333333,camera/front,front_000002.png
    #|
  let frames = @vision_formats.parse_image_index_csv(csv)
  println(@vision_formats.image_index_summary(frames))
}
