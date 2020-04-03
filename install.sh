#!/usr/bin/env bash

set -e

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

rcup -d . -x install.sh -x LICENSE -x README.md

brew bundle
brew cleanup
