# Install "sshpass" on macOS Catalina. 
# 
# - sshpass allows you to easily automate password entry 
# prompts for ssh sessions.
# 
# Don't mess around with terminal if you 
# don't know what any of this means, please.
# Evaluate for learning purposes at your own risk.
# 
# Licensed under MIT. See below.
#!/bin/sh

if [ "$(which sshpass)" != '' ] 
then
    echo "sshpass already installed."
    exit 0
fi

if [ "$(which brew)" = '' ]; then
    echo "homebrew installation not detected, first install homebrew"
    exit 1
else
    echo "tapping alternative source for sshpass ..."
    brew tap esolitos/ipa
    brew install sshpass
fi

# see manpage for usage: https://linux.die.net/man/1/sshpass

# License: MIT
# Copyright 2020, Gigabitelabs
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal 
# in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
# of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.