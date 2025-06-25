#!/bin/bash

cd $HOME/personal/neovim/
git clone https://github.com/neovim/neovim.git $HOME/personal/neovim
sudo apt install cmake gettext lua liblua

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

export PATH=$PATH:/home/joey/personal/neovim/build/bin

echo "Symlinking Neovim config.."
ln -s ~/personal/dev_setup/neovim_config/nvim ~/.config/nvim
