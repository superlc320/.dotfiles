#!/bin/sh

if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile_backup
fi
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

