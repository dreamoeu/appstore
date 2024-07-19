# Docker 应用商店 - `1Panel` 版本

本项目由 [`新疆萌森软件开发工作室`](https://lifebus.top/) 提供技术支持，我们致力于为 `1Panel` 应用商店用户提供更多的应用程序。

本仓库中的所有应用不会与 `1Panel` 官方应用商店冲突(存在相同应用并不影响后续的安装与升级,择优选择你需要的版本即可)
，我们会定期更新应用，如果您有任何问题，请联系我们。

<div style="border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); padding: 16px; margin: 16px; background-color: #fff; width: 80%; margin-left: auto; margin-right: auto;">
  <h2 style="margin: 0 0 8px 0; font-size: 1.5em;">2024年07月17日 公告</h2>
  <p>正式开始维护，新老用户推荐使用<span style="font-weight: bold; color: #d9534f;">自动化脚本</span>完成软件订阅。</p>
</div>

<div style="border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); padding: 16px; margin: 16px; background-color: #fff; width: 80%; margin-left: auto; margin-right: auto;">
  <h2 style="margin: 0 0 8px 0; font-size: 1.5em;">2024年07月16日 公告</h2>
  <p>为了解决应用安装问题，我们将在近期发布新的应用安装脚本，敬请期待！</p>
  <p>具体上线应用，可以参考下方应用列表状态标识。</p>
  <p>通过固定环境变量文件，解决应用安装问题，不再需要手动创建 <span style="font-weight: bold; color: #d9534f;">.env</span> 文件。</p>
  <p>对于 <span style="font-weight: bold; color: #d9534f;">FIT2CLOUD 飞致云</span> 旗下开源产品 <span style="font-weight: bold; color: #d9534f;">1Panel</span> 经过多次商讨，依旧无法将原有问题解决。迫于无奈，这次我们采用迂回战术，通过固定环境变量文件的方式解决问题。</p>
  <p>因此提高了维护成本，但相比于用户体验，我们认为这是值得的。简洁的 <span style="font-weight: bold; color: #d9534f;">docker-compose.yml</span> 才是我们的目标。</p>
  <p>后续接入 <span style="font-weight: bold; color: #d9534f;">Dockge</span> 应用，将会迎来新的安装方式，敬请期待！</p>
  <p>新老用户均可使用新的安装方式，升级或安装自动化脚本，无需卸载原有安装脚本。</p>
  <p>由于结构变化，我们建议您，完全卸载应用后重新安装，以免出现问题。</p>
</div>

<div style="border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); padding: 16px; margin: 16px; background-color: #fff; width: 80%; margin-left: auto; margin-right: auto;">
  <h2 style="margin: 0 0 8px 0; font-size: 1.5em;">2024年06月14日 公告</h2>
  <p>由于 <span style="font-weight: bold; color: #d9534f;">1Panel</span> 的升级，自版本 <span style="font-weight: bold; color: #d9534f;">v1.10.10-lts</span> 开始，所有应用均已停止更新！</p>
  <p>经过与 <span style="font-weight: bold; color: #d9534f;">1Panel</span> 官方商议，由于其认为安装或升级应用或面板出现的问题不属于 <span style="font-weight: bold; color: #d9534f;">Bug</span>，对于使用本仓库的用户，我们深感抱歉！</p>
  <p>截至目前，我们将不再更新任何应用，如果您有任何问题，请放弃使用当前第三方应用。</p>
  <p>如果您依旧收到应用更新提示，当前唯一解决升级方案为：卸载应用并重新安装。安装时出现的相关问题，请参考常见问题解决。</p>
  <p>🥰 祝大家周末愉快~~</p>
</div>

<div style="border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); padding: 16px; margin: 16px; background-color: #fff; width: 80%; margin-left: auto; margin-right: auto;">
  <h2 style="margin: 0 0 8px 0; font-size: 1.5em;">2024年06月12日 公告</h2>
  <p>由于 <span style="font-weight: bold; color: #d9534f;">1Panel</span> 的升级，造成部分应用无法正常使用，我们考虑到用户体验，决定暂时关闭应用商店更新，等待团队商议解决方案。</p>
  <h3>拟定解决方案</h3>
  <ul style="padding-left: 20px;">
    <li style="margin-bottom: 8px;">当您收到提示 <span style="font-weight: bold; color: #d9534f;">/xxx/xxx/.env</span> 文件不存在时，请手动创建该文件，不需要填写任何内容的空文件。</li>
    <li style="margin-bottom: 8px;">当您升级 <span style="font-weight: bold; color: #d9534f;">1Panel</span> 出现容器不存在时，请查看容器列表是否正常运行，如果没有运行，可卸载应用并重新安装。</li>
    <li style="margin-bottom: 8px;">当您升级 <span style="font-weight: bold; color: #d9534f;">1Panel</span> 出现应用无法正常使用时，请查看应用是否正常运行，如果没有运行，可卸载应用并重新安装。</li>
    <li style="margin-bottom: 8px;">关闭期间，您可能会收到部分应用的更新，没有关系，您可以选择性更新，不会影响您的使用。</li>
    <li style="margin-bottom: 8px;">由于数据均采用持久化方式存储，卸载应用不会删除数据，您可以放心卸载并重新安装。</li>
  </ul>
</div>

<div style="border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); padding: 16px; margin: 16px; background-color: #fff; width: 80%; margin-left: auto; margin-right: auto;">
  <h2 style="margin: 0 0 8px 0; font-size: 1.5em;">2024年06月09日 公告</h2>
  <p><span style="font-weight: bold; color: #d9534f;">警告</span> 请勿升级 <span style="font-weight: bold; color: #d9534f;">1Panel</span> 到 <span style="font-weight: bold; color: #d9534f;">v1.10.10-lts</span> 版本，否则会导致应用商店无法使用！</p>
</div>

## 维护状态

| 状态 |                                           图标                                            |          应用名称           |                   应用官网                    | 短的描述                                                                 |    集合     |
|:--:|:---------------------------------------------------------------------------------------:|:-----------------------:|:-----------------------------------------:|:---------------------------------------------------------------------|:---------:|
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/alist/logo.png" width="16"/>     |          AList          |           https://alist.nn.ci/            | 一款支持多重存储的文件列表程序                                                      |           |
| 🟢 |     <img height="16" src="https://file.lifebus.top/apps/bark/logo.png" width="16"/>     |          Bark           |           https://bark.day.app/           | 一款注重隐私、安全可控的自定义通知推送工具                                                |           |
| 🟢 |   <img height="16" src="https://file.lifebus.top/apps/casdoor/logo.png" width="16"/>    |         Casdoor         |           https://casdoor.org/            | 身份和访问管理(IAM)/单点登录(SSO)平台                                             |           |
| 🔴 |                                                                                         |      Cookie Cloud       | https://github.com/easychen/CookieCloud/  | CookieCloud是一个和自架服务器同步浏览器Cookie和LocalStorage的小工具                     |           |
| 🔴 |                                                                                         |         DeepLX          |        https://deeplx.owo.network/        | DeepL免费API（无需TOKEN）                                                  |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/dockge/logo.png" width="16"/>    |         Dockge          |         https://dockge.kuma.pet/          | 面向堆栈的管理器                                                             |           |
| 🔴 |                                                                                         |      Elasticsearch      |   https://www.elastic.co/elasticsearch/   | Elasticsearch 是一个分布式、RESTful 风格的搜索和数据分析引擎                            |  Elastic  |
| 🔴 |                                                                                         |         Kibana          |      https://www.elastic.co/kibana/       | Kibana 针对大规模数据快速运行数据分析                                               |  Elastic  |
| 🟢 |     <img height="16" src="https://file.lifebus.top/apps/emby/logo.png" width="16"/>     |          Emby           |            https://emby.media/            | Emby Server 是一款个人媒体服务器，可在几乎所有设备上运行应用程序                               |           |
| 🟢 |     <img height="16" src="https://file.lifebus.top/apps/emby/logo.png" width="16"/>     |      Emby-lovechen      |            https://emby.media/            | 【开心版】Emby Server 是一款个人媒体服务器，可在几乎所有设备上运行应用程序                          |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/gitea/logo.png" width="16"/>     |          Gitea          |             https://gitea.io/             | 私有、快速、可靠的 DevOps 平台                                                  |   Gitea   |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/gitea/logo.png" width="16"/>     |      Gitea Runner       |             https://gitea.io/             | 【Runner】私有、快速、可靠的 DevOps 平台                                          |   Gitea   |
| 🟢 |     <img height="16" src="https://file.lifebus.top/apps/halo/logo.png" width="16"/>     |          Halo           |             https://halo.run/             | 强大易用的开源建站工具                                                          |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/immich/logo.png" width="16"/>    |         Immich          |            https://immich.app/            | 【完整版本】高性能自托管照片和视频管理解决方案                                              |  Immich   |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/immich/logo.png" width="16"/>    |      Immich-Server      |            https://immich.app/            | 【主服务模块】高性能自托管照片和视频管理解决方案                                             |  Immich   |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/immich/logo.png" width="16"/>    | Immich-Machine-Learning |            https://immich.app/            | 【机器学习模块】高性能自托管照片和视频管理解决方案                                            |  Immich   |
| 🟢 |  <img height="16" src="https://file.lifebus.top/apps/iyuu-plus/logo.png" width="16"/>   |        IYUU Plus        |           https://doc.iyuu.cn/            | 基于特征码的索引工具                                                           |           |
| 🟢 |   <img height="16" src="https://file.lifebus.top/apps/jellyfin/logo.png" width="16"/>   |        Jellyfin         |           https://jellyfin.org/           | 自由软件媒体系统                                                             |           |
| 🔴 |                                                                                         |        LinkDing         | https://github.com/sissbruecker/linkding/ | 自托管书签管理器                                                             |           |
| 🔴 |                                                                                         |          MinIO          |              https://min.io/              | MinIO 是一种高性能、兼容 S3 的对象存储                                             |           |
| 🟢 | <img height="16" src="https://file.lifebus.top/apps/movie-pilot/logo.png" width="16"/>  |       MoviePilot        |   https://github.com/jxxghp/MoviePilot/   | NAS媒体库自动化管理工具                                                        |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/mysql/logo.png" width="16"/>     |          MySQL          |          https://www.mysql.com/           | 关系数据库管理系统                                                            |   MySQL   |
| 🟢 |   <img height="16" src="https://file.lifebus.top/apps/mariadb/logo.png" width="16"/>    |         MariaDB         |           https://mariadb.org/            | 【MySQL分支】创新的开源数据库                                                    |   MySQL   |
| 🟢 |   <img height="16" src="https://file.lifebus.top/apps/percona/logo.png" width="16"/>    |         Percona         |         https://www.percona.com/          | 【MySQL分支】关系数据库管理系统                                                   |   MySQL   |
| 🔴 |                                                                                         |          Nacos          |             https://nacos.io/             | 动态服务发现、配置管理和服务管理平台                                                   |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/nezha/logo.png" width="16"/>     |          NeZha          |             https://nacos.io/             | 【哪吒监控】开源、轻量、易用的服务器监控、运维工具                                            |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/onedev/logo.png" width="16"/>    |         OneDev          |            https://onedev.io/             | DevOps 平台、带有 CI/CD、看板和软件包的 Git 服务器                                   |           |
| 🟢 |   <img height="16" src="https://file.lifebus.top/apps/outline/logo.png" width="16"/>    |         OutLine         |        https://www.getoutline.com/        | 快速、协作的团队知识库                                                          |           |
| 🟢 |  <img height="16" src="https://file.lifebus.top/apps/postgresql/logo.png" width="16"/>  |       PostgreSQL        |        https://www.postgresql.org/        | 世界上最先进的开源关系数据库                                                       |           |
| 🟢 | <img height="16" src="https://file.lifebus.top/apps/qbittorrent/logo.png" width="16"/>  |       qBittorrent       |       https://www.qbittorrent.org/        | qBittorrent 比特流客户端                                                   |           |
| 🟢 |   <img height="16" src="https://file.lifebus.top/apps/qinglong/logo.png" width="16"/>   |        QingLong         |    https://github.com/whyour/qinglong/    | 【青龙】支持 Python3、JavaScript、Shell、Typescript 的定时任务管理平台                 |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/redis/logo.png" width="16"/>     |          Redis          |             https://redis.io/             | 从世界上最快的内存数据库创建者那里获取该数据库                                              |           |
| 🔴 |                                                                                         |        Sentinel         |         https://sentinelguard.io/         | 面向分布式、多语言异构化服务架构的流量治理组件                                              |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/siyuan/logo.png" width="16"/>    |         SiYuan          |         https://b3log.org/siyuan/         | 【思源笔记】一款隐私优先、自托管、完全开源的个人知识管理软件                                       |           |
| 🔴 |                                                                                         |        SpeedTest        |        https://www.speedtest.net/         | 互联网速度测试                                                              | SpeedTest |
| 🔴 |                                                                                         |    SpeedTest-Tracker    |    https://docs.speedtest-tracker.dev/    | Speedtest Tracker 是一款自托管互联网性能跟踪应用程序，可针对 Ookla 的 Speedtest 服务运行速度测试检查 |           |
| 🔴 |                                                                                         |       Stream-Rec        |   https://github.com/hua0512/stream-rec   | Stream-rec是一个用于各种流媒体服务的自动流媒体录制工具                                     |           |
| 🟢 | <img height="16" src="https://file.lifebus.top/apps/transmission/logo.png" width="16"/> |      Transmission       |        https://transmissionbt.com/        | 快速、简单、免费的 Bittorrent 客户端                                             |           |
| 🟢 | <img height="16" src="https://file.lifebus.top/apps/uptime-kuma/logo.png" width="16"/>  |       Uptime Kuma       |         https://uptime.kuma.pet/          | 自托管监控工具                                                              |           |
| 🟢 |    <img height="16" src="https://file.lifebus.top/apps/umami/logo.png" width="16"/>     |          Umami          |             https://umami.is/             | 为速度和效率而构建的网站分析                                                       |           |
| 🔴 |                                                                                         |          Yarr           |      https://github.com/nkanaev/yarr      | Rss 阅读器                                                              |           |
| 🔴 |                                                                                         |         Ztncui          |         https://www.zerotier.com/         | 【自建服务端】ZeroTier 可让您构建几乎任何类型的现代化安全多点虚拟化网络                             | ZeroTier  |

> 说明：
>
> 以上排序不分先后，按照字母顺序排列。
>
> 维护状态：🟢 维护中 🔴 未维护 🟡 表示不定期维护

## 应用安装

> 温馨提示：
> 当您已安装其他第三方库时并且存在应用冲突，安装过程中会主动删除冲突的第三方库应用，如果您不同意，请不要执行脚本。
>
> 我们建议您在安装之前备份您的数据，或手动安装。

### 方案一：自动化安装

如果您不想每次都手动执行命令，可以使用一键式安装。我们优先推荐此方式。

```shell
curl -sSL https://install.lifebus.top/auto_install.sh | bash
```

> 卸载自动化脚本 (不会卸载应用)

```shell
curl -sSL https://install.lifebus.top/auto_uninstall.sh | bash
```

如需卸载应用列表，您可以手动删除以下目录：

+ 应用目录：`${1panel应用目录}/resource/apps/local`

+ 应用公共文件目录：`/etc/1panel/envs`

+ 应用数据目录：`${应用持久化目录}`

### 方案二：手动安装

应用的升级与更新均需要重新执行安装脚本。

#### 手动执行模式

```shell
curl -sSL https://install.lifebus.top/app_install.sh | bash
```

### 方案三：计划任务模式

将内容写入Shell计划任务中，设定定期执行。

```shell
#!/bin/bash

script_url="https://install.lifebus.top/app_install.sh"

echo "Downloading and executing script from $script_url..."
bash <(curl -sL "$script_url")

echo "Script execution completed."
```

#### 配置脚本网络代理

```sh
proxy_protocols="http"
proxy_server="server address"
proxy_port="server port"
export http_proxy="$proxy_protocols://$proxy_server:$proxy_port"
export https_proxy="$proxy_protocols://$proxy_server:$proxy_port"
```

## 安装 `Pre 尝鲜版` 应用

> 说明：
>
> `Pre 尝鲜版` 应用为测试版本，可能存在未知问题，我们建议您在测试环境中使用。

### 安装尝鲜版应用

```sh
curl -sSL https://install.lifebus.top/pre_app_install.sh | bash
```

### 卸载尝鲜版应用

```sh
curl -sSL https://install.lifebus.top/pre_app_uninstall.sh | bash
```

## 常见问题

+ 升级失败
    + 检查网络状况与磁盘空间
    + 配置镜像地址
    + 尝试重新升级
    + 进行卸载重装
    + 多次升级依旧失败，请联系我们
+ 安装提示
    + `Error: /xxx/xxx/.env file does not exist`
        + 请手动创建 `.env` 文件，不需要填写任何内容的空文件
        + 重新点击安装
+ 前置检查
    + `前置检查` 是利用 `1Panel` 的应用特性，进行安装前的环境检查，如果您的环境不符合要求，将无法安装应用。
    + 关于 `前置检查` 依旧需要填写 `数据库` 相关连接信息，是因为其提供的能力并不是完全可靠，避免后期出现问题，我们采用持久化的方式存储。
    + 如果您的环境符合要求，但是依旧无法安装，请联系我们。

## 温馨提示

安装应用前请查看应用说明，了解应用的使用方法和注意事项。
当前第三方库应用均为开源应用，我们不对应用的安全性和稳定性负责。
如果您在使用过程中遇到问题，请查看应用的官方文档或社区，或者联系我们。

## 联系我们

<a href="mailto:qyg2297248353@gmail.com" target="_blank" style="display: block; width: 300px; margin: 16px auto; padding: 16px; border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); background-color: #fff; text-decoration: none; color: #333;">
  <div style="display: flex; align-items: center;">
    <div style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #e1e1e1; overflow: hidden; margin-right: 16px; display: flex; align-items: center; justify-content: center;">
      <img src="https://file.lifebus.top/imgs/google_gmail_logo.png" alt="Profile Picture" style="width: 32px; object-fit: contain;">
    </div>
    <div style="flex: 1;">
      <div style="font-weight: bold;">Gmail 邮箱</div>
      <div style="color: #555; font-size: 0.9em;">通过邮箱反馈您所遇到的问题</div>
    </div>
  </div>
</a>

<a href="https://blog.lifebus.top/" target="_blank" style="display: block; width: 300px; margin: 16px auto; padding: 16px; border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); background-color: #fff; text-decoration: none; color: #333;">
  <div style="display: flex; align-items: center;">
    <div style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #e1e1e1; overflow: hidden; margin-right: 16px; display: flex; align-items: center; justify-content: center;">
      <img src="https://file.lifebus.top/imgs/ms_studio_logo.png" alt="Profile Picture" style="width: 32px; object-fit: contain;">
    </div>
    <div style="flex: 1;">
      <div style="font-weight: bold;">人生足迹 · 博客</div>
      <div style="color: #555; font-size: 0.9em;">技术分享的博客平台</div>
    </div>
  </div>
</a>

<a href="https://github.com/QYG2297248353" target="_blank" style="display: block; width: 300px; margin: 16px auto; padding: 16px; border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); background-color: #fff; text-decoration: none; color: #333;">
  <div style="display: flex; align-items: center;">
    <div style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #e1e1e1; overflow: hidden; margin-right: 16px; display: flex; align-items: center; justify-content: center;">
      <img src="https://file.lifebus.top/imgs/github_logo.png" alt="Profile Picture" style="width: 32px; object-fit: contain;">
    </div>
    <div style="flex: 1;">
      <div style="font-weight: bold;">GitHub</div>
      <div style="color: #555; font-size: 0.9em;">全球最大同性交友网站</div>
    </div>
  </div>
</a>

<a href="https://git.lifebus.top/" target="_blank" style="display: block; width: 300px; margin: 16px auto; padding: 16px; border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); background-color: #fff; text-decoration: none; color: #333;">
  <div style="display: flex; align-items: center;">
    <div style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #e1e1e1; overflow: hidden; margin-right: 16px; display: flex; align-items: center; justify-content: center;">
      <img src="https://file.lifebus.top/imgs/gitea_logo.png" alt="Profile Picture" style="width: 32px; object-fit: contain;">
    </div>
    <div style="flex: 1;">
      <div style="font-weight: bold;">Gitea</div>
      <div style="color: #555; font-size: 0.9em;">国内镜像发布仓库</div>
    </div>
  </div>
</a>

<a href="https://www.youtube.com/@cn_ms_studio" target="_blank" style="display: block; width: 300px; margin: 16px auto; padding: 16px; border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); background-color: #fff; text-decoration: none; color: #333;">
  <div style="display: flex; align-items: center;">
    <div style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #e1e1e1; overflow: hidden; margin-right: 16px; display: flex; align-items: center; justify-content: center;">
      <img src="https://file.lifebus.top/imgs/google_youtube_logo.png" alt="Profile Picture" style="width: 32px; object-fit: contain;">
    </div>
    <div style="flex: 1;">
      <div style="font-weight: bold;">YouTube</div>
      <div style="color: #555; font-size: 0.9em;">Google旗下的视频分享网站</div>
    </div>
  </div>
</a>

<a href="https://twitter.com/ms2297248353" target="_blank" style="display: block; width: 300px; margin: 16px auto; padding: 16px; border: 1px solid #e1e1e1; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); background-color: #fff; text-decoration: none; color: #333;">
  <div style="display: flex; align-items: center;">
    <div style="width: 50px; height: 50px; border-radius: 50%; border: 2px solid #e1e1e1; overflow: hidden; margin-right: 16px; display: flex; align-items: center; justify-content: center;">
      <img src="https://file.lifebus.top/imgs/twitter_x_logo.png" alt="Profile Picture" style="width: 32px; object-fit: contain;">
    </div>
    <div style="flex: 1;">
      <div style="font-weight: bold;">Twitter</div>
      <div style="color: #555; font-size: 0.9em;">X. 正在发生的事</div>
    </div>
  </div>
</a>
