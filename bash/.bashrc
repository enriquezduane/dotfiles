# Source global definitions (for Fedora)
[ -f /etc/bashrc ] && . /etc/bashrc

[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/bin" ]] && PATH="$HOME/bin:$PATH"

export PATH

# Define Editors
export EDITOR=nvim
export VISUAL=nvim

# Colored grep and ls
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# Quick Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
RESET="\[\033[0m\]"

# Editor
alias vi='/usr/bin/vim'
alias vim='nvim'

# Set Prompt: [User@Host] [Path] [GitBranch]
PS1="${GREEN}\u@\h${RESET} ${BLUE}\w${RESET}${RED}\$(parse_git_branch)${RESET} \$ "
