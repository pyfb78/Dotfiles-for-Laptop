#!/bin/bash

echo "[remote-nvim] Syncing local Neovim config..."

# Sync Neovim config
rsync -az --delete ~/.config/nvim/ "$REMOTE_USER@$REMOTE_HOST:~/.config/nvim/"
rsync -az ~/.local/share/nvim/ "$REMOTE_USER@$REMOTE_HOST:~/.local/share/nvim/"
rsync -az ~/.cache/nvim/ "$REMOTE_USER@$REMOTE_HOST:~/.cache/nvim/"

