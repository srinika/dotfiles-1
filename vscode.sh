#!/usr/bin/env bash
set -e

# Backup default user settings
mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json.bak

# Set symlink to custom user settings
ln -sf ~/dotfiles/settings/vscode/VSCode-Settings.json ~/Library/Application\ Support/Code/User/settings.json

# Install extensions
code --install-extension amazonwebservices.aws-toolkit-vscode
code --install-extension aws-amplify.aws-amplify-vscode
code --install-extension aws-scripting-guy.cform
code --install-extension erd0s.terraform-autocomplete
code --install-extension hashicorp.terraform
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension ms-python.python
code --install-extension PKief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension sleutho.templex
code --install-extension teabyii.ayu