
export OS=`uname -s`

export GOPATH=$HOME/Utvikling/go

if [ "$OS" == "Darwin" ]; then
  PATH="$HOME/Utvikling/bin:$PATH"
  PATH=$PATH:$GOPATH/bin
  PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.bin:$PATH"
  PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
  PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
  PATH=$PATH:/Applications/Mozart2.app/Contents/Resources/bin
  PATH="/Applications/MATLAB_R2013a.app/bin:$PATH"
  PATH="$HOME/.cabal/bin:$PATH"
fi

eval "$(hub alias -s)"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/.bash/shell
source ~/.bash/aliases
source ~/.bash/functions
source ~/.bash/rbenv
source ~/.env &> /dev/null

source /usr/local/etc/bash_completion.d/password-store

. `brew --prefix`/etc/profile.d/z.sh
