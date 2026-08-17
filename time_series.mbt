///|
pub(all) struct TimeSeriesStats {
  count : Int
  first : Stamp?
  last : Stamp?
  span_ns : Int64
  min_period_ns : Int64?
  max_period_ns : Int64?
  mean_period_ns : Double
  monotonic : Bool
} derive(Debug, ToJson)

///|
pub fn empty_time_series_stats() -> TimeSeriesStats {
  {
    count: 0,
    first: None,
    last: None,
    span_ns: 0L,
    min_period_ns: None,
    max_period_ns: None,
    mean_period_ns: 0.0,
    monotonic: true,
  }
}

///|
pub fn[T] time_series_stats(
  items : ArrayView[T],
  stamp_of : (T) -> Stamp,
) -> TimeSeriesStats {
  if items.is_empty() {
    return empty_time_series_stats()
  }
  let first = stamp_of(items[0])
  let last = stamp_of(items[items.length() - 1])
  let mut min_period : Int64? = None
  let mut max_period : Int64? = None
  let mut sum = 0L
  let mut monotonic = true
  for i in 1..<items.length() {
    let previous = stamp_of(items[i - 1]).to_nanoseconds()
    let current = stamp_of(items[i]).to_nanoseconds()
    let period = current - previous
    if period < 0L {
      monotonic = false
    }
    match min_period {
      None => min_period = Some(period)
      Some(value) => if period < value { min_period = Some(period) }
    }
    match max_period {
      None => max_period = Some(period)
      Some(value) => if period > value { max_period = Some(period) }
    }
    sum += period
  }
  {
    count: items.length(),
    first: Some(first),
    last: Some(last),
    span_ns: last.to_nanoseconds() - first.to_nanoseconds(),
    min_period_ns: min_period,
    max_period_ns: max_period,
    mean_period_ns: if items.length() > 1 {
      sum.to_double() / (items.length() - 1).to_double()
    } else {
      0.0
    },
    monotonic,
  }
}

///|
pub fn period_jitter_ns(periods : ArrayView[Int64]) -> (Int64, Int64, Double) {
  if periods.is_empty() {
    return (0L, 0L, 0.0)
  }
  let mut min_value = periods[0]
  let mut max_value = periods[0]
  let mut sum = 0L
  for value in periods {
    if value < min_value {
      min_value = value
    }
    if value > max_value {
      max_value = value
    }
    sum += value
  }
  (min_value, max_value, sum.to_double() / periods.length().to_double())
}

///|
pub fn expected_period_ns(rate_hz : Double) -> Int64 raise VisionFormatError {
  if rate_hz <= 0.0 {
    raise VisionFormatError::InvalidNumber("rate must be positive")
  }
  (1000000000.0 / rate_hz).to_int64()
}

///|
pub fn missing_periods_ns(
  periods : ArrayView[Int64],
  expected : Int64,
  tolerance : Int64,
) -> Int {
  if expected <= 0L || tolerance < 0L {
    return 0
  }
  let mut count = 0
  for period in periods {
    if period > expected + tolerance {
      count += ((period + expected / 2L) / expected).to_int() - 1
    }
  }
  count
}

///|
pub fn[T] nearest_stamp_index(
  stamp : Stamp,
  items : ArrayView[T],
  stamp_of : (T) -> Stamp,
) -> Int? {
  if items.is_empty() {
    return None
  }
  let mut best = 0
  let mut distance = abs_i64(
    stamp.to_nanoseconds() - stamp_of(items[0]).to_nanoseconds(),
  )
  for i in 1..<items.length() {
    let candidate = abs_i64(
      stamp.to_nanoseconds() - stamp_of(items[i]).to_nanoseconds(),
    )
    if candidate < distance {
      best = i
      distance = candidate
    }
  }
  Some(best)
}

///|
pub fn[T] timestamps_in_window(
  start : Stamp,
  end : Stamp,
  items : ArrayView[T],
  stamp_of : (T) -> Stamp,
) -> Array[T] {
  let result = Array::new()
  let a = start.to_nanoseconds()
  let b = end.to_nanoseconds()
  for item in items {
    let value = stamp_of(item).to_nanoseconds()
    if value >= a && value <= b {
      result.push(item)
    }
  }
  result
}

///|
pub fn[T] split_by_gap(
  items : ArrayView[T],
  stamp_of : (T) -> Stamp,
  gap_ns : Int64,
) -> Array[Array[T]] {
  let groups : Array[Array[T]] = []
  if items.is_empty() {
    return groups
  }
  let mut current = Array::new()
  current.push(items[0])
  for i in 1..<items.length() {
    let gap = stamp_of(items[i]).to_nanoseconds() -
      stamp_of(items[i - 1]).to_nanoseconds()
    if gap > gap_ns {
      groups.push(current)
      let next = Array::new()
      next.push(items[i])
      current = next
    } else {
      current.push(items[i])
    }
  }
  groups.push(current)
  groups
}
