# Calcit Agent 指南

本项目使用 canonical `calcit.cirru` 作为源码快照，不再维护 `compact.cirru`。

开始查询或修改前，先读取匹配项目声明版本的紧凑契约；首次接触、digest 变化或涉及新能力时读取完整指南：

```bash
calcit docs agents --contract
calcit docs agents --full # 首次接触、契约变化或按需查阅
```

需要了解升级、快照格式、依赖或结构化编辑时，直接查询内置文档：

```bash
calcit docs read upgrade --full
calcit docs read project-structure.md --full
calcit tree --help
calcit edit --help
```

常用验证命令：

```bash
caps --ci
calcit calcit.cirru edit format
calcit calcit.cirru --check-only
calcit calcit.cirru js
yarn vite
```

不要用文本替换直接修改 `calcit.cirru`；使用 `calcit edit`、`calcit tree` 或其他文档中说明的结构化命令。Respo API 和项目特定约定也通过 `calcit docs read <doc>` 查询，不在本文件重复维护。
