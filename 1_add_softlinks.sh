#!/bin/sh

rm -f ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

rm -f ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

rm -f ~/.ycm_extra_conf.py
ln -s ~/.dotfiles/.ycm_extra_conf.py ~/.ycm_extra_conf.py

rm -f ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
