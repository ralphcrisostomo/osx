#!/bin/bash

# DESCRIPTION
# Sets up and launches (if necessary) installed software.

# Bash
#sudo bash -c "printf '/usr/local/bin/bash\n' >> /etc/shells"

# Bash Completion
#chsh -s /usr/local/bin/bash

# rbenv
#export PATH="/usr/local/bin:$PATH"
#eval "$(rbenv init -)"
#mkdir -p $HOME/.rbenv && cp settings/rbenv-vars.txt $HOME/.rbenv/vars
#for ruby in $MRI $RUBINIUS $JRUBY; do
#  rbenv install $ruby
#done
#rbenv global $MRI

# Ruby
#git clone git://github.com/bkuhlmann/ruby_setup.git
#(
#  cd ruby_setup
#  for ruby in $MRI $RUBINIUS $JRUBY; do
#    rbenv shell $ruby
#    ./run.sh i
#  done
#)
#rm -rf ruby_setup

# Go
#install_git_project "git://github.com/bkuhlmann/go_setup.git" "v0.1.1" "go_setup" "./run.sh i"

# NPM
install_git_project "git://github.com/ralphcrisostomo/npm_setup.git" "master" "npm_setup" "./run.sh i"

# PostgreSQL
#initdb /usr/local/var/postgres -E utf8
#launch_process "/usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist"

# Nginx
#launch_process "/usr/local/opt/nginx/homebrew.mxcl.nginx.plist"

# Memcached
#launch_process "/usr/local/opt/memcached/homebrew.mxcl.memcached.plist"

# Redis
#launch_process "/usr/local/opt/redis/homebrew.mxcl.redis.plist"



# Pow
#curl get.pow.cx | sh

# Google Chrome Ember Inspector
#(
#  cd "$EMBER_INSPECTOR_EXTENSION_PATH"
#  grunt
#)

# Sublime Text Setup
#if [ ! -e "/usr/bin/sublime" ]; then
#  sudo ln -sv "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
#fi
#install_git_project "git://github.com/bkuhlmann/sublime_text_setup.git" "v1.0.0" "sublime_text_setup" "./run.sh i"

# Change shell to zsh



# CLONE
# Solarized Theme
install_git_app "https://github.com/altercation/solarized" "$HOME/Projects/_clone/solarized"

# Intellij Theme
install_git_app "https://github.com/jkaving/intellij-colors-solarized" "$HOME/Projects/_clone/intellij-colors-solarized"

# oh-my-zsh!
rm -rf $HOME/.oh-my-zsh
install_git_app "git://github.com/robbyrussell/oh-my-zsh.git" "$HOME/.oh-my-zsh"

# Dotfiles
rm -f $HOME/.zshrc
rm -rf $HOME/.zsh
install_git_project "git://github.com/ralphcrisostomo/dotfiles.git" "master" "dotfiles" "./run.sh i"

chsh -s /bin/zsh 

source $HOME/.zshrc



