# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="hanse"
ZSH_CUSTOM=~/.oh-my-zsh-custom

plugins=(pass ssh-agent)

source $ZSH/oh-my-zsh.sh

export OS=`uname -s`

export ANDROID_HOME=/usr/local/opt/android-sdk

unsetopt inc_append_history
unsetopt share_history

if [ "$OS" = "Darwin" ]
then
  PATH="$HOME/.fastlane/bin:$PATH"
  PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:$PATH"
  PATH="$HOME/.bin:$PATH"
  PATH="$(yarn global bin):$PATH"
  PATH="$HOME/.cabal/bin:$PATH"
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

if [ -d "$HOME/.rbenv" ]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

. ~/.zsh/aliases
. `brew --prefix`/etc/profile.d/z.sh

export EDITOR=vim
export NODE_ENV=development
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$HOME/go/bin

if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
else
  eval $(gpg-agent --daemon ~/.gnupg/.gpg-agent-info)
fi
