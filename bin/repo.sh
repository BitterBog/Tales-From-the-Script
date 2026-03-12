#!/bin/bash

# 1. Resolve the physical path of this script
# (Even if called via /usr/local/bin/repo.sh)
REAL_PATH=$(readlink -f "${BASH_SOURCE[0]}")
SCRIPT_DIR=$(dirname "$REAL_PATH")
WORKSPACE_ROOT=$(dirname "$SCRIPT_DIR")

# 2. Define the Home Shortcut Path
HOME_SHORTCUT="$HOME/repo"

echo "Refreshing Lab Shortcuts..."

# 3. Create/Refresh the '~/repo' folder shortcut
if [ -L "$HOME_SHORTCUT" ]; then
    rm "$HOME_SHORTCUT"
elif [ -d "$HOME_SHORTCUT" ]; then
    echo "Warning: Physical directory ~/repo already exists. Skipping shortcut."
fi

ln -sf "$WORKSPACE_ROOT" "$HOME_SHORTCUT"

# 4. Perform the "Jump"
cd "$WORKSPACE_ROOT"

echo "✅ Success: ~/repo updated. Current directory: $PWD"