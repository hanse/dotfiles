#!/usr/bin/env sh

git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone hanse/dotfiles
homeshick link dotfiles

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

export OS=`uname -s`

if [ "$OS" = "Darwin" ]
then
  defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
  defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
  
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew bundle
fi

curl https://raw.githubusercontent.com/Schniz/fnm/master/.ci/install.sh | bash