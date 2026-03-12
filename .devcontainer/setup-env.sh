#!/bin/bash

# 1. Define paths
REPO_DIR=$(pwd)
TETHER_LINE="source $REPO_DIR/.bashrc"

echo "--- 🛠️  Syncing Lab Environment ---"

# 1. Make the bin scripts executable for User and Group
chmod ug+x "$REPO_DIR/bin/"*.sh

# 2. Specifically ensure the library IS NOT executable 
# (This prevents running as a command)
if [ -f "$REPO_DIR/lib/tools.sh" ]; then
    chmod ug-x "$REPO_DIR/lib/tools.sh"
fi

# 3. Refresh the global symlink
# This allows us to type 'repo.sh' from ANY directory (like /etc or /var/log)
# and have the script execute correctly.
if [ -f "$REPO_DIR/bin/repo.sh" ]; then
    sudo ln -sf "$REPO_DIR/bin/repo.sh" /usr/local/bin/repo.sh
    echo "✅ Success: 'repo.sh' is now a global command."
else
    echo "⚠️  Warning: bin/repo.sh not found. Global command not created."
fi

# 4. .bashrc Tethering
if ! grep -q "$TETHER_LINE" ~/.bashrc; then
    echo -e "\n# Added by Lab Setup\n$TETHER_LINE" >> ~/.bashrc
    echo "✅ Success: Repo .bashrc tethered to system."
else
    echo "ℹ️  System .bashrc already tethered."
fi

# 4. Ensure permissions
chmod +x "$REPO_DIR/bin/repo.sh"

echo "--- ✅ Sync Complete ---"



