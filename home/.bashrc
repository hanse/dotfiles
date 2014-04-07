
export OS=`uname -s`

if [ "$OS" == "Darwin" ]; then
  PATH="$HOME/Utvikling/bin:$PATH"
  PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.bin:$PATH"
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

. `brew --prefix`/etc/profile.d/z.sh
