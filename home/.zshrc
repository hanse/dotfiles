source "$HOME/.homesick/repos/homeshick/homeshick.sh"

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="hanse"
ZSH_CUSTOM=~/.oh-my-zsh-custom

plugins=(git-prompt pass ssh-agent evalcache poetry yarn)

autoload -Uz compinit && compinit

source $ZSH/oh-my-zsh.sh

export OS=`uname -s`

setopt inc_append_history
setopt share_history

export EDITOR=vim
export ANDROID_HOME=$HOME/Library/Android/sdk

if [ "$OS" = "Darwin" ]
then
  PATH="$HOME/.fastlane/bin:$PATH"
  PATH="$HOME/.deno/bin:$PATH"
  PATH="$HOME/.bin:$PATH"
  # PATH=$PATH:$ANDROID_HOME/tools
  # PATH=$PATH:$ANDROID_HOME/platform-tools
fi

_evalcache hub alias -s

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

ssh-hosts() {
  awk '$1 ~ /Host$/ { print $2 }' ~/.ssh/config
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

mkd() {
  mkdir -p "$@" && cd "$1"
}

. ~/.env
. ~/.zsh/aliases
. `brew --prefix`/etc/profile.d/z.sh

# Python
export LANG=en_US.UTF-8
if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  PATH="$PYENV_ROOT/bin:$PATH"
  _evalcache pyenv init -
fi

# # Ruby
if command -v rbenv 1>/dev/null 2>&1; then
  _evalcache rbenv init -
fi

if command -v fnm 1>/dev/null 2>&1; then
  export PATH=$HOME/.fnm:$PATH
  _evalcache fnm env
fi

export PATH="$HOME/.poetry/bin:$PATH"

eval "$(direnv hook zsh)"
