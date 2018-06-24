#!/usr/bin/env bashrc
source ~/.git-prompt.sh

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
alias venv='source ~/venv/bin/activate'
alias vim='nvim'
alias vi='nvim'


# make ls colorized, add a forward slash after each directory,
# and use unit suffixes when displaying file sizes
alias ls="ls -GFh"

# useful git aliases
alias g="git"
alias gac='git add -A && git commit '

# get line wrapping from the sml interpreter
alias sml="rlwrap sml"

alias afsmount="sshfs mkasper@linux.andrew.cmu.edu:/afs/andrew.cmu.edu/usr14/mkasper/private"
alias afsunmount="diskutil unmount"

# quick alias to ssh onto OS machines with x11 forwarding enabled
alias sshos="ssh -X -o 'ForwardX11Timeout 7d' mkasper@linux.andrew.cmu.edu"
