#!/usr/bin/bash

pip install 'python-lsp-server[all]'
sudo npm install -g \
        @angular/language-server \
        sql-language-server \
        typescript \
        typescript-language-server \
        vim-language-server \
        vls \
        vscode-langservers-extracted

sudo pacman -Sy \
        gopls \
        lua-language-server \
        rust-analyzer \
        --needed \
        --noconfirm

# go install github.com/lighttiger2505/sqls@latest

go install github.com/fatih/gomodifytags@latest
