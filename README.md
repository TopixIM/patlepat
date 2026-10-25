
Patlepat
------

> tiny game.

前端生产资源使用 `https://cos-sh.tiye.me/TopixIM/patlepat/`，同仓库 PR 上传到 `pr/<编号>/<run-id>/<attempt>/` 隔离路径。COS 仅上传 `dist/`；使用正式 `cos-upload-action@v1.2.0` 的 `public-base-url` 和内置 verify，不添加独立上传校验脚本。

保留既有 web rsync 和独立的 `/servers/calcium-workflow/` 后端部署目录、打包及 SSH 主机校验。生产排队且不取消运行中上传，一次 main SHA 预检跳过旧提交；不保证原子部署。沿用 PR secrets 缺失时跳过上传、生产缺失时报错的策略，fork PR 只构建。

本分支正在迁移，尚不可部署。前后端协议、模板/卡片及存档需要一起验收，不能只更新前端后继续连接旧服务。
开发使用精确配对的正式 Calcit/procs `0.30.1`、caps 0.1.1、Node.js 24、Yarn 4.18.0，
模块使用兼容的精确正式 tag。移除未使用的 Lilac/Memof 直接依赖。
CI 执行 `caps --strict --ci`、`yarn install --immutable`；本地不执行 Caps。
`yarn build` 保留相对路径默认值，CI 通过 `VITE_BASE_URL` 指定 CDN。入口明确 browser/native，
新增完整 `fix --workflow strict --verify`，保留原入口、全部应用 namespace 和原测试；
不新增测试框架或统计预算门禁。Yarn 移除原先的 `npmMinimalAgeGate: 0` 与过期 alpha
runtime 豁免，恢复默认隔离，保留 `enableScripts: false` 和原 Git 来源策略。

本次正式版配对只补齐四个组件定义内七处自有回调的参数/返回合同，明确事件 Map、
Enum dispatch 与 Prompt 的 String 输入；不改变业务表达式、公开模型、协议或附属测试。
keydown、Prompt 外层及文本回调保留原真实返回行为，不强行补 Unit；Alerts 0.10.57 的
Prompt 返回合同仍开放，上游已在 #104 跟踪并于更新正式版本修复，本兼容依赖图不冒充该修复。
HUD 和原前后端部署路径不变，临时迁移 CI、事务脚本和宿主回放不进入正式 PR。
本次正式图已通过完整 strict（0 诊断）、browser 82/native 103 定义检查、原生 12/12、
原 native/JS 合同各 6/6（无排除）、immutable 安装及构建；临时回放确认原 UTF16/换行
遮盖行为和本地 Dayjs 时钟格式不变。135 个定义完整前后视图仅有上述七处回调 hint 差异。
以下既有业务/运行验收来自先前 alpha 迁移，不代表本次正式依赖图的多人 UI、账户存储、
真实 WebSocket、退出保存或冷启动已经重验。上线前仍须协调后端工具链、备份与回滚。

当前已用具名 Db/Template/Slot/Card/Message 等模型迁移模板创建、选择、删除及卡片增删，
并保留模板 ID、按位置生成的槽位 ID/顺序、卡片作者和操作记录。无效模板/槽位引用不再
创建无法解码的部分对象；删除当前模板仍保留旧选择 ID，由界面显示“模板已不存在”。
账户、会话、路由、聊天、拼句操作已迁入具名 Op，公开 UserView 不包含密码，游客 Store
不暴露聊天和模板。修复拼句丢掉最后模板片段的问题，保留原 Map 首次遍历的卡片消费规则，
不改成 FIFO；卡片不足时不写结果或消费其他槽位，纯文本模板也能完整显示。
使用精确 regex 0.0.26 源码构建本地动态库；native 服务可达检查 74/74、全部本仓库服务定义
103/103、原生附属测试 12/12 通过。操作、旧 Map 存档、Store/增量 patch 和纯拼句四项
可移植合同在 native/JS 各 4/4、无排除；并非所有业务测试跨后端通过。
服务改用 Number 会话 ID、具名 Op 和 Enum patch；只在发送被接受时推进缓存，背压后重试。
旧存档按字段解码，保留作者和原时间；不为缺少时间的数据伪造值。损坏存档在监听前拒绝启动。
隔离临时目录中的真实双 WebSocket 客户端已验证模板/卡片消费、聊天、成员和退出隐私，
正常退出保存后，冷启动可恢复合成账户、模板、卡片及消息；未读取生产数据。
客户端已分开保存 raw patch tree 与 `Option<Store>`，patch 和 Store 解码都成功才推进状态；
URL 参数改用受检宿主接口，移除未使用的 url-parse 依赖和客户端 unsafe 强转。
登录状态、导航、成员、标签栏和模板列表/预览已迁移为具体类型，这部分定义检查 10/10。
预览按原槽位顺序插入并保留最后一段，不再使用 interleave 补空字符串或浏览器正则判断。
聊天、工作区和根容器也已迁移，完整入口检查 browser 319/319、native 74/74；本仓库定义
检查 browser 82/82、native 103/103。聊天作者使用 Option，消息按时间显示并以稳定 ID 为 key。
遮盖文字和本地时钟格式通过实际生成 JS 回归；不为宿主返回值声明假的业务对象类型。
退休未使用的 read-field/style-map/slot-matcher/pattern-any/DayjsHost 辅助写法。
本地完整构建通过，但不代表多人 UI 或生产部署验收。此次只在隔离服务验收游客页面，尚未
在浏览器执行登录存储。已逐项审阅原 32 个定义的历史预算差异，将集合正常化结果改为泛型 T、
应用回调收紧为 `Fn(Op)->Unit`，避免不必要的 Dynamic/rest；当前差异为 30 个定义、83 项，
schemaDynamic 55→49、unresolved 83→77、typeNotFull 34→33。未修改或放宽基线。
其统计仅作为原有文件的迁移评估，不新增统计 CI 门禁；必须逐项审阅真实边界，不能称为零债务。
尚不可部署，仍需实际多人 UI、独立依赖解析及前后端协同上线验收。
连同文字输入及集合结果类型合同，可移植测试在 native/JS 各 6/6、无排除。
仍需独立依赖解析、完整检查、真实多人 UI 及存档备份/回滚验收；原质量文件未修改。
密码哈希和登录存储仍沿用旧合同，本轮类型迁移不代表认证安全升级。

迁移前 0.27.0 的隔离浏览器验收曾覆盖启动、登录页、输入状态、消息日期及 ws-edn 编码，
不连接真实服务、不操作登录存储；该历史验收不代表当前候选或完整多人游戏验收。

### Workflow

https://github.com/Cumulo/calcium-workflow

### License

MIT
