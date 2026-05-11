#tmux
alias tm='tmux'
alias tmls='tmux ls'
alias tms='tmux new-session -s'
alias tmsa='tmux attach -t'
alias tma='tmux attach'
alias tmr='tmux source ~/.tmux.conf'
alias tmk='tmux kill-session -t'
alias tmks='tmux kill-server'
alias tmsc='tmux switch-client -t'

# Easier navigation: .., ..., ~ and -
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
# `~` can't be a fish function name (fish expands ~ before alias runs);
# fish's bare `cd` already goes home, so this alias is unnecessary.
alias cl='clear'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh="ls -lha"

# List only directories
alias lsd='ls -l | grep "^d"'

alias op='open .'

# be nice
alias please=sudo
alias hosts='code /etc/hosts'
alias shr='source ~/.config/fish/config.fish'

alias pclean="rm -rf node_modules && rm -rf package-lock.json && rm -rf yarn.lock"

# GIT STUFF

alias git="hub"
alias g="git"
alias vi="nvim"
alias gd="g diff"
alias gpr="g plrm"
alias gs="g s"
alias gc="g cam"
alias gco="g co"

# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
alias ltag='git tag --sort=committerdate | tail -1'

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

#Other
alias ssha="ssh-add --apple-use-keychain ~/.ssh/silverback"
# alias sshb="ssh-add --apple-use-keychain ~/.ssh/tactacam"

#claude-code
alias cc='claude'

alias python=python3
alias pip=pip3
alias pyvenv='source .venv/bin/activate'

# Get a list of both modified and untracked files
alias fls='git status -s | grep "^A\\|^ M\\|^??" | cut -c 4-'
# Get a list of modified files only
alias gfn='git diff --name-only HEAD~1 HEAD'