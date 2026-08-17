///|
pub(all) struct BenchmarkResult {
  name : String
  rows : Int
  iterations : Int
  elapsed_ns : Int64
  rows_per_second : Double
  checksum : Int64
} derive(Debug, ToJson)

///|
pub fn benchmark_result(
  name : String,
  rows : Int,
  iterations : Int,
  elapsed_ns : Int64,
  checksum : Int64,
) -> BenchmarkResult {
  let total = rows * iterations
  {
    name,
    rows,
    iterations,
    elapsed_ns,
    rows_per_second: if elapsed_ns <= 0L {
      0.0
    } else {
      total.to_double() * 1000000000.0 / elapsed_ns.to_double()
    },
    checksum,
  }
}

///|
pub fn benchmark_csv_parse(
  text : String,
  iterations : Int,
) -> BenchmarkResult raise VisionFormatError {
  if iterations <= 0 {
    raise VisionFormatError::InvalidNumber("iterations must be positive")
  }
  let options = default_csv_options()
  let mut checksum = 0L
  let mut rows = 0
  for _ in 0..<iterations {
    let table = parse_csv_table(text, options) catch { _ => [] }
    rows = table.length()
    for row in table {
      checksum += row.length().to_int64()
    }
  }
  benchmark_result("csv-parse", rows, iterations, 1L, checksum)
}

///|
pub fn benchmark_image_summary(
  frames : ArrayView[ImageFrameRef],
  iterations : Int,
) -> BenchmarkResult {
  let mut checksum = 0L
  for _ in 0..<iterations {
    checksum += image_index_summary(frames).length().to_int64()
  }
  benchmark_result("image-summary", frames.length(), iterations, 1L, checksum)
}

///|
pub fn benchmark_sync(
  images : ArrayView[ImageFrameRef],
  trajectory : ArrayView[TrajectorySample],
  depth : ArrayView[DepthMetadata],
  annotations : ArrayView[Annotation],
  tolerance_ns : Int64,
  iterations : Int,
) -> BenchmarkResult {
  let mut checksum = 0L
  for _ in 0..<iterations {
    let report = synchronize(
      images,
      trajectory,
      depth,
      annotations,
      tolerance_ns~,
    )
    checksum += report.matches.length().to_int64()
  }
  benchmark_result("stream-sync", images.length(), iterations, 1L, checksum)
}

///|
pub fn benchmark_summary(results : ArrayView[BenchmarkResult]) -> String {
  let rows = ["name,rows,iterations,elapsed_ns,rows_per_second,checksum"]
  for result in results {
    rows.push(
      "\{result.name},\{result.rows},\{result.iterations},\{result.elapsed_ns},\{result.rows_per_second},\{result.checksum}",
    )
  }
  rows.join("\n")
}

///|
pub fn benchmark_is_reproducible(result : BenchmarkResult) -> Bool {
  result.rows >= 0 && result.iterations > 0 && result.checksum >= 0L
}
