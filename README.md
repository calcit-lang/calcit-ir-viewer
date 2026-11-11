# Calcit IR Viewer

读取官方 Calcit 导出的 `program-ir.cirru`，查看命名空间、定义、类型与预览。
Demo: http://repo.calcit-lang.org/calcit-ir-viewer/ 。

### 使用者影响

本项目使用 Calcit 与 `@calcit/procs` 0.41.1，模块图使用正式版本 Reel 0.11.0、UI 0.15.2、Respo 0.19.5。升级后重新安装依赖、生成 JS 并刷新页面，基础样式可能随补丁变化。

组件状态游标只接受 Tag、字符串和数字。导入的 IR 与存档仍经原入口解码，IndexedDB 保存完整 IR。类型展示的可选字段使用显式 Option，并保留缺失字段的原占位文本。

文件面板的游标解码也复用已有 `CursorKey` union，不再在这一处退回 `List Dynamic`。
这会更早拒绝非法游标元素；合法混合游标的派发、状态树和存档格式保持。
恢复入口同样检查根 `:states/:cursor`，非法元素沿用原恢复失败提示与暂停覆盖流程，
不等到渲染时才抛错；其他状态 payload 仍保持开放。
旧 localStorage 回退读取使用已有受检 getter：只有 key 真正缺失才视为空存档，
读取异常走同一恢复失败流程，避免后续空 IndexedDB 存档遮住旧副本。
导入文件顶层必须是 Tag 键的 Map，内部节点仍按编译器实际输出读取。界面操作使用具名 `Op`。可预览的节点使用 Map，保留节点内混合键的元数据。关闭预览使用独立操作。Reel 控制和普通操作在分派时由 `ResolvedOp` union 区分。历史书签解码与存档结构保持兼容。

### 完整恢复

完整 IR 存在 IndexedDB 的 `keyval-store` 数据库、`calcit-ir-viewer` 键，避开 localStorage 容量限制。启动优先读取 IndexedDB；无记录时兼容旧 localStorage，并保留旧副本，不删除数据。

恢复失败会报错并暂停覆盖，保存失败也会提示。停止操作 1 秒后合并保存，只保留最新待存状态，同一时间最多一次写入；原定时器仅刷新待存更改，未变化时不重复序列化。离页的异步写入仍只能尽力完成，请保留原 IR 文件。复用 idb-keyval，不增加存储/上传框架或校验脚本。

### 开发与验证

Node.js 24、Yarn 4.18.0、Caps 0.1.1。新解析 npm 版本须已发布至少 60 分钟，无单包例外；已有 immutable 锁版本不重新计算年龄。

以下命令在 Bash 中运行。

```bash
set -euo pipefail
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format edn
calcit calcit.cirru analyze weak-types --only coverage --coverage-level none,partial --format json |
  jq -e --slurpfile budget config/weak-types-budget.json '
    all(.data.definitions[]; .coverage == $budget[0].coverage[.id])'
calcit calcit.cirru analyze weak-types --format json |
  jq -e --slurpfile budget config/weak-types-budget.json '
    all(.data.definitions[]; .id as $id |
      all(.occurrences | map(.kind) + map(select(.intent == "unresolved") | .intent) | group_by(.)[];
        length <= ($budget[0].weak[$id][.[0]] // 0)))'
calcit test app.comp.container/format-type-info --require-match
yarn build
node --test scripts/ir-viewer-regression.test.mjs
```

原公开命名空间、完整 strict、零动态方法、质量预算、原生 1 项和 Node 10 项断言保持。Node 测试只将已删除的 Option JS helper 改为当前命名构造，不减少容量、旧副本优先级、失败保护或单次写入检查。不新增测试框架或验证脚本，unsafe 上限仍为 0；真实开放 IR 与 UI 边界保留，不声称全部类型闭合。

原测试中的 9 MiB 合成 IR/IndexedDB 回归不代替真实浏览器文件导入与刷新验收。源码仅 calcit.cirru/deps.cirru，js-out/dist 不入库。

本轮保留原门禁，按 0.34.2 实测将 `dispatch!` 的不完整类型上限从 1 收紧到 0，
Calcit 0.41.1 的现行报告按定义限制弱类型和覆盖率。语法名称与原始 JS 片段的两个渲染组件只接收 String，输入文件仍由原解析入口处理。

### 前端部署

COS action v1.2.0 仅上传 `dist/`，使用内置 HTML 引用及公开文件 verify。PR 前缀仍为 `pr/<number>/<run>/<attempt>/`，队列分 PR/生产且不取消；原 rsync 源 `dist/*` 和服务器目标不变，只在 main push 部署前端。

COS/rsync Action 改用与原 SHA 对应的精确正式 tag，接受可移动 tag 风险；原权限、类型门禁和部署条件保留。不添加独立验证脚本，不扩大密钥权限。

https://github.com/calcit-lang/respo-calcit-workflow

MIT
