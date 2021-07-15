## ZSH config loading order

##
# ZSH startup file loading order

## For every shell exec
# zshenv

## Login shells
# zshenv -> zprofile

## Interactive shells
# zshenv -> zprofile -> zshrc -> zlogin

##
# ZSH configuration files

# /etc/zshenv, $HOME/.zshenv
# Read and executed every time zsh is run.
# Appropriate use: config needed for non-interactive shells or updated when a new shell is launched
# Use for: PATH but not aliases, etc.

# /etc/zprofile, $HOME/.zprofile
# Read every time zsh is logged in.
# Appropriate use: commands which take time to complete
# Use for: commands and variables which should be set once or which don't
# need to be updated frequently.

# /etc/zshrc, $HOME/.zshrc
# Appropriate use: Configuration for interactive usage.
# Use for: Prompts, completion, corrections, suggestions, highlighting,
# coloring, aliases, key bindings, history, etc.

# /etc/zlogin, $HOME/.zlogin
# Shell should be considered fully set up by the time this
# is run. Used to launch commands which don't modify shell
# behavior, like login managers.

# /etc/zlogout, $HOME/.zlogout
# Read and executed on exit for for login shells.

## This is .zshenv
stage=".zshenv"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt extendedglob

SH_CONFIG=$HOME/.sh.d

##
# Load shared env vars

if [[ $SH_CONFIG/env.d/(#qNF) ]]
then
  for file in $SH_CONFIG/env.d/*
  do
    #printf "%-15s%s\n" $stage $file 
    source $file
  done
fi
