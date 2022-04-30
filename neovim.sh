#!/usr/bin/bash

#yay -Sy neovim-nightly-bin \
sudo pacman -S neovim \
  --needed \
  --noconfirm

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
