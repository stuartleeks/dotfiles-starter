#!/bin/bash

#
# This script installs dependencies
# It is intended to be run to set up the dotfiles
# And adds to .bashrc to source the load.sh script 
#

echo "*** Installing dotfiles..."

BASE_DIR=$(dirname "$0")
BASE_DIR=$(cd $BASE_DIR; pwd)

if grep -q DOTFILES_FOLDER ~/.bashrc; then
    echo "dotfiles loader already in .bashrc - skipping"
else
    echo "Adding dotfiles loader to .bashrc..."
    echo -e "# DOTFILES_START" >> ~/.bashrc
    echo -e "DOTFILES_FOLDER=\"$BASE_DIR\"" >> ~/.bashrc
    if [[ -n $DEV_CONTAINER ]]; then
        echo -e "DEV_CONTAINER=1" >> ~/.bashrc
    fi
    echo -e "source \"$BASE_DIR/load.sh\"" >> ~/.bashrc
    echo -e "# DOTFILES_END\n" >> ~/.bashrc
fi


echo "*** Installing dotfiles - complete"


