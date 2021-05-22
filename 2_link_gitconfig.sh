#!/bin/sh

if [ -f ~/.gitconfig ]; then
	mv ~/.gitconfig ~/.gitconfig_backup
fi
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

