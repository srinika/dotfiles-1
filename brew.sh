#!/usr/bin/env bash
set -e

# Download and install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brew Packages
brew install python
brew install tree
brew install awscli
brew install azure-cli
brew install node
brew install serverless
brew install terraform
brew install kops
brew install mysql
brew install git
brew install go
brew install zsh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# Install MacOS Applications
brew cask install google-chrome
brew cask install firefox
brew cask install vlc
brew cask install iterm2
brew cask install visual-studio-code

# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Remove outdated versions from the cellar.
brew cleanup
