#!/bin/bash

PREFIX="[SYmlinking dotfiles]: "

echo "$PREFIX Symlinking .tmux.conf"
ln -s ~/personal/dev_setup/dotfiles/.tmux.conf ~/.tmux.conf


echo "$PREFIX Symlinking .bashrc"
ln -s ~/personal/dev_setup/dotfiles/.bashrc ~/.bashrc


echo "$PREFIX Symlinking .zshrc"
ln -s ~/personal/dev_setup/dotfiles/.zshrc ~/.zshrc

echo "$PREFIX Symlinking zoxide db.zo..."
ln -s ~/personal/dev_setup/zoxide/db.zo ~/.local/share/zoxide/db.zo

