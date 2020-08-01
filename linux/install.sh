#!/bin/bash

# Install requirements
sudo apt-get install -y xclip

# Install scripts
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" # Location of this script
SCRIPTS_HOME="$DIR/scripts"
$SCRIPTS_HOME/exportpath $SCRIPTS_HOME

