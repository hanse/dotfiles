source "$HOME/.homesick/repos/homeshick/homeshick.sh"

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="hanse"
ZSH_CUSTOM=~/.oh-my-zsh-custom

plugins=(git-prompt pass ssh-agent evalcache)

autoload -Uz compinit && compinit

source $ZSH/oh-my-zsh.sh

export OS=`uname -s`

setopt inc_append_history
setopt share_history

export EDITOR=vim

if [ "$OS" = "Darwin" ]
then
  PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"
  PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
  PATH="/opt/homebrew/opt/ruby/bin:$PATH"
  PATH="$HOME/.fastlane/bin:$PATH"
  PATH="$HOME/.deno/bin:$PATH"
  PATH="$HOME/.bin:$PATH"
  PATH="$HOME/.cargo/bin:$PATH"
  PATH="/usr/local/sbin:$PATH"
fi

if command -v hub 1>/dev/null 2>&1; then
  _evalcache hub alias -s
fi

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

# Ruby
if command -v rbenv 1>/dev/null 2>&1; then
  _evalcache rbenv init -
fi

if command -v fnm 1>/dev/null 2>&1; then
  export PATH=$HOME/.fnm:$PATH
  _evalcache fnm env
fi

#export PATH="$HOME/.poetry/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $HOME/.customrc


. "$HOME/.cargo/env"

export UV_KEYRING_PROVIDER=subprocess
export UV_INDEX_NUBE_PYTHON_USERNAME"oauth2accesstoken"
export UV_INDEX_NUBE_PYTHON_PASSWORD=$(gcloud auth print-access-token --quiet)
#export PYTHON_KEYRING_BACKEND=keyring_gcloud.GoogleCloudKeyring


# Created by `pipx` on 2025-07-01 08:53:31
export PATH="$PATH:/Users/hanse/.local/bin"
