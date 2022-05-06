#!/bin/bash
echo "installing Docker"

# run system-specific installs
if [ "$SYSTEM_TYPE" = "Linux" ]; then
    echo "LINUX DOCKER INSTALL NOT CONFIGURED"
elif [ "$SYSTEM_TYPE" = "Mac" ]; then
    curl -O https://desktop.docker.com/mac/main/amd64/Docker.dmg
    sudo hdiutil attach Docker.dmg
    sudo /Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license
    sudo hdiutil detach /Volumes/Docker
    rm Docker.dmg
else
    echo "WARNING: unsupported system type, neither mac nor linux, skipping Azure CLI installation."
fi
