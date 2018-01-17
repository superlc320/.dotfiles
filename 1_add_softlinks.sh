#!/bin/sh

rm ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

rm ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

rm ~/.ycm_extra_conf.py
ln -s ~/.dotfiles/.ycm_extra_conf.py ~/.ycm_extra_conf.py

rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
