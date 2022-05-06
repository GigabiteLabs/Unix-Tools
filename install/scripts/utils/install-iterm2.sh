#!/bin/bash

echo "installing Iterm2 ..."

DL_LOCATION="https://iterm2.com/downloads/stable"
TMP_DIR=$INSTALLATION_ROOT/tmp
ZIP_FILE="iTerm2-3_4_15.zip"
APP_NAME="iTerm.app"
APPLICATION_DIR="/Applications/"

# setup tmp
mkdir $TMP_DIR
cd $TMP_DIR &&

# download to tmp
sudo curl -O "$DL_LOCATION/$ZIP_FILE" &&

# unzip
unzip "$TMP_DIR/$ZIP_FILE" &&

# mv to applications dir
mv $APP_NAME $APPLICATION_DIR

# cleanup
cd ..
rm -r $TMP_DIR