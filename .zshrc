# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export ZSH_CUSTOM=~/.oh-my-zsh-custom

# ~/.oh-my-zsh/themes/
ZSH_THEME="raethkcj"

# ripgrep configuration file
export RIPGREP_CONFIG_PATH=~/.rgconfig

# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Plugins can be found in ~/.oh-my-zsh/plugins
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# User configuration
ZSH_PROMPT="%m"

# Linux, Darwin, or WSL
if grep -qi microsoft /proc/version; then
	platform="WSL"
else
	platform=$(uname)
fi

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.rvm/bin:/Library/TeX/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

alias redshift-toggle="pkill -USR1 redshift"
alias init-submodules="git submodule update --init --recursive"
alias pull-submodules="git pull --recurse-submodules"
alias colortest='for i in {1..256}; do echo "\e[38;5;${i}m██████$( printf '%3d' $i )██████"; done'
alias mycolors='for i in 178 67 108 15 248 235; do echo "\e[38;5;${i}m██████$( printf '%3d' $i )██████"; done'

if [[ $platform == "Linux" ]]; then
	alias open="gvfs-open"
fi

if [ ! -L ~/.ssh/ssh_auth_sock ]; then
	kill -9 $(pidof ssh-agent) > /dev/null
	eval `ssh-agent` > /dev/null
	ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AGENT_PID=$(pidof ssh-agent)
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

# GPG needs this manually set in some combination of WSL+tmux
export GPG_TTY=$(tty)

# enable copying to Windows clipboard via VcXsrv
if [[ $platform == "WSL" ]]; then
	export DISPLAY=$(route.exe print | grep 0.0.0.0 | head -1 | awk '{print $4}'):0.0
	# WSL hangs if the xsrv is not running, so set a short timeout and query the server
	if ! timeout 0.25s xset q &>/dev/null; then
		unset DISPLAY
	fi

	export BROWSER=explorer.exe
fi

export PATH="/usr/local/sbin:$PATH"

# Set 256 color terminal (for tmux)
export TERM=xterm-256color

# Use vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
