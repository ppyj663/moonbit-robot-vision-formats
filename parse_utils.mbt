///|
fn parse_int_field(
  raw : StringView,
  field : String,
) -> Int raise VisionFormatError {
  @string.parse_int(raw.trim()) catch {
    _ => raise VisionFormatError::InvalidNumber("\{field}=\{raw}")
  }
}

///|
fn parse_double_field(
  raw : StringView,
  field : String,
) -> Double raise VisionFormatError {
  @string.parse_double(raw.trim()) catch {
    _ => raise VisionFormatError::InvalidNumber("\{field}=\{raw}")
  }
}

///|
fn split_csv_line(line : String) -> Array[String] {
  Array::from_iter(line.split(",").map(fn(part) { part.trim().to_owned() }))
}

///|
fn non_empty_lines(text : String) -> Array[String] {
  Array::from_iter(
    text
    .split("\n")
    .filter_map(fn(line) {
      let clean = line.trim().to_owned()
      if clean.is_empty() || clean.has_prefix("#") {
        None
      } else {
        Some(clean)
      }
    }),
  )
}

///|
fn require_columns(
  row : Array[String],
  count : Int,
  context : String,
) -> Unit raise VisionFormatError {
  if row.length() < count {
    raise VisionFormatError::InvalidRow(context)
  }
}

///|
pub fn parse_stamp(
  sec : StringView,
  nsec : StringView,
) -> Stamp raise VisionFormatError {
  let s = parse_int_field(sec, "sec")
  let ns = parse_int_field(nsec, "nsec")
  if ns < 0 || ns >= 1000000000 {
    raise VisionFormatError::InvalidNumber("nsec=\{nsec}")
  }
  { sec: s, nsec: ns }
}

///|
pub fn parse_stamp_text(text : String) -> Stamp raise VisionFormatError {
  match text.split_once(".") {
    Some((sec, frac)) => {
      let padded = frac.to_owned().pad_end(9, '0')
      let nsec_text = padded.unsafe_substring(start=0, end=9)
      parse_stamp(sec, nsec_text[:])
    }
    None => parse_stamp(text[:], "0"[:])
  }
}

///|
fn[T] ensure_monotonic(
  items : Array[T],
  stamp_of : (T) -> Stamp,
  name : String,
) -> Unit raise VisionFormatError {
  for i in 1..<items.length() {
    let prev = stamp_of(items[i - 1])
    let current = stamp_of(items[i])
    if prev.compare(current) > 0 {
      raise VisionFormatError::OutOfOrder("\{name} at row \{i + 1}")
    }
  }
}

///|
fn abs_i64(value : Int64) -> Int64 {
  if value < 0L {
    0L - value
  } else {
    value
  }
}
