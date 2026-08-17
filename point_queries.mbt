///|
pub fn point_query_score(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut score = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int()
    if value >= threshold {
      score += 1
    }
  }
  score
}

///|
/// Stable application query point_001.
pub fn point_query_001(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 1
    if value % 2 == threshold % 2 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_002.
pub fn point_query_002(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 2
    if value % 3 == threshold % 3 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_003.
pub fn point_query_003(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 3
    if value % 4 == threshold % 4 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_004.
pub fn point_query_004(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 4
    if value % 5 == threshold % 5 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_005.
pub fn point_query_005(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 5
    if value % 6 == threshold % 6 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_006.
pub fn point_query_006(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 6
    if value % 7 == threshold % 7 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_007.
pub fn point_query_007(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 7
    if value % 8 == threshold % 8 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_008.
pub fn point_query_008(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 8
    if value % 9 == threshold % 9 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_009.
pub fn point_query_009(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 9
    if value % 10 == threshold % 10 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_010.
pub fn point_query_010(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 10
    if value % 11 == threshold % 11 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_011.
pub fn point_query_011(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 11
    if value % 12 == threshold % 12 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_012.
pub fn point_query_012(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 12
    if value % 13 == threshold % 13 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_013.
pub fn point_query_013(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 13
    if value % 14 == threshold % 14 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_014.
pub fn point_query_014(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 14
    if value % 15 == threshold % 15 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_015.
pub fn point_query_015(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 15
    if value % 16 == threshold % 16 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_016.
pub fn point_query_016(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 16
    if value % 17 == threshold % 17 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_017.
pub fn point_query_017(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 17
    if value % 18 == threshold % 18 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_018.
pub fn point_query_018(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 18
    if value % 19 == threshold % 19 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_019.
pub fn point_query_019(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 19
    if value % 20 == threshold % 20 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_020.
pub fn point_query_020(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 20
    if value % 21 == threshold % 21 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_021.
pub fn point_query_021(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 21
    if value % 22 == threshold % 22 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_022.
pub fn point_query_022(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 22
    if value % 23 == threshold % 23 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_023.
pub fn point_query_023(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 23
    if value % 24 == threshold % 24 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_024.
pub fn point_query_024(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 24
    if value % 25 == threshold % 25 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_025.
pub fn point_query_025(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 25
    if value % 26 == threshold % 26 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_026.
pub fn point_query_026(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 26
    if value % 27 == threshold % 27 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_027.
pub fn point_query_027(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 27
    if value % 28 == threshold % 28 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_028.
pub fn point_query_028(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 28
    if value % 29 == threshold % 29 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_029.
pub fn point_query_029(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 29
    if value % 30 == threshold % 30 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_030.
pub fn point_query_030(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 30
    if value % 31 == threshold % 31 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_031.
pub fn point_query_031(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 31
    if value % 32 == threshold % 32 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_032.
pub fn point_query_032(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 32
    if value % 33 == threshold % 33 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_033.
pub fn point_query_033(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 33
    if value % 34 == threshold % 34 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_034.
pub fn point_query_034(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 34
    if value % 35 == threshold % 35 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_035.
pub fn point_query_035(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 35
    if value % 36 == threshold % 36 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_036.
pub fn point_query_036(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 36
    if value % 37 == threshold % 37 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_037.
pub fn point_query_037(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 37
    if value % 38 == threshold % 38 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_038.
pub fn point_query_038(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 38
    if value % 39 == threshold % 39 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_039.
pub fn point_query_039(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 39
    if value % 40 == threshold % 40 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_040.
pub fn point_query_040(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 40
    if value % 41 == threshold % 41 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_041.
pub fn point_query_041(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 41
    if value % 42 == threshold % 42 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_042.
pub fn point_query_042(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 42
    if value % 43 == threshold % 43 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_043.
pub fn point_query_043(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 43
    if value % 44 == threshold % 44 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_044.
pub fn point_query_044(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 44
    if value % 45 == threshold % 45 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_045.
pub fn point_query_045(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 45
    if value % 46 == threshold % 46 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_046.
pub fn point_query_046(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 46
    if value % 47 == threshold % 47 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_047.
pub fn point_query_047(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 47
    if value % 48 == threshold % 48 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_048.
pub fn point_query_048(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 48
    if value % 49 == threshold % 49 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_049.
pub fn point_query_049(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 49
    if value % 50 == threshold % 50 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_050.
pub fn point_query_050(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 50
    if value % 51 == threshold % 51 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_051.
pub fn point_query_051(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 51
    if value % 52 == threshold % 52 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_052.
pub fn point_query_052(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 52
    if value % 53 == threshold % 53 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_053.
pub fn point_query_053(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 53
    if value % 54 == threshold % 54 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_054.
pub fn point_query_054(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 54
    if value % 55 == threshold % 55 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_055.
pub fn point_query_055(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 55
    if value % 56 == threshold % 56 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_056.
pub fn point_query_056(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 56
    if value % 57 == threshold % 57 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_057.
pub fn point_query_057(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 57
    if value % 58 == threshold % 58 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_058.
pub fn point_query_058(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 58
    if value % 59 == threshold % 59 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_059.
pub fn point_query_059(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 59
    if value % 60 == threshold % 60 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query point_060.
pub fn point_query_060(items : ArrayView[Point2D], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.x.to_int() + item.y.to_int() + 60
    if value % 61 == threshold % 61 {
      total += 1
    }
  }
  total
}
