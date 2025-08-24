# Trojan-Horse

`Trojan-Horse` 是一个支持多架构的工具，提供了针对不同 Linux 架构的可执行文件，包括 `linux_386`, `linux_aarch64`, `linux_amd64`, `linux_arm5`, `linux_arm6`, `linux_arm7`, `linux_mips`, `linux_mips64`, `linux_mips64el`, 和 `linux_mipsel`。

## 快速开始

我们提供了一个一键脚本，自动检测你的系统架构，下载对应的可执行文件，赋予执行权限并运行程序。

### 使用一键脚本

1. **下载脚本**：
   ```bash
   curl -L -o install-trojan-horse.sh https://raw.githubusercontent.com/Tiancaizhi9098/Trojan-Horse/main/install-trojan-horse.sh
   ```

2. **赋予执行权限**：
   ```bash
   chmod +x install-trojan-horse.sh
   ```

3. **运行脚本**：
   - 如果程序需要 root 权限：
     ```bash
     sudo ./install-trojan-horse.sh
     ```
   - 如果不需要 root 权限：
     ```bash
     ./install-trojan-horse.sh
     ```

### 支持的架构
脚本会自动检测你的系统架构（通过 `uname -m`），并下载对应的文件：
- `i386` / `i686` → `linux_386`
- `x86_64` → `linux_amd64`
- `aarch64` / `arm64` → `linux_aarch64`
- `arm` / `armv5*` → `linux_arm5`
- `armv6*` → `linux_arm6`
- `armv7*` → `linux_arm7`
- `mips` → `linux_mips`
- `mips64` → `linux_mips64`
- `mips64el` → `linux_mips64el`
- `mipsel` → `linux_mipsel`

### 注意事项
- **分支**：脚本默认从 `main` 分支下载文件。如果仓库使用其他分支，请更新脚本中的 `REPO_URL`。
- **网络**：确保你的系统可以访问 `raw.githubusercontent.com`。
- **安全**：建议验证下载文件的完整性（如通过 SHA256 校验和）。联系仓库维护者获取校验和。
- **清理**：脚本默认保留下载的文件。如需清理，取消脚本中 `rm` 命令的注释。
- **依赖**：当前脚本假设程序无额外依赖。如果需要特定依赖，请参考[添加依赖](#添加依赖)。

### 添加依赖（可选）
如果程序需要额外依赖（例如 `libc` 或 `openssl`），请手动安装。例如，在 Ubuntu/Debian 上：
```bash
sudo apt update
sudo apt install <package-name>
```

### 故障排查
- **架构不支持**：如果看到 `Unsupported architecture` 错误，检查 `uname -m` 输出并联系维护者。
- **下载失败**：确保网络连接正常，或检查仓库文件是否存在。
- **执行失败**：确认程序是否需要特定参数或配置文件。

### 联系
如有问题，请在 GitHub 仓库提交 issue 或联系维护者。
