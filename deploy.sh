#!/bin/bash

# Local deployment script for 'This Book Can Connect You to the Internet'
# Function: install dependencies and start the local preview server in one step

set -e  # exit immediately on error

# color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# print colored messages
print_info() {
    echo -e "${BLUE}[信息]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[成功]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[警告]${NC} $1"
}

print_error() {
    echo -e "${RED}[错误]${NC} $1"
}

# print welcome banner
print_banner() {
    echo -e "${GREEN}"
    echo "======================================"
    echo "  《这本书能让你连接互联网》"
    echo "  本地部署工具"
    echo "======================================"
    echo -e "${NC}"
}

# check whether a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# check Node.js environment
check_node() {
    print_info "检查 Node.js 环境..."
    if ! command_exists node; then
        print_error "Node.js not detected, please install Node.js first"
        print_info "下载地址: https://nodejs.org/zh-cn"
        exit 1
    fi
    
    NODE_VERSION=$(node -v)
    print_success "Node.js 版本: $NODE_VERSION"
}

# check npm environment
check_npm() {
    print_info "检查 npm 环境..."
    if ! command_exists npm; then
        print_error "未检测到 npm"
        exit 1
    fi
    
    NPM_VERSION=$(npm -v)
    print_success "npm 版本: $NPM_VERSION"
}

# 安装 docsify-cli
install_docsify() {
    print_info "检查 docsify-cli..."
    
    if ! command_exists docsify; then
        print_warning "未检测到 docsify-cli，正在安装..."
        npm install -g docsify-cli
        
        if [ $? -eq 0 ]; then
            print_success "docsify-cli 安装成功"
        else
            print_error "docsify-cli 安装失败"
            exit 1
        fi
    else
        DOCSIFY_VERSION=$(docsify --version 2>/dev/null || echo "unknown")
        print_success "docsify-cli 已安装 (版本: $DOCSIFY_VERSION)"
    fi
}

# switch to the docs directory
change_to_docs() {
    print_info "切换到 docs 目录..."
    
    if [ -d "docs" ]; then
        cd docs
        print_success "已进入 docs 目录: $(pwd)"
    else
        print_error "未找到 docs 目录"
        exit 1
    fi
}

# start the docsify server
start_server() {
    print_info "正在启动本地服务器..."
    echo ""
    print_success "服务器启动成功！"
    print_info "访问地址: ${GREEN}http://localhost:3000${NC}"
    print_info "按 ${YELLOW}Ctrl+C${NC} 停止服务器"
    echo ""
    
    # start server
    docsify serve
}

# main flow
main() {
    print_banner
    
    # check environment
    check_node
    check_npm
    
    # install dependencies
    install_docsify
    
    # switch directory
    change_to_docs
    
    # start server
    start_server
}

# run main flow
main
