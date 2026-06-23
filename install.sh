#!/bin/bash
# install.sh — Unix/Linux/macOS installation script for Monster AntiGravity
# Installs 19 premium agent skills globally into your config folder.

set -e

DEST_DIR="$HOME/.gemini/config/skills"
mkdir -p "$DEST_DIR"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$SCRIPT_DIR/skills"

if [ -d "$SRC_DIR" ]; then
    echo ""
    echo -e "\033[0;36m👾 Installing Monster AntiGravity Skills...\033[0m"
    cp -r "$SRC_DIR"/* "$DEST_DIR"/
    echo -e "\033[0;32m✅ 19 premium skills successfully installed globally at $DEST_DIR !\033[0m"
    echo -e "\033[0;33m🚀 Restart your AI agent terminal session to load your new capabilities.\033[0m"
    echo ""
else
    echo -e "\033[0;31mError: Source skills directory not found! Make sure you are running this from the repository root.\033[0m"
    exit 1
fi
