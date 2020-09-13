#!/bin/bash

set -e

echo "Installing asdf dotfiles"
stow asdf

echo "Installing Base16 shell dotfiles"
stow base16-shell

echo "Installing Bash dotfiles"
stow bash

if [ "$(uname)" == "Darwin" ]; then
  echo "Installing Brew dotfiles"
  stow brew --ignore='.*\.lock.json'
fi

echo "Installing Fish shell dotfiles"
stow fish

echo "Installing Git dotfiles"
stow git

echo "Installing Ion shell dotfiles"
stow ion

echo "Installing PowerShell dotfiles"
stow powershell

echo "Installing Z shell dotfiles"
stow zsh
