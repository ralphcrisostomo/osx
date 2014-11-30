#!/bin/bash
#
#DESCRIPTION
# Installs OSX applications from local external hd.
#
#USAGE
#See the functions/functions.sh script for install choices and related usage.

# DEVELOPMENT
# Gitbox
install_zip_app "file:/Volumes/Softwares/_osx/_development/gitbox-1.6.2-ml.zip" "Gitbox.app"

# Kaleidoscope
install_zip_app "file:/Volumes/Softwares/_osx/_development/Kaleidoscope-2.1.0-134.zip" "Kaleidoscope.app"

# iTerm
install_zip_app "file:/Volumes/Softwares/_osx/_development/iTerm2_v2_0.zip" "iTerm.app"

# Robomongo
install_dmg_app "file:/Volumes/Softwares/_osx/_development/Robomongo-0.8.4-x86_64.dmg" "Robomongo-0.8.4-x86_64" "Robomongo.app"

# RubyMine
install_dmg_app "file:/Volumes/Softwares/_osx/_development/RubyMine-7.0.dmg" "RubyMine" "RubyMine.app"

# Mou
install_zip_app "file:/Volumes/Softwares/_osx/_development/Mou.zip" "Mou.app"

# Sublime Text 2
install_dmg_app "file:/Volumes/Softwares/_osx/_development/Sublime Text 2.0.2.dmg" "Sublime Text 2" "Sublime Text 2.app"

# Sublime Text 2 URL Handler
install_zip_app "file:/Volumes/Softwares/_osx/_development/SublHandler.zip" "SublHandler.app"

# ESSENTIAL
# JAVA
install_dmg_pkg "file:/Volumes/Softwares/_osx/_essential/JavaForOSX2014-001.dmg" "Java For OS X 2014-001" "Java.app"

# Wine
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/WineBottlerCombo_1.7.31.dmg" "WineBottler Combo" "Wine.app"

# WineBottler
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/WineBottlerCombo_1.7.31.dmg" "WineBottler Combo" "WineBottler.app"

# Moom
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/moom320.dmg" "Moom" "Moom.app"

# Alfred
install_zip_app "file:/Volumes/Softwares/_osx/_essential/Alfred_2.5.1_308.zip" "Alfred 2.app"

# CheatSheet
install_zip_app "file:/Volumes/Softwares/_osx/_essential/CheatSheet_1.2.2.zip" "CheatSheet.app"

# VLC
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/vlc-2.1.5.dmg" "vlc-2.1.5" "VLC.app"

# Skype
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/Skype_7.2.412.dmg" "Skype" "Skype.app"

# Yahoo Messenger
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/yahoomessenger_3.0.2build235554.dmg" "Yahoo! Messenger" "Yahoo! Messenger.app"

# Dropbox
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/DropboxInstaller.dmg" "Dropbox Installer" "Dropbox.app"

# Google Drive
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/installgoogledrive.dmg" "Install Google Drive" "Google Drive.app"

# Google Chrome
install_dmg_app "file:/Volumes/Softwares/_osx/_essential/GoogleChrome.dmg" "Google Chrome" "Google Chrome.app"

# GOOGLE APPS
cp -rf "/Volumes/Softwares/_osx/_development/Chrome Apps.localized" "$HOME/Applications/"

