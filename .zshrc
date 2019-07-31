# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"

# General
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Load dotfiles:
for file in ~/.{aliases,macos}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Plugins
plugins=(
   git kubectl osx vscode 
)

# Theme
ZSH_THEME="spaceship"

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
