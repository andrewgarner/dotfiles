#!/bin/bash

set -e

echo "Installing Bash dotfiles"
stow bash

echo "Installing Brew dotfiles"
stow brew

echo "Installing Fish shell dotfiles"
stow fish

echo "Installing Ion shell dotfiles"
stow ion

echo "Installing PowerShell dotfiles"
stow powershell

echo "Installing Z shell dotfiles"
stow zsh
