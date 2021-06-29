#!/usr/bin/env bash
set -e

# Download and install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Brew Packages
brew install python
brew install alfred
brew install tree
brew install awscli || brew link --overwrite awscli || true
brew install aws-cdk || brew link --overwrite aws-cdk || true
brew install azure-cli
brew install node
brew install typescript
brew install serverless
brew install terraform
brew install kops || brew link --overwrite kops || true
brew install mysql
brew install git || brew upgrade git || true
brew install go
brew install zsh || brew upgrade zsh || true
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# Install MacOS Applications
brew install --cask google-chrome || true
brew install --cask firefox || true
brew install --cask vlc || true
brew install --cask iterm2 || true
brew install --cask intellij-idea || true
brew install --cask visual-studio-code || true
brew install --cask authy || true

# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# Install brew auto update
brew tap domt4/autoupdate

# Remove outdated versions from the cellar.
brew cleanup
