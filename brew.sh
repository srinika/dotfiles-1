#!/usr/bin/env bash
set -e

# Download and install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brew Packages
brew install python
brew install alfred
brew install tree
brew install awscli
brew install azure-cli
brew install node
brew install serverless
brew install terraform
brew install kops
brew install mysql
brew install git || brew upgrade git || true
brew install go
brew install zsh || brew upgrade zsh || true
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# Install MacOS Applications
brew cask install google-chrome || true
brew cask install firefox || true
brew cask install vlc || true
brew cask install iterm2 || true
brew cask install intellij-idea || true
brew cask install visual-studio-code || true
brew cask install authy || true

# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Install brew auto update
brew tap domt4/autoupdate

# Remove outdated versions from the cellar.
brew cleanup
