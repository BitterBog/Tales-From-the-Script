#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status

echo "--- 🛠️  Starting Post-Create Tool Installation ---"

# 1. Update and install core Linux utilities
sudo apt-get update
sudo apt-get install -y \
    git \
    vim \
    tree \
    htop \
    net-tools \
    dnsutils \
    build-essential

# 2. Set permissions for our repo-specific scripts
# Doing this here means we don't have to keep doing it in postAttach
chmod +x ./bin/repo.sh
chmod +x ./.devcontainer/setup-env.sh

echo "--- ✅ Tool Installation Complete ---"