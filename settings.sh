# This is the default path where any binaries (such as NeoVim) will be
# installed on the new machine.
#
# Note: Though this could likely default to something like /usr/local/bin
# or some location like that, I frequenly find myself having to port my
# dev setup to machines where I do not have root access (i.e. shared clusters
# that I may use for work or school). In this case, I find it much easier to
# just keep a private $(HOME)/bin directory, which I can add to my system
# path, that contains all of my custom installed binaries.
DEFAULT_BIN_PATH=~/bin

# If set to true, the install.sh script will cause NeoVim to be installed
# in the DEFAULT_BIN_PATH directory. It will also install Plug as a plugin
# manager, and import basic NeoVim configurations.
INSTALL_NEOVIM=true

# If set to true, the install.sh script will create a ~/.bashrc containing
# the contents of the ./bashrc file in this directory.
INSTALL_BASHRC=true

# If set to true, the install.sh script will create a ~/.bash_profile containing
# the contents of the ./bash_profile file in this directory.
INSTALL_BASH_PROFILE=true

# If set to true, the install.sh script will populate ~/.gitconfig with the
# settings contained in ./gitconfig (you'll need to edit settings like
# user.name and user.email before using this setting unless you want to give 
# me credit for your contributions).
INSTALL_GITCONFIG=true

