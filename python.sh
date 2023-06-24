#!/usr/bin/bash

# Remove ~/.local/pipx when host update the default python version and reinstall

python3 -m pip install --user pipx md2pdf
python3 -m pipx ensurepath

pipx install awsebcli
pipx install poetry
pipx install lookatme
