Trojan-Horse
Trojan-Horse 提供多架构支持的 Linux 可执行文件，包括 linux_386, linux_aarch64, linux_amd64, linux_arm5, linux_arm6, linux_arm7, linux_mips, linux_mips64, linux_mips64el, linux_mipsel。
一键安装
运行以下命令，自动检测架构、下载、授权并运行程序：
curl -L https://raw.githubusercontent.com/Tiancaizhi9098/Trojan-Horse/main/install.sh | bash

注意：如果程序需要 root 权限，运行：
curl -L https://raw.githubusercontent.com/Tiancaizhi9098/Trojan-Horse/main/install.sh | sudo bash

支持的架构
脚本通过 uname -m 检测架构并下载对应文件：

i386 / i686 → linux_386
x86_64 → linux_amd64
aarch64 / arm64 → linux_aarch64
arm / armv5* → linux_arm5
armv6* → linux_arm6
armv7* → linux_arm7
mips → linux_mips
mips64 → linux_mips64
mips64el → linux_mips64el
mipsel → linux_mipsel

注意事项

分支：默认从 main 分支下载。如果分支不同，更新脚本中的 REPO_URL。
网络：确保可访问 raw.githubusercontent.com。
安全：建议验证文件完整性（联系维护者获取 SHA256 校验和）。
清理：脚本保留下载文件。如需清理，取消脚本中 rm 注释。
依赖：假设无额外依赖。如需依赖，联系维护者。

故障排查

架构错误：提示 Unsupported architecture 时，运行 uname -m 检查架构。
下载失败：检查网络或仓库文件。
执行失败：确认是否需要参数或配置文件。

联系
有问题请在 GitHub 提交 issue 或联系维护者。
