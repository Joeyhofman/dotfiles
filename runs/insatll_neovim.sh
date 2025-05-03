#!/bin/bash

cd $HOME/personal/neovim/
git clone https://github.com/neovim/neovim.git $HOME/personal/neovim
sudo apt install cmake gettext lua liblua

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
