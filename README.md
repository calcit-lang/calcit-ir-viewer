
IR viewer
----

> for reading `program-ir.cirru` file generated from calcit-runner.

Demo http://repo.calcit-lang.org/calcit-ir-viewer/ .

### Workflow

本分支将 Calcit / `@calcit/procs` 配对为正式 `0.30.1`，
Respo 0.16.124、Reel 0.6.41、UI 0.8.0 均使用精确正式 tag。
升级后重启开发服务并刷新页面，不混用旧 runtime。该依赖迁移已在 #29 合并。
原有 IR 导入、书签和预览行为保留；不改变生产路径或自动部署后端。
存档保留原字段布局；恢复时验证字段与书签载荷，并将历史匿名书签还原为声明的 Bookmark 类型。

本轮通过官方受保护事务迁移 72 处旧 Option helper 到 `.some?` / `.unwrap` / `.unwrap-or`，
保留全部 schema、原生测试、10 项 Node 回归和四处页面 `hud!`，不新增强转、预算或校验脚本。
原有 IndexedDB、旧副本兼容、失败暂停覆盖和单次在途写入策略不变。

本轮仅将三处已确认 List 接收者的 `count` 改为首选方法 `.len`：
代码预览中两个 `list?` 分支和删除书签后的边界计算。正式 0.30.1 查询确认
方法仍指向核心 List 计数，107 个生成 JS 模块前后逐字节一致，不改变导入、
IndexedDB、恢复失败处理、页面提示或书签格式，也不新增校验脚本。
受保护准备 CI 的完整 strict、原质量基线、原生 1 项、Node 前后各 10 项及构建通过；
这是源码与生成结果验收，不把此前的真实导入/刷新恢复验收冒充本轮重新执行。

完整 IR 存档改存 IndexedDB（`keyval-store` 数据库中的 `calcit-ir-viewer` 键），
不再受 localStorage 的小容量限制。首次启动优先恢复 IndexedDB；没有记录时兼容读取
原 localStorage 存档并保存到 IndexedDB，保留旧副本、不删除数据。
恢复失败时显示错误并暂停自动覆盖；保存失败也会提示，不把失败当成已保存。
正常运行在停止操作 1 秒后合并保存，只保留最新待存状态、同一时间最多一次写入，
不在每次搜索输入时序列化完整 IR。原定时器只刷新待存更改，未变化时不重复写入；
关闭页面时的异步写入仍只能尽力完成，
请保留原 IR 文件。存储层复用 `idb-keyval`，没有额外上传或验证脚本。

Node.js 24, Yarn 4.18.0.
Keep only `calcit.cirru` and `deps.cirru`; CI rejects retired snapshot files.

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only
yarn build
node --test scripts/ir-viewer-regression.test.mjs
calcit test app.comp.container/format-type-info --require-match
```

`yarn build` compiles the default JS browser entry and builds once; `yarn dev`
compiles initially and starts Vite. For live edits, run `calcit calcit.cirru -w`
in another terminal.

CI builds with absolute COS/CDN asset URLs and uses released COS action v1.2.0's
built-in HTML reference and public upload verification. No extra verification
script is needed. Only frontend `dist` resources are uploaded;
the original server rsync source and destination remain unchanged.
PR paths use `pr/<number>/<run-id>/<attempt>/`; runs queue per PR and separately
for production, without cancellation. Canonical/entry/public, quality baseline,
dynamic-method zero-findings and existing business gates remain; repeated
migration and diagnostic reports are removed. State edits use `update-state-tree` and
single-argument Enum dispatch; regressions cover query/selection, async file
import, state/reel/render round-trips and bookmarks.

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
