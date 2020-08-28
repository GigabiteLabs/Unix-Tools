#!/bin/sh

# installer env vars
export INSTALLATION_ROOT="$(pwd)"
export INSTALLER_DIR="$(pwd)/install/scripts"

# installer function exports

# checks if an application exists
should_install() {
    app="$(which $1)"
    if [ -f "$app"  ]; then
        echo "false"
    else
        echo "true"
    fi
}

declare -x -f should_install
# installer aliases


#****************************
#   Unix Env Vars
#****************************
# these should always be 
# exported for unix systems

#****************************
#   macOS Vars
#****************************
if [ "$SYSTEM_TYPE" == "Mac" ]; then
    echo "configuring installation paths for a macOS environment ..."
    export GBL_CLI_DIR="/usr/local/GigabiteLabs"
    export BIN_DIR="/usr/etc/local/bin"
    export SYSTEM_DIR_NAME="macOS"
fi

#****************************
#   Ubuntu Vars
#****************************
if [ "$SYSTEM_TYPE" == "Linux" ]; then
    echo "configuring installation paths for a linux environment ..."
    export GBL_CLI_DIR="/usr/local/GigabiteLabs"
    export BIN_DIR="/usr/etc/local/bin"
    export SYSTEM_DIR_NAME="linux"
fi