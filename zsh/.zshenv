#!/usr/bin/env zsh

# To access windows clipboard from WSL via XLaunch - https://github.com/Microsoft/WSL/issues/892
export DISPLAY=localhost:0.0

# Set browser
export BROWSER="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"

export LD_LIBRARY_PATH="/home/daniel/lib/TensorRT-4.0.1.6/lib:${LD_LIBRARY_PATH}"

# Docker
export DOCKER_HOST=tcp://0.0.0.0:2375

# Aliases
alias deeplearning1="ssh visionists@10.20.10.90"
alias deeplearning2="ssh visionists@10.20.10.91"

alias a="source venv/bin/activate"
alias d="deactivate"

alias start='cmd.exe /c start'

alias nvidia-smi="nvidia-smi.exe"
alias nvidia-smic="watch -n 1 nvidia-smi.exe"
alias py="py.exe"
alias svn="svn.exe"

