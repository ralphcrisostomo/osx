#!/bin/bash

# DESCRIPTION
# Applies basic system settings.

# EXECUTION
printf "Setting system label and name...\n"
sudo scutil --set ComputerName $SYSTEM_LABEL
sudo scutil --set HostName $SYSTEM_NAME
sudo scutil --set LocalHostName $SYSTEM_NAME
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $SYSTEM_NAME

printf "Setting default desktop image (3200x2000@300).\n"
sudo rm -f /System/Library/CoreServices/DefaultDesktop.jpg
sudo cp settings/wallpaper.jpg /System/Library/CoreServices/DefaultDesktop.jpg

printf "Setting application preference...\n"
cp -f "$PWD/settings/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/"
cp -f "$PWD/settings/com.manytricks.Moom.plist" "$HOME/Library/Preferences/"

printf "Setting inconsalata font...\n"
cp -f "$PWD/settings/Inconsolata.otf" "/Library/Fonts/"

printf "Cleaning default directories...\n"
#rm -rf $HOME/Documents/*
#rm -rf $HOME/Downloads/*

printf "Creating default directories...\n"
mkdir -pv $HOME/Documents/_personal
mkdir -pv $HOME/Documents/_accounts
mkdir -pv $HOME/Documents/_invoice
mkdir -pv $HOME/Documents/_tickets

mkdir -pv $HOME/Projects
mkdir -pv $HOME/Projects/_clone
mkdir -pv $HOME/Projects/_experiments
mkdir -pv $HOME/Projects/_resources
mkdir -pv $HOME/Projects/_projects
