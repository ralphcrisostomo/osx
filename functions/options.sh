#!/bin/bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
function process_option() {
  case $1 in
    'r')
      scripts/clone.sh
      break;;
    'b')
      scripts/basic.sh
      break;;
    'h')
      scripts/homebrew.sh
      break;;
    'a')
      #scripts/applications.sh
      scripts/no-download-applications.sh
      break;;
    'x')
      scripts/extensions.sh
      break;;
    'd')
      scripts/defaults.sh
      break;;
    's')
      scripts/setup.sh
      break;;
    'w')
      clean_work_path
      break;;
    'i')
      caffeinate_machine
      scripts/basic.sh
      scripts/homebrew.sh
      # scripts/applications.sh # Enable this if you want to download online!
      scripts/no-download-applications.sh
      scripts/extensions.sh
      scripts/defaults.sh
      scripts/clone.sh
      scripts/setup.sh
      clean_work_path
      break;;
    'c')
      verify_homebrews
      verify_applications
      verify_extensions
      break;;
    'C')
      caffeinate_machine
      break;;
    'A')
      uninstall_application
      break;;
    'X')
      uninstall_extension
      break;;
    'q')
      break;;
  esac
}
export -f process_option
