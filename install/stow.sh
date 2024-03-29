#!/usr/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"
STOW_FOLDERS="home,kitty,nvim,lazygit"

# TODO: Remove files only if are not symlinks
rm -rf $HOME/.zshrc
rm -rf $HOME/.profile

pushd $DOTFILES_DIR
for folder in $(echo $STOW_FOLDERS | tr "," "\n"); do
    echo "stow $folder"
    stow -R $folder
done
popd
echo "stow complete"
