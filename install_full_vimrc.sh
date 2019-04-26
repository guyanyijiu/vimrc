#!/bin/sh
set -e

cd ~/.vim

echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
' > ~/.vimrc

echo "Installed the Full Vim configuration successfully!"
