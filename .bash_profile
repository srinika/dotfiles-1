# Load dotfiles:
for file in ~/.{bashrc,bash_profile,aliases,zshrc,macos}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Git auto-complete
if [[ -f /usr/local/etc/bash_completion.d/.git-completion.bash ]]; then 
    source ~/.bash_profile
elif [[ -f ~/.git_completion.bash ]]; then
	mv ~/.git_completion.bash /usr/local/etc/bash_completion.d/.git-completion.bash
	source ~/.bash_profile
fi

# Setting PATH for Python 3.7
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH
