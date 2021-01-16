#!/bin/bash
# exit when any command fails
set -e

../install-scripts/01-update-repository.sh
../install-scripts/10-install-vim.sh
../install-scripts/14-install-git.sh
../install-scripts/02-install-java-jdk.sh
../install-scripts/06-install-curl.sh
../install-scripts/18-set-java-home.sh


