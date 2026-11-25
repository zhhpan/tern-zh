# Tern 中文

用于 [Tern](https://stencil.so/tern) 桌面版的简体中文插件。已在 **Windows 版 Tern 0.9.33** 验证。

- 原位汉化「设置」的 14 个分类，包括终端、快捷键、数据库、Git 和主机设置。
- 中文命令面板支持按中英文搜索并执行 Tern 命令。
- 提供「选中即复制」命令，用于开启或关闭该设置。

## 安装

安装需要 Git。在 Tern 中打开终端，运行下面的命令。

```powershell
tern plugin install github.com/zhhpan/tern-zh
```

也可以在原生 **Settings → Plugins → Install…** 输入 `github.com/zhhpan/tern-zh`。

安装后重新打开设置即可看到译文。在 Tern 的命令面板搜索「中文命令面板」即可打开双语命令列表。

更新时加 `--force`。卸载时使用 `remove`。

```powershell
tern plugin install github.com/zhhpan/tern-zh --force
tern plugin remove tern-zh
```

[Tern 插件命令参考](https://docs.stencil.so/tern/reference/cli.html)

## 已知限制

设置页的中文由插件样式绘制，原生设置搜索仍使用英文索引。部分动态状态、菜单、实际路径与快捷键按原文显示。Tern 升级后如有界面结构变化，受影响的译文需要更新。

## 参与翻译

根目录即为可安装的插件。设置页文案位于 CSS 文件的 `content` 和 `--kb-*` 属性，命令译名位于 `titles.luau`。提交译文修正时，可同时附上英文原文、设置分类及 Tern 版本。

下载代码后，在仓库目录运行 `tern plugin install .` 可本地安装。

## 许可证

本项目使用 [MIT 许可证](LICENSE)。部分译文来自 [tern-omp-zh-cn](https://github.com/chengong-art/tern-omp-zh-cn)，许可和版权声明见 [THIRD-PARTY-NOTICES.txt](THIRD-PARTY-NOTICES.txt)。
