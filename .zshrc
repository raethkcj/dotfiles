# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# ~/.oh-my-zsh/themes/
ZSH_THEME="raethkcj"

# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Plugins can be found in ~/.oh-my-zsh/plugins
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# User configuration
ZSH_PROMPT="%m"

# Linux, Darwin, or WSL
if grep -q Microsoft /proc/version; then
	platform="WSL"
else
	platform=$(uname)
fi

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.rvm/bin:/Library/TeX/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

alias redshift-toggle="pkill -USR1 redshift"
alias pegasus="ssh deploy@pegasus.uwec.edu -p 16888"
alias init-submodules="git submodule update --init --recursive"
alias pull-submodules="git pull --recurse-submodules"
alias colortest='for i in {1..256}; do echo "\e[38;5;${i}m██████$( printf '%3d' $i )██████"; done'
alias mycolors='for i in 178 67 108 15 248 235; do echo "\e[38;5;${i}m██████$( printf '%3d' $i )██████"; done'

if [[ $platform == "Linux" ]]; then
	alias open="gvfs-open"
fi

eval $(thefuck --alias)
export PATH="/usr/local/sbin:$PATH"

# Use vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
