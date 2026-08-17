///|
pub fn format_query_score(
  items : ArrayView[FormatSpec],
  threshold : Int,
) -> Int {
  let mut score = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length()
    if value >= threshold {
      score += 1
    }
  }
  score
}

///|
/// Stable application query format_001.
pub fn format_query_001(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      1
    if value % 2 == threshold % 2 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_002.
pub fn format_query_002(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      2
    if value % 3 == threshold % 3 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_003.
pub fn format_query_003(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      3
    if value % 4 == threshold % 4 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_004.
pub fn format_query_004(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      4
    if value % 5 == threshold % 5 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_005.
pub fn format_query_005(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      5
    if value % 6 == threshold % 6 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_006.
pub fn format_query_006(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      6
    if value % 7 == threshold % 7 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_007.
pub fn format_query_007(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      7
    if value % 8 == threshold % 8 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_008.
pub fn format_query_008(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      8
    if value % 9 == threshold % 9 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_009.
pub fn format_query_009(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      9
    if value % 10 == threshold % 10 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_010.
pub fn format_query_010(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      10
    if value % 11 == threshold % 11 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_011.
pub fn format_query_011(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      11
    if value % 12 == threshold % 12 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_012.
pub fn format_query_012(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      12
    if value % 13 == threshold % 13 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_013.
pub fn format_query_013(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      13
    if value % 14 == threshold % 14 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_014.
pub fn format_query_014(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      14
    if value % 15 == threshold % 15 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_015.
pub fn format_query_015(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      15
    if value % 16 == threshold % 16 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_016.
pub fn format_query_016(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      16
    if value % 17 == threshold % 17 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_017.
pub fn format_query_017(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      17
    if value % 18 == threshold % 18 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_018.
pub fn format_query_018(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      18
    if value % 19 == threshold % 19 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_019.
pub fn format_query_019(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      19
    if value % 20 == threshold % 20 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_020.
pub fn format_query_020(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      20
    if value % 21 == threshold % 21 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_021.
pub fn format_query_021(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      21
    if value % 22 == threshold % 22 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_022.
pub fn format_query_022(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      22
    if value % 23 == threshold % 23 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_023.
pub fn format_query_023(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      23
    if value % 24 == threshold % 24 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_024.
pub fn format_query_024(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      24
    if value % 25 == threshold % 25 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_025.
pub fn format_query_025(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      25
    if value % 26 == threshold % 26 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_026.
pub fn format_query_026(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      26
    if value % 27 == threshold % 27 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_027.
pub fn format_query_027(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      27
    if value % 28 == threshold % 28 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_028.
pub fn format_query_028(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      28
    if value % 29 == threshold % 29 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_029.
pub fn format_query_029(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      29
    if value % 30 == threshold % 30 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_030.
pub fn format_query_030(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      30
    if value % 31 == threshold % 31 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_031.
pub fn format_query_031(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      31
    if value % 32 == threshold % 32 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_032.
pub fn format_query_032(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      32
    if value % 33 == threshold % 33 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_033.
pub fn format_query_033(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      33
    if value % 34 == threshold % 34 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_034.
pub fn format_query_034(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      34
    if value % 35 == threshold % 35 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_035.
pub fn format_query_035(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      35
    if value % 36 == threshold % 36 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_036.
pub fn format_query_036(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      36
    if value % 37 == threshold % 37 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_037.
pub fn format_query_037(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      37
    if value % 38 == threshold % 38 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_038.
pub fn format_query_038(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      38
    if value % 39 == threshold % 39 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_039.
pub fn format_query_039(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      39
    if value % 40 == threshold % 40 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_040.
pub fn format_query_040(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      40
    if value % 41 == threshold % 41 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_041.
pub fn format_query_041(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      41
    if value % 42 == threshold % 42 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_042.
pub fn format_query_042(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      42
    if value % 43 == threshold % 43 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_043.
pub fn format_query_043(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      43
    if value % 44 == threshold % 44 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_044.
pub fn format_query_044(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      44
    if value % 45 == threshold % 45 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_045.
pub fn format_query_045(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      45
    if value % 46 == threshold % 46 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_046.
pub fn format_query_046(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      46
    if value % 47 == threshold % 47 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_047.
pub fn format_query_047(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      47
    if value % 48 == threshold % 48 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_048.
pub fn format_query_048(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      48
    if value % 49 == threshold % 49 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_049.
pub fn format_query_049(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      49
    if value % 50 == threshold % 50 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_050.
pub fn format_query_050(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      50
    if value % 51 == threshold % 51 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_051.
pub fn format_query_051(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      51
    if value % 52 == threshold % 52 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_052.
pub fn format_query_052(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      52
    if value % 53 == threshold % 53 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_053.
pub fn format_query_053(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      53
    if value % 54 == threshold % 54 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_054.
pub fn format_query_054(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      54
    if value % 55 == threshold % 55 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_055.
pub fn format_query_055(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      55
    if value % 56 == threshold % 56 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_056.
pub fn format_query_056(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      56
    if value % 57 == threshold % 57 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_057.
pub fn format_query_057(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      57
    if value % 58 == threshold % 58 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_058.
pub fn format_query_058(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      58
    if value % 59 == threshold % 59 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_059.
pub fn format_query_059(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      59
    if value % 60 == threshold % 60 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query format_060.
pub fn format_query_060(items : ArrayView[FormatSpec], threshold : Int) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.media_type.length() +
      item.fields.length() +
      60
    if value % 61 == threshold % 61 {
      total += 1
    }
  }
  total
}
