#!/bin/bash
# exit when any command fails
set -e

../install-scripts/01-update-repository.sh
../install-scripts/10-install-vim.sh
../install-scripts/14-install-git.sh
./01-create-repositories.sh
