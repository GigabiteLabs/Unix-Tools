#!/bin/bash

echo "checking for unix env developer tools ..."

# determine if Homebrew should be installed
if [ "$(should_install brew)" = "true" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
else 
    printf "Homebrew already installed ✅"
fi