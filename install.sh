#!/bin/bash

source ./settings.sh

# Create default folder to store binaries if needed.
#
# Note: I don't use /usr/bin or /usr/local/bin due to potential permissions
# issues, it is much easier to keep my own private bin directory for work
# environments where I may not have superuser access.
if [ ! -d "$DEFAULT_BIN_PATH" ]; then
    mkdir "$DEFAULT_BIN_PATH"
fi

##############################################################################
#                               Install NeoVim                               #
##############################################################################

if [ "$INSTALL_NEOVIM" = true ]; then
    echo "Installing NeoVim..."
    # download the neovim binary and save it as $(DEFAULT_BIN_PATH)/neovim
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    chmod u+x nvim.appimage
    mv nvim.appimage "$DEFAULT_BIN_PATH"/nvim

    # add the binary directory to our PATH variable
    echo "export \"PATH=${DEFAULT_BIN_PATH}:$PATH\"" >> ~/.bashrc

    # download the Plug package manager for NeoVim
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # create a ~/.config directory if needed
    if [ ! -d ~/.config ]; then
        mkdir ~/.config
    fi

    # create a ~/.config/nvim directory if needed
    if [ ! -d ~/.config/nvim ]; then
        mkdir ~/.config/nvim
    fi

    # copy our neovim settings into init.vim
    cat init.vim > ~/.config/nvim/init.vim
fi

##############################################################################
#                         Install Git Configurations                         #
##############################################################################

# if requested, copy my gitconfig into ~/.gitconfig
if [ "$INSTALL_GITCONFIG" = true]; then
    echo "Installing git configurations..."
    cat ./gitconfig > ~/.gitconfig
fi

##############################################################################
#                           Install Bash Settings                            #
##############################################################################

# if requested, include a new ~/.bashrc
if [ "$INSTALL_BASHRC" = true ]; then
    echo "Installing ~/.bashrc..."
    cat ./bashrc > ~/.bashrc
fi

# if requested, include a new ~/.bash_profile
if [ "$INSTALL_BASH_PROFILE" = true ]; then
    echo "Installing ~/.bash_profile..."
    cat ./bash_profile > ~/.bash_profile
fi

# run the ~/.bashrc to reflect any new changes
source ~/.bashrc

# success!
echo "Done!"


