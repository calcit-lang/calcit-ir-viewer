# Calcit IR Viewer

读取官方 Calcit 导出的 `program-ir.cirru`，查看命名空间、定义、类型与预览。
Demo: http://repo.calcit-lang.org/calcit-ir-viewer/ 。

### 使用者影响：Calcit 0.32.1

开发与 CI 配对正式 Calcit / `@calcit/procs` **0.32.1**，使用已发布 Reel 0.7.0、UI 0.9.0、Respo 0.17.1，传递 JS-FFI 0.2.9、Router 0.9.0-alpha.4。重新严格安装依赖、生成 JS 并刷新页面，不混装旧 runtime。项目版本仍为 0.0.5，本 PR 不发布 tag/npm、不合并或生产部署。

导入、预览、书签、IndexedDB 完整恢复及四处真实 `hud!` 保留；不读取真实 IR/存档，不清空数据或改变后端路径。

### 迁移与边界

- 官方 formatter 转换 10 处旧类型形式。书签回调采用实际 `Map<Tag,Dynamic>` 事件与 Enum 派发，不继续要求“可接收任意 Dynamic”的派发函数；原 Enum 检查、decode-op 与 Reel 控制保持。
- 入口 Fn 从 Dynamic 收紧为 Enum。现有路径式 type-slot 使用显式 Enum schema 的 `DispatchOp` 代表值；它不会被派发，不冒充名义业务 Op，不使用 `:dynamic` 或新增强转。
- 删除无效的 `reel.util/generate-id!` 导入；原调用早已解析为核心同名函数，现在明确沿用该行为，未替换 ID 生成算法。
- 旧同名 StoreData Struct 按 wire 数据处理：验证名称、转字段 Map、验证所有字段/书签载荷，并重建本地 StoreData 与 Bookmark。名称不代表名义身份；不同名称、坏字段和非法书签仍拒绝。原 Map 输入继续校验，未将原旧档测试改成本地名义实例。

### 完整恢复

完整 IR 存在 IndexedDB 的 `keyval-store` 数据库、`calcit-ir-viewer` 键，避开 localStorage 容量限制。启动优先读取 IndexedDB；无记录时兼容旧 localStorage，并保留旧副本，不删除数据。

恢复失败会报错并暂停覆盖，保存失败也会提示。停止操作 1 秒后合并保存，只保留最新待存状态，同一时间最多一次写入；原定时器仅刷新待存更改，未变化时不重复序列化。离页的异步写入仍只能尽力完成，请保留原 IR 文件。复用 idb-keyval，不增加存储/上传框架或校验脚本。

### 开发与验证

Node.js 24、Yarn 4.18.0、Caps 0.1.1。新解析 npm 版本须已发布至少 60 分钟，无单包例外；已有 immutable 锁版本不重新计算年龄。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format edn
calcit analyze quality --baseline config/calcit-quality.cirru
calcit test app.comp.container/format-type-info --require-match
yarn build
node --test scripts/ir-viewer-regression.test.mjs
```

原公开命名空间、完整 strict、零动态方法、质量预算、原生 1 项和 Node 10 项断言保持。Node 测试只将已删除的 Option JS helper 改为当前命名构造，不减少容量、旧副本优先级、失败保护或单次写入检查。不新增测试框架或验证脚本，unsafe 上限仍为 0；真实开放 IR 与 UI 边界保留，不声称全部类型闭合。

原测试中的 9 MiB 合成 IR/IndexedDB 回归不代替真实浏览器文件导入与刷新验收。源码仅 calcit.cirru/deps.cirru，js-out/dist 不入库。

### 前端部署

COS action v1.2.0 仅上传 `dist/`，使用内置 HTML 引用及公开文件 verify。PR 前缀仍为 `pr/<number>/<run>/<attempt>/`，队列分 PR/生产且不取消；原 rsync 源 `dist/*` 和服务器目标不变，只在 main push 部署前端。

COS/rsync Action 改用与原 SHA 对应的精确正式 tag，接受可移动 tag 风险；原权限、类型门禁和部署条件保留。不添加独立验证脚本，不扩大密钥权限。

https://github.com/calcit-lang/respo-calcit-workflow

MIT
