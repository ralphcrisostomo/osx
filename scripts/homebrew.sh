#!/bin/bash

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
if ! command -v brew > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  export PATH="/usr/local/bin:$PATH"
  printf "export PATH=\"/usr/local/bin:$PATH\"\n" >> $HOME/.bash_profile
fi


# Zsh
brew install zsh

# Bash Completion
brew install bash-completion

# ShellCheck
brew install shellcheck

# Z
brew install z

# Tree
brew install tree

# hr
brew install hr

# Git
brew install git --without-completions

# Silver Searcher
brew install the_silver_searcher

# Tag
brew install tag

# Graphviz
brew install graphviz

# Node
brew install node

# Peco
brew tap peco/peco
brew install peco

# Wry
brew install wry

# lnav
brew install lnav

# cloc
brew install cloc

# Terminal Notifier
brew install terminal-notifier

# Git Flow
brew install git-flow

# Fortune
brew install fortune

# Cowsay
brew install cowsay
