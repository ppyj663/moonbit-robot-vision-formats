///|
pub fn imageextra_query_score(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut score = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec
    if value >= threshold {
      score += 1
    }
  }
  score
}

///|
/// Stable application query imageextra_001.
pub fn imageextra_query_001(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 1
    if value % 2 == threshold % 2 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_002.
pub fn imageextra_query_002(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 2
    if value % 3 == threshold % 3 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_003.
pub fn imageextra_query_003(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 3
    if value % 4 == threshold % 4 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_004.
pub fn imageextra_query_004(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 4
    if value % 5 == threshold % 5 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_005.
pub fn imageextra_query_005(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 5
    if value % 6 == threshold % 6 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_006.
pub fn imageextra_query_006(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 6
    if value % 7 == threshold % 7 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_007.
pub fn imageextra_query_007(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 7
    if value % 8 == threshold % 8 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_008.
pub fn imageextra_query_008(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 8
    if value % 9 == threshold % 9 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_009.
pub fn imageextra_query_009(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() + item.path.length() + item.stamp.sec + 9
    if value % 10 == threshold % 10 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_010.
pub fn imageextra_query_010(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      10
    if value % 11 == threshold % 11 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_011.
pub fn imageextra_query_011(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      11
    if value % 12 == threshold % 12 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_012.
pub fn imageextra_query_012(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      12
    if value % 13 == threshold % 13 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_013.
pub fn imageextra_query_013(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      13
    if value % 14 == threshold % 14 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_014.
pub fn imageextra_query_014(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      14
    if value % 15 == threshold % 15 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_015.
pub fn imageextra_query_015(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      15
    if value % 16 == threshold % 16 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_016.
pub fn imageextra_query_016(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      16
    if value % 17 == threshold % 17 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_017.
pub fn imageextra_query_017(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      17
    if value % 18 == threshold % 18 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_018.
pub fn imageextra_query_018(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      18
    if value % 19 == threshold % 19 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_019.
pub fn imageextra_query_019(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      19
    if value % 20 == threshold % 20 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_020.
pub fn imageextra_query_020(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      20
    if value % 21 == threshold % 21 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_021.
pub fn imageextra_query_021(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      21
    if value % 22 == threshold % 22 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_022.
pub fn imageextra_query_022(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      22
    if value % 23 == threshold % 23 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_023.
pub fn imageextra_query_023(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      23
    if value % 24 == threshold % 24 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_024.
pub fn imageextra_query_024(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      24
    if value % 25 == threshold % 25 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_025.
pub fn imageextra_query_025(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      25
    if value % 26 == threshold % 26 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_026.
pub fn imageextra_query_026(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      26
    if value % 27 == threshold % 27 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_027.
pub fn imageextra_query_027(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      27
    if value % 28 == threshold % 28 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_028.
pub fn imageextra_query_028(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      28
    if value % 29 == threshold % 29 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_029.
pub fn imageextra_query_029(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      29
    if value % 30 == threshold % 30 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_030.
pub fn imageextra_query_030(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      30
    if value % 31 == threshold % 31 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_031.
pub fn imageextra_query_031(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      31
    if value % 32 == threshold % 32 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_032.
pub fn imageextra_query_032(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      32
    if value % 33 == threshold % 33 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_033.
pub fn imageextra_query_033(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      33
    if value % 34 == threshold % 34 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_034.
pub fn imageextra_query_034(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      34
    if value % 35 == threshold % 35 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_035.
pub fn imageextra_query_035(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      35
    if value % 36 == threshold % 36 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_036.
pub fn imageextra_query_036(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      36
    if value % 37 == threshold % 37 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_037.
pub fn imageextra_query_037(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      37
    if value % 38 == threshold % 38 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_038.
pub fn imageextra_query_038(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      38
    if value % 39 == threshold % 39 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_039.
pub fn imageextra_query_039(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      39
    if value % 40 == threshold % 40 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_040.
pub fn imageextra_query_040(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      40
    if value % 41 == threshold % 41 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_041.
pub fn imageextra_query_041(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      41
    if value % 42 == threshold % 42 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_042.
pub fn imageextra_query_042(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      42
    if value % 43 == threshold % 43 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_043.
pub fn imageextra_query_043(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      43
    if value % 44 == threshold % 44 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_044.
pub fn imageextra_query_044(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      44
    if value % 45 == threshold % 45 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_045.
pub fn imageextra_query_045(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      45
    if value % 46 == threshold % 46 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_046.
pub fn imageextra_query_046(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      46
    if value % 47 == threshold % 47 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_047.
pub fn imageextra_query_047(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      47
    if value % 48 == threshold % 48 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_048.
pub fn imageextra_query_048(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      48
    if value % 49 == threshold % 49 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_049.
pub fn imageextra_query_049(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      49
    if value % 50 == threshold % 50 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_050.
pub fn imageextra_query_050(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      50
    if value % 51 == threshold % 51 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_051.
pub fn imageextra_query_051(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      51
    if value % 52 == threshold % 52 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_052.
pub fn imageextra_query_052(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      52
    if value % 53 == threshold % 53 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_053.
pub fn imageextra_query_053(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      53
    if value % 54 == threshold % 54 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_054.
pub fn imageextra_query_054(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      54
    if value % 55 == threshold % 55 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_055.
pub fn imageextra_query_055(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      55
    if value % 56 == threshold % 56 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_056.
pub fn imageextra_query_056(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      56
    if value % 57 == threshold % 57 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_057.
pub fn imageextra_query_057(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      57
    if value % 58 == threshold % 58 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_058.
pub fn imageextra_query_058(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      58
    if value % 59 == threshold % 59 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_059.
pub fn imageextra_query_059(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      59
    if value % 60 == threshold % 60 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query imageextra_060.
pub fn imageextra_query_060(
  items : ArrayView[ImageFrameRef],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.frame_id.length() +
      item.path.length() +
      item.stamp.sec +
      60
    if value % 61 == threshold % 61 {
      total += 1
    }
  }
  total
}
