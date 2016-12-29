#!/bin/bash
read -p "Would you like to clone vim-plug (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

read -p "Would you like to clone base-16-vim default colors? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  curl -fLo ~/.vim/colors/base16-default-dark.vim --create-dirs \
    https://raw.githubusercontent.com/chriskempson/base16-vim/master/colors/base16-default-dark.vim
  curl -fLo ~/.vim/colors/base16-default-light.vim --create-dirs \
    https://raw.githubusercontent.com/chriskempson/base16-vim/master/colors/base16-default-light.vim
fi

read -p "Would you like to copy .vimrc? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cp .vimrc ~
fi
