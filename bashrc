#!/usr/bin/env bashrc

# Set up system path variable
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:/usr/local/opt/ruby/bin:$PATH"

# Set our preferred LSCOLORS
export CLICOLOR=1
export LSCOLORS="ExFxBxDxCxegedabagacad"

# Make our shell start off in a specific directory
START_DIRECTORY=~/Desktop
cd $START_DIRECTORY

# Set the shell prompt
export PS1="\[$(tput setaf 6)\]\h \[$(tput setaf 3)\]\w \[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"


# useful filesystem navigation aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# quickly enable a python virtual environment
alias venv='source venv/bin/activate'

# use neovim instead of vim
alias vim='nvim'
alias vi='nvim'


# make ls colorized, add a forward slash after each directory,
# and use unit suffixes when displaying file sizes
alias ls="ls -GFh"

# useful git aliases
alias g="git"

# get line wrapping from the sml interpreter
alias sml="rlwrap sml"

