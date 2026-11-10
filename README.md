
Patlepat
------

> tiny game.

## 升级与部署

前后端配套使用正式 Calcit 与 `@calcit/procs` 0.40.0，依赖以 `deps.cirru` 为准。后端需提前安装依赖并构建对应的 std、WSS 与 Regex 原生库。部署前另存独立存档备份，再同步切换前后端并刷新旧页面。原工作流只复制文件，依赖安装和进程切换由服务端运维完成。

聊天、模板和卡片的应用回调接收具名 `Op`。输入从 Respo 事件读取，旧文本事件 Map 继续由受检入口处理。Alerts 的旧插件派发和服务端操作仍经匿名 Cirru EDN 边界适配。登录键沿用 `patlepat`，公开用户视图不包含密码。

前端 `dist/` 上传到 COS，生产 CDN 路径为 `https://cos-sh.tiye.me/TopixIM/patlepat/`。同仓库 PR 使用隔离前缀与 Action 内置校验。原 web rsync 和独立的 `/servers/calcium-workflow/` 服务端路径继续沿用。

## 开发与验证

使用 caps 0.1.1、Node.js 24 和 Yarn 4.18.0。运行 `caps --strict --ci`、`yarn install --immutable` 和 `yarn build`。CI 保留两端的 strict 和命名空间检查、原生测试，以及同版本共享 runner 的 native/JS 契约回放。

拼句沿用原模板槽位顺序和卡片选择规则。卡片不足时保留原有内容，删除当前模板后界面会显示模板已不存在。

旧存档按字段解码，保留作者和时间。损坏存档在监听前拒绝启动。隔离运行时请把 Snapshot、依赖清单和模块视图放到独立目录，并设置 `PATLEPAT_BIND_ADDRESS=127.0.0.1` 和测试端口。存档路径按 Snapshot 目录定位。

### Workflow

https://github.com/Cumulo/calcium-workflow

### License

MIT
