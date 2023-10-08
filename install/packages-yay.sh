#!/usr/bin/bash

yay -Sy \
        antigen \
        aws-sam-cli-bin \
        i3lock-fancy-multimonitor \
        insomnia-bin \
        jetbrains-toolbox \
        oh-my-zsh-git \
        onlyoffice-desktopeditors \
        pgmodeler \
        adwaita-qt5-git \
        adwaita-qt6-git \
        --needed

# wkhtmltopdf has problems with qt5-webkit build
