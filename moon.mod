// Learn more about moon.mod configuration:
// https://docs.moonbitlang.com/en/latest/toolchain/moon/module.html
//
// To add a dependency, run this command in your terminal:
//   moon add moonbitlang/x
//
// Or manually declare it in `import`, for example:
// import {
//   "moonbitlang/x@0.4.6",
// }

name = "ppyj663/moonbit-robot-vision-formats"

version = "0.1.0"

readme = "README.mbt.md"

repository = "https://github.com/ppyj663/moonbit-robot-vision-formats"

license = "Apache-2.0"

keywords = [ "robotics", "vision", "csv", "yaml", "dataset", "slam" ]

preferred_target = "wasm-gc"

description = "Offline robotics vision format bridge for image timestamps, camera calibration, trajectories, depth metadata and annotation sync."
