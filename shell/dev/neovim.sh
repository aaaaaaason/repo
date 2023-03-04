#!/bin/bash

if ! which nvim >> /dev/null 2>&1; then
  echo "install neovim..."

  path=$HOME/Projects/neovim
  mkdir -p $path

  sudo apt install -y \
    build-essential \
    cmake \
    gettext \
    unzip

  sudo npm install -g tree-sitter-cli

  git clone --depth=1 https://github.com/neovim/neovim.git $path
  cd $path
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install

  git clone https://github.com/aaaaaaason/nvim.git $HOME/.config/nvim

  cd -
fi

