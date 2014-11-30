#!/bin/bash

# DESCRIPTION
# Installs OSX applications.

# USAGE
# See the functions/functions.sh script for install choices and related usage.

# DEVELOPMENT
# Gitbox
install_zip_app "$GITBOX_APP_URL" "$GITBOX_APP_NAME"

# Kaleidoscope
install_zip_app "$KALEIDOSCOPE_APP_URL" "$KALEIDOSCOPE_APP_NAME"

# iTerm
install_zip_app "$ITERM_APP_URL" "$ITERM_APP_NAME"

# Robomongo
install_dmg_app "$ROBOMONGO_APP_URL" "Robomongo-0.8.4-x86_64" "$ROBOMONGO_APP_NAME"

# RubyMine
install_dmg_app "$RUBYMINE_APP_URL" "RubyMine-7.0" "$RUBYMINE_APP_NAME"

# Mou
install_zip_app "$MOU_APP_URL" "$MOU_APP_NAME"

# Sublime Text 2
install_dmg_app "$SUBLIME_TEXT_APP_URL" "Sublime Text 2" "$SUBLIME_TEXT_APP_NAME"

# Sublime Text 2 URL Handler
install_zip_app "$SUBLIME_URL_HANDLER_APP_URL" "$SUBLIME_URL_HANDLER_APP_NAME"

# ESSENTIAL
# Wine
install_dmg_app "$WINE_APP_URL" "WineBottler Combo" "$WINE_APP_NAME"

# WineBottler
install_dmg_app "$WINEBOTTLER_APP_URL" "WineBottler Combo" "$WINEBOTTLER_APP_NAME"

# Moom
install_dmg_app "$MOOM_APP_URL" "moom320" "$MOOM_APP_NAME"

# Alfred
install_zip_app "$ALFRED_APP_URL" "$ALFRED_APP_NAME"

# CheatSheet
install_zip_app "$CHEATSHEET_APP_URL" "$CHEATSHEET_APP_NAME"

# VLC
install_dmg_app "$VLC_APP_URL" "vlc-2.1.5" "$VLC_APP_NAME"

# Skype
install_dmg_app "$SKYPE_APP_URL" "Skype_7.2.412" "$SKYPE_APP_NAME"

# Yahoo Messenger
install_dmg_app "$YAHOOMESSENGER_APP_URL" "yahoomessenger_3.0.2build235554" "$YAHOOMESSENGER_APP_NAME"

# Dropbox
install_dmg_app "$DROPBOX_APP_URL" "Dropbox Installer" "$DROPBOX_APP_NAME"

# Google Drive
install_dmg_app "$GOOGLEDRIVE_APP_URL" "Google Drive" "$GOOGLEDRIVE_APP_NAME"

# Google Chrome
install_dmg_app "$CHROME_APP_URL" "Google Chrome" "$CHROME_APP_NAME"




