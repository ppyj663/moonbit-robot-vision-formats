# moonbit-robot-vision-formats 项目申报书

## 项目概述

`moonbit-robot-vision-formats` 是一个面向机器人视觉离线数据处理的 MoonBit 生态库，聚焦 ROS bag、SLAM、相机标定和数据集整理流程中常见的轻量格式桥接问题。项目不实现 ROS 客户端，也不订阅在线 topic，而是处理已经从机器人采集链路导出的图像时间戳索引、CameraInfo 风格相机参数 YAML、二维轨迹 CSV、深度图元信息和二维标注文件，并提供基于时间容差的多源同步报告。目标用户包括机器人视觉、SLAM、标定工具链和教学实验中的 MoonBit 使用者。

## 生态价值与选题理由

MoonBit 生态中已有通用语言、构建和包管理基础，但面向机器人视觉数据格式的离线工具仍较少。该方向既不是过窄的单一算法题，也避免与成熟通用 CSV/YAML 工具重复：它把机器人视觉场景中的时间戳、坐标系、相机矩阵、深度单位、标注框和多流同步作为核心抽象，为后续接入 MCAP/rosbag manifest、数据集质检、WebAssembly 可视化和教学案例留下扩展空间。MoonBit 的强类型、快速检查、多后端编译和可发布 Mooncakes 包的能力，适合构建这种边界清晰、可测试、可复用的小型工程基础设施。

## 核心功能范围

项目当前实现五类格式与辅助能力：图像索引 CSV 解析/导出；CameraInfo YAML 子集解析/导出与相机投影辅助；二维轨迹 CSV 解析与边界统计；深度图元信息 CSV 解析与合法性检查；二维标注 CSV 解析、几何计算和跨源时间同步。公共 API 还包含格式 schema catalog、DatasetManifest 导出、DatasetQualityReport 质检报告、CLI smoke demo 和生成的 `.mbti` 接口文件。项目明确不包含 ROS 网络通信、图像解码、深度图大文件加载和模型推理，以保持库的可移植性和维护边界。

## 技术路线与实现计划

实现采用 MoonBit 根包作为公共入口，按职责拆分为 `types`、`parse_utils`、`image_index`、`camera_yaml`、`camera_ops`、`trajectory_csv`、`depth_meta`、`annotation_sync`、`annotation_geometry`、`schema_catalog`、`diagnostics` 和 `manifest` 等模块。解析器优先覆盖机器人数据导出脚本中稳定、可审计的文本子集；同步逻辑使用纳秒级 `Stamp` 和容差匹配，输出可序列化的 `SyncReport`；质检逻辑检查空流、相机矩阵形状、深度范围和标注置信度等常见问题。后续可扩展为 richer YAML、立体相机参数、插值策略、MCAP manifest、数据集审查前端和更多机器人数据集样例。

## 开源开发与质量保障

项目采用 Apache-2.0 许可证，公开维护 README、设计说明、Mooncakes 调研记录、OSC2026 自查清单、示例数据和 changelog。GitHub 与 GitLink 分别使用对应账号独立提交历史，避免虚拟贡献者；有效提交次数均超过 10 次。CI 参考 MoonBit community 模板，包含多平台安装、`moon check --target all --deny-warn --fmt`、`moon test --target all`、`moon fmt --check` 和 `moon info` 后的 diff 检查。本地已通过 wasm、wasm-gc、js 目标测试，Mooncakes 发布预检和正式发布均成功。

## 预期成果

最终成果包括一个可在 Mooncakes 获取的 MoonBit 包、可运行测试套件、清晰 README、生成接口文件、CLI 示例和一份面向评审的项目说明。验收时可展示从图像索引、轨迹、深度元信息和标注 CSV 构造同步报告的完整流程，并说明该库如何作为 MoonBit 机器人视觉数据工具链的基础组件继续演进。
