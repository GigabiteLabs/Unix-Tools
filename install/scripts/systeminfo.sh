#!/bin/sh

echo "gathering system info ..."

# export type of current environment
export SYSTEM_TYPE="$(sh $INSTALLATION_ROOT/systems/system.sh)"