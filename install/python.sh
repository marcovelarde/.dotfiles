#!/usr/bin/bash

# Remove ~/.local/pipx when host update the default python version and reinstall

pipx install md2pdf
pipx install poetry
pipx install --pip-args='--pre' lookatme
pipx ensurepath
