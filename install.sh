#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf "$DOTFILES_DIR/.vimrc" ~/.vimrc

echo "Vim config linked."
