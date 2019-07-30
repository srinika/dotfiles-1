#!/usr/bin/env bash
set -e

# Backup default user settings
mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application Support/Code/User/settings.json.bak

# Set symlink to custom user settings
ln -sf ~/dotfiles/settings/vscode/VSCode-Settings.json ~/Library/Application Support/Code/User/settings.json