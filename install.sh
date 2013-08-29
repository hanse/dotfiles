#!/usr/bin/env bash

echo "Warning: This will replace your existing dotfiles."

while true; do
  read -p "Are you sure you want to continue? " yn
  case $yn in
    [Yy]* ) break ;;
    [Nn]* ) exit ;;
    * ) echo "Please answer yes or no. " ;;
  esac
done

echo "Downloading rupa/z..."
curl -L https://raw.github.com/rupa/z/master/z.sh > /usr/local/etc/z.sh

lndir `pwd`/home/ ~/

echo "Done. Dotfiles symlinked to ~/"
