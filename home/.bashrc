
export OS=`uname -s`

export ANDROID_HOME=/usr/local/opt/android-sdk

if [ "$OS" == "Darwin" ]; then
  PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.bin:$PATH"
  PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
  PATH="$HOME/.cabal/bin:$PATH"
fi

eval "$(hub alias -s)"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/.bash/shell
source ~/.bash/aliases
source ~/.bash/functions
source ~/.bash/rbenv
source ~/.bash/node
source ~/.env &> /dev/null

source /usr/local/etc/bash_completion.d/password-store

. `brew --prefix`/etc/profile.d/z.sh

if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
else
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi
