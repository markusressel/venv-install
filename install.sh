#!/bin/bash

# exit when any command fails
set -e

sudo cp venv-install /usr/bin/
sudo chmod +x /usr/bin/venv-install

sudo cp venv-uninstall /usr/bin/
sudo chmod +x /usr/bin/venv-uninstall

sudo cp venv-update /usr/bin/
sudo chmod +x /usr/bin/venv-update