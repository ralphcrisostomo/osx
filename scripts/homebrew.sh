#!/bin/sh

# DESCRIPTION
# Installs and configures OSX software.

# EXECUTION
# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Bash Completion (http://bash-completion.alioth.debian.org)
brew install bash-completion

# Git
brew install git

# GitHub
brew install hub

# Pigz (http://www.zlib.net/pigz)
brew install pigz

# JSON CLI Parser (http://stedolan.github.com/jq)
brew install jq

# Network Grep (http://ngrep.sourceforge.net)
brew install ngrep

# ImageMagick
brew install imagemagick

# Graphviz
brew install graphviz

# Node
brew install node

# Phantom.js
brew install phantomjs

# Ruby Gems
git clone git://github.com/bkuhlmann/ruby_gem_setup.git
cd ruby_gem_setup
./install.sh
cd $HOME
rm -rf ruby_gem_setup

# Ruby
brew install rbenv
brew install rbenv-gem-rehash
brew install rbenv-default-gems
brew install rbenv-vars
cp ../settings/rbenv-vars.txt $HOME/.rbenv/vars
brew install --HEAD ruby-build
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
rbenv rehash

# Dotfiles
git clone git://github.com/bkuhlmann/dotfiles.git
cd dotfiles
./install.sh
cd $HOME
rm -rf dotfiles
source $HOME/.bashrc

# Pow
curl get.pow.cx | sh

# PostgreSQL
brew install postgresql
initdb /usr/local/var/postgres -E utf8

cp /usr/local/Cellar/postgresql/*/homebrew.mxcl.postgresql.plist $HOME/Library/LaunchAgents
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# Redis
brew install redis
cp /usr/local/Cellar/redis/*/homebrew.mxcl.redis.plist $HOME/Library/LaunchAgents/
launchctl load -w $HOME/Library/LaunchAgents/homebrew.mxcl.redis.plist
