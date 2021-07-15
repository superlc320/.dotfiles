#!/bin/sh

if [ -f ~/.clang-format ]; then
    mv ~/.clang-format ~/.clang-format_backup
fi
ln -s ~/.dotfiles/.clang-format ~/.clang-format

