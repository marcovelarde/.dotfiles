#!/usr/bin/bash

pip install 'python-lsp-server[all]'
sudo npm install -g typescript typescript-language-server \
  vls \
  vim-language-server \

sudo pacman -Sy gopls \
  lua-language-server \
  --needed \
  --noconfirm
