#!/bin/bash

PREFIX="[PYENV]: "

echo "$PREFIX updating repositories..."
sudo apt update

echo "$PREFIX updating dependancies..."
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev git

echo "$PREFIX downloading pyenv..."
curl https://pyenv.run | bash


echo "$PREFIX cofnigureing shell for pyenv..."
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
