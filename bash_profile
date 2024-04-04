# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/dotfiles/bin/local/z/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults
export PATH="/usr/local/opt/apr/bin:${PATH}"
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/git/bin/:$PATH"
#export JAVA_HOME=$(/usr/libexec/java_home)
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin
export PATH="/usr/bin/python:${PATH}"
# Add Scripts folder relocated into dotfiles
export PATH="$HOME/dotfiles/bin/local/scripts/:$PATH"

export PATH="$HOME/go/bin/:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"

#export LDFLAGS="-L/usr/local/opt/ncurses/lib"
#export CPPFLAGS="-I/usr/local/opt/ncurses/include"

#Fix issue with tmux session
export EVENT_NOKQUEUE=1

export GITHUB_TOKEN=dcaafac38882492e24b5a2109d2d3aebc57183cc
#alias ls="ls -FHG"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Created by mirror-config-china
export IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NODIST_IOJS_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVM_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVMW_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NODIST_NODE_MIRROR=https://npm.taobao.org/mirrors/node
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NVMW_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NVMW_NPM_MIRROR=https://npm.taobao.org/mirrors/npm
# End of mirror-config-china

#phython 
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# export GEM_HOME="/usr/local/lib/ruby/gems/3.0.0"
# export PATH="$GEM_HOME/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#Java home old
#export JAVA_HOME="$HOME/Library/Java/JavaVirtualMachines/jdk-21/Contents/Home"
#export PATH="$HOME/projects/DG/securewatch/apache-maven-3.6.3/bin:$PATH"

# Java Maven
export MAVEN_HOME=/usr/local/Cellar/maven/3.8.5
export PATH=$MAVEN_HOME/bin:$PATH

export APPLE_SSH_ADD_BEHAVIOR=macos

# bun
export BUN_INSTALL="$HOME/.bun" 
export PATH="$BUN_INSTALL/bin:$PATH"

# Where should I put you?
bind "\C-f":"tmux-sessionizer\n"

#comment for intel mac
eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

export NODE_BINARY="/usr/local/bin/node"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

#export NVM_DIR="~/.nvm"
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

eval "$(rbenv init - bash)"