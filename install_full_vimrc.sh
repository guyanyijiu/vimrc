#!/bin/sh
set -e

cd ~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd ~/.vim

echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
' > ~/.vimrc

vim -u ~/.vimrc +PlugInstall! +PlugClean! +qall

echo "Installed the Full Vim configuration successfully!"
