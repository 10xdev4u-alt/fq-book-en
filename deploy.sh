#!/bin/bash

# This book allows you to connect to the Internet.
# Function: First key install local preview server dependent and start

Set-e

# Colour Definition
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print Colour Message
print_info() {
    echo-e "${BLUE}${NC}$1"
}

print_success() {
    echo-e "${green}[successful] $ {NC}$1"
}

print_warning() {
    echo-e "${YELLOW}[Warn] $1"
}

print_error() {
    echo-e "${RED} [Error]${NC}$1"
}

# Print welcome information
print_banner() {
    echo -e "${GREEN}"
    echo "======================================"
    "This book will connect you to the Internet."
    echo "local deployment tool"
    echo "======================================"
    echo -e "${NC}"
}

# Check if the order exists.
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check Node.js environment
check_node() {
    "Check Node.js Environment..."
    if ! command_exists node; then
        "Node.js not detected, please install Node.js"
        Print info " Download address:https://nodejs.org/zh-cn"
        exit 1
    fi
    
    NODE_VERSION=$(node -v)
    Print access "Node.js Version: $NODE VERSION"
}

# Check npm environment
check_npm() {
    Print info "Check npm environment..."
    if ! command_exists npm; then
        "not detected npm"
        exit 1
    fi
    
    NPM_VERSION=$(npm -v)
    Print success "npm Version: $NPM VERSION"
}

# Install Docsify-cli
install_docsify() {
    "Check docsify-cli..."
    
    if ! command_exists docsify; then
        Not detected docsify-cli, installation...
        npm install -g docsify-cli
        
        if [ $? -eq 0 ]; then
            Print success "docsify-cli installed successfully"
        else
            Print error "docsify-cli installation failed"
            exit 1
        fi
    else
        DOCSIFY_VERSION=$(docsify --version 2>/dev/null || echo "unknown")
        "docsify-cli installed"
    fi
}

# Switch to docs directory
change_to_docs() {
    print info "toggle to docs directory..."
    
    if [ -d "docs" ]; then
        cd docs
        Print sure "Entered Docs Directory: $ (pwd)"
    else
        "No docs found"
        exit 1
    fi
}

# Start docsify server
start_server() {
    Print info "Initiating local server..."
    echo ""
    The server is working!
    Print info " Visiting address: ${GREEN}http://localhost:3000${NC}"
    Print info "Ctrl+C${NC} Stop Server by ${YELLOW}"
    echo ""
    
    # Start Server
    docsify serve
}

# Main Process
main() {
    print_banner
    
    # Check the environment
    check_node
    check_npm
    
    # Installation Dependence
    install_docsify
    
    # Toggle Directory
    change_to_docs
    
    # Start Server
    start_server
}

# Execute Main Process
main
