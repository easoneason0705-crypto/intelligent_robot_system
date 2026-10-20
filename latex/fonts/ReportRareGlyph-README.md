# 姓名罕见字补充字体

`ReportRareGlyph.otf` 仅保留 U+5FDE（忞），用于第二小组成员姓名。原有 Fandol 不含此字。

- 来源：NotoSansCJKsc-Regular.otf，https://github.com/notofonts/noto-cjk/tree/main/Sans/OTF/SimplifiedChinese
- 本地获取日期：2026-10-20。
- 使用 fontTools 子集化并将字体名称改为 ReportRareGlyph，不再沿用原字体名称。
- 原许可证见 `ReportRareGlyph-LICENSE.txt`（SIL Open Font License 1.1）。
- `preamble.tex` 中 `\LuoMin` 用此字体渲染姓名的罕见字；Overleaf 无需额外安装系统字体。
