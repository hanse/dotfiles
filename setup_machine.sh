#!/usr/bin/env sh

git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
