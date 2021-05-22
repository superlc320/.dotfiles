#!/bin/sh

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc_backup
fi
ln -s ~/.dotfiles/.vimrc ~/.vimrc

