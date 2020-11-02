#!/usr/bin/env zsh

# To access windows clipboard from WSL via XLaunch - https://github.com/Microsoft/WSL/issues/892
export DISPLAY=localhost:0.0

# Pyenv
export PATH="/home/daniel/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"

# Set browser
export BROWSER="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"

export PATH="/home/daniel/.local/bin/:$PATH"
export PATH="/home/daniel/scripts/:$PATH"

# Docker
export DOCKER_HOST=tcp://0.0.0.0:2375

# Aliases
alias deeplearning1="ssh visionists@10.20.10.90"
alias deeplearning2="ssh visionists@10.20.10.91"

alias start='cmd.exe /c start'

alias nvidia-smi="nvidia-smi.exe"
alias nvidia-smic="watch -n 1 nvidia-smi.exe"

alias wgst="watch -n1 git status ."

# Enable tab completion of flags
# source $(dirname $(gem which colorls))/tab_complete.sh

alias ,m="$EDITOR /mnt/c/Users/$USER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"

alias git-bash="/mnt/c/Program\ Files/Git/usr/bin/bash.exe"


export DISABLE_AUTO_TITLE='true'
