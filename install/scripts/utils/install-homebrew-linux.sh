#!/bin/bash

echo "installing Homebrew ..."
# copied from Homebrew installer page
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" </dev/null

# add to path via profile
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/"$(echo $(whoami))"/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)