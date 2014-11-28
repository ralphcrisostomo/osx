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
sudo cp settings/default_desktop.jpg /System/Library/CoreServices/DefaultDesktop.jpg

printf "Cleaning default directories...\n"
#rm -rf $HOME/Documents/*
#rm -rf $HOME/Downloads/*

printf "Creating default directories...\n"
#mkdir $HOME/Documents/_personal
#mkdir $HOME/Documents/_accounts
#mkdir $HOME/Documents/_invoice
#mkdir $HOME/Documents/_tickets
#
#mkdir $HOME/Projects
#mkdir $HOME/Projects/_clone
#mkdir $HOME/Projects/_experiments
#mkdir $HOME/Projects/_resources
#mkdir $HOME/Projects/_projects
