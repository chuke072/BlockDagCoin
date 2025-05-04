#!/bin/sh
# Copyright (c) 2023 BlockDagCoin Developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

# Automatically setup the build system for BlockDagCoin

set -e

if [ "x$1" = "x--download" ]; then
    DOWNLOAD_TRUE=1
fi

# Check for required tools
check_tool() {
    if ! command -v $1 >/dev/null 2>&1; then
        echo "Error: $1 is required but not installed."
        echo "Please install $1 and try again."
        exit 1
    fi
}

check_tool aclocal
check_tool autoconf
check_tool automake
check_tool libtoolize
check_tool pkg-config

# Create necessary directories
mkdir -p build-aux/m4

# Check for submodules if we're in a git repo
if [ -d .git ] || [ -f .git ]; then
    if [ "x$DOWNLOAD_TRUE" != "x1" ]; then
        if [ -f .gitmodules ]; then
            echo "Initializing git submodules..."
            git submodule update --init --recursive
        fi
    fi
fi

echo "Running aclocal..."
aclocal -I build-aux/m4

echo "Running libtoolize..."
libtoolize --copy --force

echo "Running autoconf..."
autoconf --force

echo "Running automake..."
automake --add-missing --copy --foreign

echo "Autogen.sh complete. Now you can run ./configure"
