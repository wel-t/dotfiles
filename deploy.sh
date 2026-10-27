#!/usr/bin/env bash
# Simple deployment script for dotfiles.
# Run this on a new machine after cloning the repo.

set -e
DOTFILES_DIR="$HOME/repos/dotfiles"
CONFIG_DIR="$HOME/.config"

echo "Deploying dotfiles from $DOTFILES_DIR to $CONFIG_DIR..."

# Ensure config dir exists
mkdir -p "$CONFIG_DIR"

# Espanso
if [ -d "$DOTFILES_DIR/desktop/espanso" ]; then
    echo "-> Linking espanso..."
    rm -rf "$CONFIG_DIR/espanso"
    ln -sfn "$DOTFILES_DIR/desktop/espanso" "$CONFIG_DIR/espanso"
fi

# (Add other dotfiles here later, e.g. alacritty, nvim)

echo "Done! Restart relevant services (e.g., 'espanso restart')."
