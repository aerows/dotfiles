#!/usr/bin/env zsh

# To access windows clipboard from WSL via XLaunch - https://github.com/Microsoft/WSL/issues/892
export DISPLAY=localhost:0.0

# Set browser
export BROWSER="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"

# Docker
export DOCKER_HOST=tcp://0.0.0.0:2375

# Aliases
alias deeplearning1="ssh visionists@10.20.10.90"
alias deeplearning2="ssh visionists@10.20.10.91"
