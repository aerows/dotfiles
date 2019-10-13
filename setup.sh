#!/usr/bin/env bash
DOTDIR="$(dirname "$BASH_SOURCE")"
echo "Linking .dotfiles to $DOTDIR"
echo "mv $HOME/.zshrc $HOME/.zshrc.predotfiles"
echo "stow -d $DOTDIR -t $HOME zsh"
echo "stow -d $DOTDIR -t $HOME tmux"
echo "stow -d $DOTDIR -t $HOME vim"
