#!/usr/bin/env bash
# Install script for yarn-completion

set -e

SHELL_TYPE="${1:-bash}"

case "$SHELL_TYPE" in
    bash)
        DEST="${HOME}/.local/share/bash-completion/completions"
        mkdir -p "$DEST"
        cp completions/yarn "$DEST/yarn"
        echo "Installed bash completion to $DEST/yarn"
        echo "Add this to your ~/.bashrc:"
        echo "  source $DEST/yarn"
        ;;
    zsh)
        DEST="${HOME}/.zsh/completions"
        mkdir -p "$DEST"
        cp completions/_yarn "$DEST/_yarn"
        echo "Installed zsh completion to $DEST/_yarn"
        echo "Add this to your ~/.zshrc:"
        echo "  fpath=($DEST \$fpath)"
        echo "  autoload -U compinit && compinit"
        ;;
    *)
        echo "Usage: ./install.sh [bash|zsh]"
        exit 1
        ;;
esac