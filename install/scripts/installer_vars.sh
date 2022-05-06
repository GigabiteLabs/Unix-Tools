#!/bin/sh

echo "setting up installer environment"

# installer env vars
export INSTALLATION_ROOT="$(pwd)"
export INSTALLER_DIR="$(pwd)/install/scripts"
export SYSTEMS_DIR="$INSTALLATION_ROOT/systems"
export UNIX_SYS_DIR="$SYSTEMS_DIR/unix"
export MACOS_SYS_DIR="$SYSTEMS_DIR/macOS"
export LINUX_SYS_DIR="$SYSTEMS_DIR/linux"

# get system type
export SYSTEM_TYPE="$(bash $SYSTEMS_DIR/system_type.sh)"

## installer functions
# checks if an application exists
should_install() {
    app="$(which $1)"
    if [ -f "$app"  ]; then
        echo "false"
    else
        echo "true"
    fi
}
# determines if an app should 
# be installed, skips if already
# installed.
tryInstall() {
    APP_NAME="$1"
    echo "checking $APP_NAME installation"
    
    if [ "$(should_install $APP_NAME)" == "true" ]; then
        bash $INSTALLER_DIR/utils/install-$APP_NAME.sh
    else 
        echo "$APP_NAME already installed ✅"
    fi
}
# export functions
declare -x -f should_install
declare -x -f tryInstall

# installer aliases


#****************************
#   Unix Env Vars
#****************************
# these should always be 
# exported for unix systems

#****************************
#   macOS Vars
#****************************
if [ $"SYSTEM_TYPE" = "Mac" ]; then
    echo "configuring installation paths for a macOS environment ..."
    export BIN_DIR="/usr/etc/local/bin"
fi

#****************************
#   Ubuntu Vars
#****************************
if [ "$SYSTEM_TYPE" = "Linux" ]; then
    echo "configuring installation paths for a linux environment ..."
    export BIN_DIR="/usr/etc/local/bin"
    export SYSTEM_DIR_NAME="linux"
fi