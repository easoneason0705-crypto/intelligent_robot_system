# 智能机器人实验报告（LaTeX 协作目录）

入口为 **main.tex**，编译器使用 **XeLaTeX**。本报告为**第五大组共同实验报告**，覆盖 TonyPi 与方式一至四，不是第一小组单独报告。第1、3、10组姓名及学号已按2026-10-20用户提供信息补齐；方式四责任小组确认为第10组。第1组职责参考 `v1.pdf`，第2组和第10组分工沿用已提交材料，第3组个人具体分工待确认。详细个人贡献统一放第2章，封面采用全队名单摘要。

## 已确认成员

| 小组 | 姓名与学号 |
|---|---|
| 第1组 | 杨开元24345063、林楗棋24363050、曹淇涵24363003、刘小凡24363059 |
| 第3组 | 何奇涛24363027、林子昂24363052、李雨翰24363043、陈韦诺24363158 |
| 第10组（方式四） | 徐杰鸿24363164、王振宇24363096、林琢严24363054、何爽24363028 |

第2组名单保留原投稿的陈凯华、罗忞、刘彦廷、许程奕，学号未提供；未擅自补填。`data/team_members.csv` 提供当前身份登记表，后续修改需同时核对封面、第2章及对应方式章节。

## 查看与编译

- [已编译共同报告](report-draft.pdf)：含实景照片、比赛视频截图、各组技术、共同协调及验收矩阵；编译页数见 `VALIDATION.md` 当前记录。
- [主文件](main.tex)、[共同报告封面](cover_collective.tex)、[公共样式](preamble.tex)、[封面信息](metadata.tex)。旧 `cover.tex` 保留为第一小组历史封面，不被主文件引用。
- 将完整 latex 目录上传到 Overleaf，主文件选 main.tex，编译器选 XeLaTeX。fonts/ 随附中文字体，figures/ 提供图形。
- 本地运行 `build.cmd`，或执行 `latexmk -xelatex -interaction=nonstopmode -halt-on-error -outdir=build main.tex`。脚本编译后同步 `main.pdf` 和 `report-draft.pdf`，避免两个预览版本不一致。
- 不提交 build/、编译辅助文件、缓存、完整视频及 bag。

## 各组编辑位置

| 内容 | 源文件 | 图形目录 |
|---|---|---|
| 第一小组：TonyPi | sections/10_humanoid.tex、11_humanoid_analysis.tex、12_humanoid_contracts.tex | figures/humanoid/；状态机见 figures/*.tex |
| 第一小组：方式二 | sections/30_follow2.tex、31_follow2_analysis.tex、32_follow2_contracts.tex | figures/follow2/、figures/analysis/、figures/enriched/ |
| 方式一 | sections/20_follow1.tex | figures/follow1/；原有独立稿 follow1/ar_marker_report.tex 保留 |
| 方式三 | sections/40_follow3.tex | figures/follow3/ |
| 方式四 | sections/50_follow4.tex | figures/follow4/ |
| 大组与组内分工 | sections/02_division.tex；全队封面摘要在 cover_collective.tex | 无 |
| 全队方案与接口 | sections/03_collective_coordination.tex、03_architecture.tex | figures/collective_system.tex |
| 实验、视频与共同验收 | sections/60_experiments.tex、61_video_evidence.tex、62_collective_results.tex | figures/site/、figures/video/ |
| 引用与实现依据 | sections/80_references.tex、90_reproduction.tex、91_code_analysis.tex、92_parameter_snapshot.tex | data/、code_snapshot/、code_snapshot_current/ |

各组独立维护对应章节和图形；公共入口、样式和跨模块接口协商调整。不要用某位贡献者在仓库 README 中的“我们组”推断全队组号，也不要将视频画面顺序自动等同于方式编号。

本轮以远端 `139c0b7` 为整合基线。方式四最新实现是 `team_turtlebot_follow_plus` C++/AR三车队列，不是早期地图位姿适配器。方式四投稿中的三车子场景不能自动替代全队四种方式联合验收；其点云首车也不能直接认定运行了方式三完整包。历史源码分析与图表仍保留并注明来源，人员职责不作无依据扩展。`v1.pdf` 是本地参考原件，未改动；本次未重复提交该PDF。

## 图形与证据

- 状态机、节点和守卫图为可编辑 TikZ，科研曲线以矢量 PDF 为主。
- 比赛视频只提交引用帧；时间戳和原片摘要见 data/video_evidence.json，裁剪框见 data/enriched_figures.json，完整原始帧同时保留。
- 车辆与方式身份未知，正文按“近端跟随车／后续车辆”描述。
- 动作时长来自真实 d6a；投票、时效、采样与终点边界图为源码或明确输入的解析说明，不作为实测性能。
- code_snapshot/ 保留原分析依据；code_snapshot_current/ 保留43a7771复核文件，差异见 data/github_alignment.json。最新门控功能包归属在正文说明。
- 未采集到的结果保持为未测；视频不单独证明完整终点放置或末车停稳。

## 协作与同步

从最新 main 创建各组报告分支，只修改对应章节与图形，通过 Pull Request 合并。其他小组原有独立文件和图片目录保留。新增图表需有前后解释，实验结果关联代码版本、配置和原始证据。
