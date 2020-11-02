# #=====================================
# # Profiling
# zmodload zsh/datetime
# setopt PROMPT_SUBST
# PS4='+$EPOCHREALTIME %N:%i> '
# 
# logfile=$(mktemp zsh_profile.XXXXXXXX)
# echo "Logging to $logfile"
# exec 3>&2 2>$logfile
# 
# setopt XTRACE
# #-------------------------------------


# zmodload zsh/zprof  # For profiling

SAVEHIST=1000
HISTSIZE=1000
# for a tmux -2 session (also for screen)
export TERM="screen-256color"       

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="common"
# ZSH_THEME="random"

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"
set editing-mode vi

# For editing config files
alias M="tmux split-window -h $EDITOR ~/.zshrc"
alias r="source ~/.zshrc && echo 'Reloaded source ~/.zshrc'"

alias ,s="tmux split-window -h -b -l 80 -t 0 watch --color 'unbuffer git status .'"
alias ,l="tmux split-window -h -b -l 80 -t 0 $EDITOR ~/todo.md"

alias tsd="tmux split-window"
alias tsu="tmux split-window -b"
alias tsr="tmux split-window -h"
alias tsl="tmux split-window -h -b"

# Speed up autosuggest
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_MANUAL_REBIND=true
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

plugins=(
  git
  fast-syntax-highlighting
  zsh-autosuggestions
  zsh-completions
  cheatsheet
)

# Load auto-completions
autoload -Uz compinit

for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C

# Load .oh-my.sh and .zshenv
source $ZSH/oh-my-zsh.sh
source ~/.zshenv

# Bind keys
bindkey '^ ' autosuggest-accept

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# zprof # For profiling
#

# #=====================================
# # End porfiling
# unsetopt XTRACE
# exec 2>&3 3>&-
# #-------------------------------------

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
