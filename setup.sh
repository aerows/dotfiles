#!/usr/bin/env bash
DOTDIR="$(dirname "$BASH_SOURCE")"

mv $HOME/.zshrc $HOME/.zshrc.predotfiles
stow -d $DOTDIR -t $HOME zsh
stow -d $DOTDIR -t $HOME tmux
stow -d $DOTDIR -t $HOME vim
