#!/usr/bin/env sh

git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone hanse/dotfiles
homeshick link dotfiles

export OS=`uname -s`

if [ "$OS" = "Darwin" ]
then
  defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew bundle
fi
