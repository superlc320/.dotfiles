#!/bin/sh

if [ -f ~/.gitconfig ]; then
	rm ~/.gitconfig
fi
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

