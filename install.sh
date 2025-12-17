#!/bin/sh
set -eu

# Go to project directory
cd "$(dirname "$0")"

# Install config and skins
install -bD -m 0644 -t "$HOME/.local/share/mc/skins/" skins/*
install -bD -m 0644 -t "$HOME/.config/mc/" config/*

# Check for existence of xclip
if ! command -v xclip >/dev/null 2>&1
then
    echo "Warning: 'xclip' is needed for clipboard support but was not found."
    echo "         On Debian it can be installed with 'sudo apt install xclip'"
fi
