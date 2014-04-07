#!/usr/bin/env sh
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
