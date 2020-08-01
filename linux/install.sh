#!/bin/bash

# Install requirements
sudo apt-get install -y xclip

# Install scripts
sh scripts/useascmd scripts/useascmd useascmd
for script in scripts/*; do
    useascmd $script ${script##*/}
done

