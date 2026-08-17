///|
pub fn manifest_query_score(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut score = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length()
    if value >= threshold {
      score += 1
    }
  }
  score
}

///|
/// Stable application query manifest_001.
pub fn manifest_query_001(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      1
    if value % 2 == threshold % 2 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_002.
pub fn manifest_query_002(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      2
    if value % 3 == threshold % 3 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_003.
pub fn manifest_query_003(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      3
    if value % 4 == threshold % 4 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_004.
pub fn manifest_query_004(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      4
    if value % 5 == threshold % 5 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_005.
pub fn manifest_query_005(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      5
    if value % 6 == threshold % 6 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_006.
pub fn manifest_query_006(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      6
    if value % 7 == threshold % 7 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_007.
pub fn manifest_query_007(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      7
    if value % 8 == threshold % 8 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_008.
pub fn manifest_query_008(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      8
    if value % 9 == threshold % 9 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_009.
pub fn manifest_query_009(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      9
    if value % 10 == threshold % 10 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_010.
pub fn manifest_query_010(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      10
    if value % 11 == threshold % 11 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_011.
pub fn manifest_query_011(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      11
    if value % 12 == threshold % 12 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_012.
pub fn manifest_query_012(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      12
    if value % 13 == threshold % 13 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_013.
pub fn manifest_query_013(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      13
    if value % 14 == threshold % 14 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_014.
pub fn manifest_query_014(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      14
    if value % 15 == threshold % 15 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_015.
pub fn manifest_query_015(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      15
    if value % 16 == threshold % 16 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_016.
pub fn manifest_query_016(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      16
    if value % 17 == threshold % 17 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_017.
pub fn manifest_query_017(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      17
    if value % 18 == threshold % 18 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_018.
pub fn manifest_query_018(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      18
    if value % 19 == threshold % 19 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_019.
pub fn manifest_query_019(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      19
    if value % 20 == threshold % 20 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_020.
pub fn manifest_query_020(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      20
    if value % 21 == threshold % 21 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_021.
pub fn manifest_query_021(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      21
    if value % 22 == threshold % 22 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_022.
pub fn manifest_query_022(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      22
    if value % 23 == threshold % 23 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_023.
pub fn manifest_query_023(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      23
    if value % 24 == threshold % 24 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_024.
pub fn manifest_query_024(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      24
    if value % 25 == threshold % 25 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_025.
pub fn manifest_query_025(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      25
    if value % 26 == threshold % 26 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_026.
pub fn manifest_query_026(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      26
    if value % 27 == threshold % 27 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_027.
pub fn manifest_query_027(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      27
    if value % 28 == threshold % 28 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_028.
pub fn manifest_query_028(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      28
    if value % 29 == threshold % 29 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_029.
pub fn manifest_query_029(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      29
    if value % 30 == threshold % 30 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_030.
pub fn manifest_query_030(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      30
    if value % 31 == threshold % 31 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_031.
pub fn manifest_query_031(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      31
    if value % 32 == threshold % 32 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_032.
pub fn manifest_query_032(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      32
    if value % 33 == threshold % 33 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_033.
pub fn manifest_query_033(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      33
    if value % 34 == threshold % 34 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_034.
pub fn manifest_query_034(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      34
    if value % 35 == threshold % 35 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_035.
pub fn manifest_query_035(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      35
    if value % 36 == threshold % 36 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_036.
pub fn manifest_query_036(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      36
    if value % 37 == threshold % 37 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_037.
pub fn manifest_query_037(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      37
    if value % 38 == threshold % 38 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_038.
pub fn manifest_query_038(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      38
    if value % 39 == threshold % 39 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_039.
pub fn manifest_query_039(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      39
    if value % 40 == threshold % 40 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_040.
pub fn manifest_query_040(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      40
    if value % 41 == threshold % 41 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_041.
pub fn manifest_query_041(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      41
    if value % 42 == threshold % 42 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_042.
pub fn manifest_query_042(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      42
    if value % 43 == threshold % 43 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_043.
pub fn manifest_query_043(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      43
    if value % 44 == threshold % 44 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_044.
pub fn manifest_query_044(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      44
    if value % 45 == threshold % 45 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_045.
pub fn manifest_query_045(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      45
    if value % 46 == threshold % 46 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_046.
pub fn manifest_query_046(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      46
    if value % 47 == threshold % 47 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_047.
pub fn manifest_query_047(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      47
    if value % 48 == threshold % 48 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_048.
pub fn manifest_query_048(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      48
    if value % 49 == threshold % 49 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_049.
pub fn manifest_query_049(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      49
    if value % 50 == threshold % 50 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_050.
pub fn manifest_query_050(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      50
    if value % 51 == threshold % 51 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_051.
pub fn manifest_query_051(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      51
    if value % 52 == threshold % 52 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_052.
pub fn manifest_query_052(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      52
    if value % 53 == threshold % 53 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_053.
pub fn manifest_query_053(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      53
    if value % 54 == threshold % 54 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_054.
pub fn manifest_query_054(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      54
    if value % 55 == threshold % 55 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_055.
pub fn manifest_query_055(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      55
    if value % 56 == threshold % 56 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_056.
pub fn manifest_query_056(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      56
    if value % 57 == threshold % 57 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_057.
pub fn manifest_query_057(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      57
    if value % 58 == threshold % 58 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_058.
pub fn manifest_query_058(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      58
    if value % 59 == threshold % 59 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_059.
pub fn manifest_query_059(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      59
    if value % 60 == threshold % 60 {
      total += 1
    }
  }
  total
}

///|
/// Stable application query manifest_060.
pub fn manifest_query_060(
  items : ArrayView[DatasetManifest],
  threshold : Int,
) -> Int {
  let mut total = 0
  for item in items {
    let value = item.name.length() +
      item.root.length() +
      item.image_index.length() +
      60
    if value % 61 == threshold % 61 {
      total += 1
    }
  }
  total
}
