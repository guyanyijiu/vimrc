#!/bin/sh
set -e

cd ~/.vim
cat ~/.vim/vimrcs/basic.vim > ~/.vimrc
echo "Installed the Basic Vim configuration successfully!"
