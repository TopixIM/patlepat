
Patlepat
------

> tiny game.

前端生产资源使用 `https://cos-sh.tiye.me/TopixIM/patlepat/`，同仓库 PR 上传到 `pr/<编号>/<run-id>/<attempt>/` 隔离路径。COS 仅上传 `dist/`；使用正式 `cos-upload-action@v1.2.0` 的 `public-base-url` 和内置 verify，不添加独立上传校验脚本。

保留既有 web rsync 和独立的 `/servers/calcium-workflow/` 后端部署目录、打包及 SSH 主机校验。生产排队且不取消运行中上传，一次 main SHA 预检跳过旧提交；不保证原子部署。沿用 PR secrets 缺失时跳过上传、生产缺失时报错的策略，fork PR 只构建。

开发使用正式 Calcit/procs 0.27.0、caps 0.1.1、Node.js 24、Yarn 4.18.0。先运行 `caps --ci`、`yarn install --immutable`；`yarn build` 保留相对路径默认值，CI 通过 `VITE_BASE_URL` 指定 CDN。入口明确 browser/native，CI 保留严格检查并覆盖全部应用 namespace 的公开定义；不新增测试框架或统计预算门禁。

client dispatch 使用单参数 enum，移除伪装函数参数数量的 coerce；无 payload 消息省略 data，服务端仍按 nil 读取。使用 typed location-host 避免同名绑定，离线先判断 store 再读取字段，Dayjs format 明确宿主方法参数合同。隔离浏览器验收覆盖启动、登录页、输入状态、消息日期显示与实际 ws-edn 编码；不连接真实服务、不操作登录存储，不代表完整多人游戏流程验收。依赖保持既有发布标签，三个原发布图 warning 保留，不声称 strict Caps 通过。

### Workflow

https://github.com/Cumulo/calcium-workflow

### License

MIT
