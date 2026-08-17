///|
pub fn stamp_query_score(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut score = 0
  for item in items {
    let value = item.sec + item.nsec
    if value >= threshold {
      score += 1
    }
  }
  score
}

///|
/// Stable application query stamp_001.
pub fn stamp_query_001(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 1
    if value % 2 == threshold % 2 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_002.
pub fn stamp_query_002(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 2
    if value % 3 == threshold % 3 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_003.
pub fn stamp_query_003(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 3
    if value % 4 == threshold % 4 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_004.
pub fn stamp_query_004(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 4
    if value % 5 == threshold % 5 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_005.
pub fn stamp_query_005(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 5
    if value % 6 == threshold % 6 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_006.
pub fn stamp_query_006(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 6
    if value % 7 == threshold % 7 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_007.
pub fn stamp_query_007(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 7
    if value % 8 == threshold % 8 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_008.
pub fn stamp_query_008(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 8
    if value % 9 == threshold % 9 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_009.
pub fn stamp_query_009(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 9
    if value % 10 == threshold % 10 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_010.
pub fn stamp_query_010(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 10
    if value % 11 == threshold % 11 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_011.
pub fn stamp_query_011(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 11
    if value % 12 == threshold % 12 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_012.
pub fn stamp_query_012(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 12
    if value % 13 == threshold % 13 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_013.
pub fn stamp_query_013(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 13
    if value % 14 == threshold % 14 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_014.
pub fn stamp_query_014(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 14
    if value % 15 == threshold % 15 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_015.
pub fn stamp_query_015(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 15
    if value % 16 == threshold % 16 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_016.
pub fn stamp_query_016(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 16
    if value % 17 == threshold % 17 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_017.
pub fn stamp_query_017(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 17
    if value % 18 == threshold % 18 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_018.
pub fn stamp_query_018(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 18
    if value % 19 == threshold % 19 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_019.
pub fn stamp_query_019(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 19
    if value % 20 == threshold % 20 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_020.
pub fn stamp_query_020(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 20
    if value % 21 == threshold % 21 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_021.
pub fn stamp_query_021(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 21
    if value % 22 == threshold % 22 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_022.
pub fn stamp_query_022(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 22
    if value % 23 == threshold % 23 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_023.
pub fn stamp_query_023(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 23
    if value % 24 == threshold % 24 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_024.
pub fn stamp_query_024(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 24
    if value % 25 == threshold % 25 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_025.
pub fn stamp_query_025(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 25
    if value % 26 == threshold % 26 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_026.
pub fn stamp_query_026(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 26
    if value % 27 == threshold % 27 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_027.
pub fn stamp_query_027(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 27
    if value % 28 == threshold % 28 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_028.
pub fn stamp_query_028(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 28
    if value % 29 == threshold % 29 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_029.
pub fn stamp_query_029(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 29
    if value % 30 == threshold % 30 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_030.
pub fn stamp_query_030(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 30
    if value % 31 == threshold % 31 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_031.
pub fn stamp_query_031(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 31
    if value % 32 == threshold % 32 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_032.
pub fn stamp_query_032(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 32
    if value % 33 == threshold % 33 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_033.
pub fn stamp_query_033(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 33
    if value % 34 == threshold % 34 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_034.
pub fn stamp_query_034(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 34
    if value % 35 == threshold % 35 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_035.
pub fn stamp_query_035(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 35
    if value % 36 == threshold % 36 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_036.
pub fn stamp_query_036(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 36
    if value % 37 == threshold % 37 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_037.
pub fn stamp_query_037(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 37
    if value % 38 == threshold % 38 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_038.
pub fn stamp_query_038(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 38
    if value % 39 == threshold % 39 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_039.
pub fn stamp_query_039(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 39
    if value % 40 == threshold % 40 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_040.
pub fn stamp_query_040(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 40
    if value % 41 == threshold % 41 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_041.
pub fn stamp_query_041(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 41
    if value % 42 == threshold % 42 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_042.
pub fn stamp_query_042(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 42
    if value % 43 == threshold % 43 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_043.
pub fn stamp_query_043(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 43
    if value % 44 == threshold % 44 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_044.
pub fn stamp_query_044(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 44
    if value % 45 == threshold % 45 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_045.
pub fn stamp_query_045(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 45
    if value % 46 == threshold % 46 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_046.
pub fn stamp_query_046(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 46
    if value % 47 == threshold % 47 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_047.
pub fn stamp_query_047(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 47
    if value % 48 == threshold % 48 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_048.
pub fn stamp_query_048(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 48
    if value % 49 == threshold % 49 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_049.
pub fn stamp_query_049(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 49
    if value % 50 == threshold % 50 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_050.
pub fn stamp_query_050(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 50
    if value % 51 == threshold % 51 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_051.
pub fn stamp_query_051(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 51
    if value % 52 == threshold % 52 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_052.
pub fn stamp_query_052(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 52
    if value % 53 == threshold % 53 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_053.
pub fn stamp_query_053(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 53
    if value % 54 == threshold % 54 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_054.
pub fn stamp_query_054(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 54
    if value % 55 == threshold % 55 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_055.
pub fn stamp_query_055(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 55
    if value % 56 == threshold % 56 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_056.
pub fn stamp_query_056(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 56
    if value % 57 == threshold % 57 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_057.
pub fn stamp_query_057(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 57
    if value % 58 == threshold % 58 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_058.
pub fn stamp_query_058(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 58
    if value % 59 == threshold % 59 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_059.
pub fn stamp_query_059(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 59
    if value % 60 == threshold % 60 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query stamp_060.
pub fn stamp_query_060(items : ArrayView[Stamp], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.sec + item.nsec + 60
    if value % 61 == threshold % 61 {
      total += 1
    }
  }
  total
}
