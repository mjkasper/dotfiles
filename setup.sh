#!/bin/bash

# default path for binaries to be installed (change this as needed)
DEFAULT_BIN_PATH=~/bin

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

# download the neovim binary and save it as $(DEFAULT_BIN_PATH)/neovim
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x neovim.appimage
mv neovim.appimage "$DEFAULT_BIN_PATH"/neovim

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

##############################################################################
#                           Install Bash Settings                            #
##############################################################################

cat ./bashrc > ~/.bashrc
cat ./bash_profile > ~/.bash_profile

