PATH="/Users/hans-kristiankoren/Utvikling/bin:$PATH"
PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:~/.bin:$PATH"
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"

eval "$(hub alias -s)"

source ~/.bash/aliases
source ~/.bash/functions
source ~/.bash/shell
source ~/.bash/rbenv

. /usr/local/etc/z.sh
