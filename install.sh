#!/usr/bin/env bash
set -e
############################
# This script creates symlinks from the home directory to any desired dotfiles in ${homedir}/dotfiles
# And also installs Homebrew Packages
# And sets Sublime preferences
############################

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

# dotfiles directory
dotfiledir=${homedir}/dotfiles

# list of files/folders to symlink in ${homedir}
files="bashrc bash_profile aliases macos"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done

# Download Git Auto-Completion
sh -c "$(curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" > ${homedir}/.git-completion.bash)"

# Run the Homebrew Script
./brew.sh

# Set brew auto update running  on the background
brew autoupdate --start --upgrade --cleanup

# Download and install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

# download and install spaceship theme for oh-my-zsh
npm install -g spaceship-prompt || true

# create .zshrc symlink to dotfiles .zshrc
ln -sf ${dotfiledir}/.zshrc ${homedir}/.zshrc
source ${homedir}/.zshrc

# Run the vscode script
./vscode.sh
