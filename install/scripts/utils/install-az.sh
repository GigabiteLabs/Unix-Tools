#!/bin/bash
echo "installing Azure CLI ..."

if [ "$SYSTEM_TYPE" = "Linux" ]; then
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
elif [ "$SYSTEM_TYPE" = "Mac" ]; then
    brew update && brew install azure-cli
else
    echo "WARNING: unsupported system type, neither mac nor linux, skipping Azure CLI installation."
fi