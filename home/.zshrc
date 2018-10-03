export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="hanse"
ZSH_CUSTOM=~/.oh-my-zsh-custom

plugins=(git-prompt pass ssh-agent)

source $ZSH/oh-my-zsh.sh

export OS=`uname -s`

setopt inc_append_history
setopt share_history

export EDITOR=vim
export NODE_ENV=development
export ANDROID_HOME=$HOME/Library/Android/sdk

if [ "$OS" = "Darwin" ]
then
  PATH="$HOME/.fastlane/bin:$PATH"
  PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:$PATH"
  PATH="$HOME/.bin:$PATH"
  PATH="$(yarn global bin):$PATH"
  PATH=$PATH:$ANDROID_HOME/tools
  PATH=$PATH:$ANDROID_HOME/platform-tools
  PATH=$PATH:/usr/local/opt/go/libexec/bin
fi

eval "$(hub alias -s)"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

ssh-hosts() {
  awk '$1 ~ /Host$/ { print $2 }' ~/.ssh/config
}

mkd() {
  mkdir -p "$@" && cd "$1"
}

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

. ~/.zsh/aliases
. `brew --prefix`/etc/profile.d/z.sh

