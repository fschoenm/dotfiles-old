#!/bin/bash

DOTFILES_DIR=$HOME/.dotfiles
BACKUP_DIR=$HOME/.dotfiles.bak

FILES="vimrc"

for file in $FILES; do
    ln -f -s $DOTFILES_DIR/$file $HOME/.$file
done
