///|
pub(all) struct CsvOptions {
  delimiter : Char
  trim_fields : Bool
  allow_comments : Bool
} derive(Debug, Eq)

///|
pub fn default_csv_options() -> CsvOptions {
  { delimiter: ',', trim_fields: true, allow_comments: true }
}

///|
pub(all) suberror CsvError {
  EmptyRow
  UnterminatedQuote(Int)
  UnexpectedQuote(Int)
  InvalidColumnCount(Int, Int, Int)
} derive(Debug, Eq)

///|
pub fn parse_csv_row(
  line : String,
  options : CsvOptions,
) -> Array[String] raise CsvError {
  let result = Array::new()
  let mut field = StringBuilder()
  let mut quoted = false
  let mut quote_closed = false
  let mut column = 0
  for character in line {
    if quoted {
      if character == '"' {
        quoted = false
        quote_closed = true
      } else {
        field.write_char(character)
      }
    } else if character == '"' {
      if field.to_string().length() > 0 {
        raise CsvError::UnexpectedQuote(column)
      }
      quoted = true
      quote_closed = false
    } else if character == options.delimiter {
      result.push(normalize_csv_field(field.to_string(), options))
      field = StringBuilder()
      column += 1
      quote_closed = false
    } else {
      if quote_closed && !character.is_whitespace() {
        raise CsvError::UnexpectedQuote(column)
      }
      field.write_char(character)
    }
  }
  if quoted {
    raise CsvError::UnterminatedQuote(column)
  }
  result.push(normalize_csv_field(field.to_string(), options))
  result
}

///|
fn normalize_csv_field(value : String, options : CsvOptions) -> String {
  if options.trim_fields {
    value.trim().to_owned()
  } else {
    value
  }
}

///|
pub fn parse_csv_table(
  text : String,
  options : CsvOptions,
) -> Array[Array[String]] raise CsvError {
  let rows = Array::new()
  for line in text.split("\n") {
    let clean = line.trim().to_owned()
    if clean.is_empty() || (options.allow_comments && clean.has_prefix("#")) {
      continue
    }
    rows.push(parse_csv_row(clean, options))
  }
  rows
}

///|
pub fn require_rectangular(
  rows : ArrayView[Array[String]],
) -> Int raise CsvError {
  if rows.is_empty() {
    raise CsvError::EmptyRow
  }
  let columns = rows[0].length()
  for i in 1..<rows.length() {
    if rows[i].length() != columns {
      raise CsvError::InvalidColumnCount(i, columns, rows[i].length())
    }
  }
  columns
}

///|
pub fn csv_escape(value : String, delimiter : Char) -> String {
  let needs_quote = value.contains(delimiter.to_string()) ||
    value.contains("\"") ||
    value.contains("\n")
  if needs_quote {
    "\"" + value.replace(old="\"", new="\"\"") + "\""
  } else {
    value
  }
}

///|
pub fn csv_join_row(values : ArrayView[String], delimiter : Char) -> String {
  values
  .map(fn(value) { csv_escape(value, delimiter) })
  .join(delimiter.to_string())
}

///|
pub fn csv_table_to_text(
  rows : ArrayView[Array[String]],
  delimiter : Char,
) -> String {
  rows.map(fn(row) { csv_join_row(row, delimiter) }).join("\n")
}

///|
pub fn column_index(header : ArrayView[String], name : String) -> Int? {
  for i, value in header {
    if value.to_lower() == name.to_lower() {
      return Some(i)
    }
  }
  None
}

///|
pub fn select_columns(
  row : ArrayView[String],
  indexes : ArrayView[Int],
) -> Array[String] {
  let result = Array::new()
  for index in indexes {
    if index >= 0 && index < row.length() {
      result.push(row[index])
    }
  }
  result
}

///|
pub fn rows_with_column(
  rows : ArrayView[Array[String]],
  index : Int,
  expected : String,
) -> Array[Array[String]] {
  let result = Array::new()
  for row in rows {
    if index >= 0 && index < row.length() && row[index] == expected {
      result.push(row)
    }
  }
  result
}

///|
pub fn unique_column_values(
  rows : ArrayView[Array[String]],
  index : Int,
) -> Array[String] {
  let result = Array::new()
  for row in rows {
    if index >= 0 && index < row.length() && !result.contains(row[index]) {
      result.push(row[index])
    }
  }
  result
}

///|
pub fn csv_numeric_column(
  rows : ArrayView[Array[String]],
  index : Int,
) -> Array[Double] raise VisionFormatError {
  let result = Array::new()
  for row in rows {
    if index < 0 || index >= row.length() {
      raise VisionFormatError::InvalidRow("numeric column out of range")
    }
    result.push(parse_double_field(row[index][:], "csv numeric column"))
  }
  result
}
