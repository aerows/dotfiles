# zmodload zsh/zprof  # For profiling


# for a tmux -2 session (also for screen)
export TERM="screen-256color"       

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="common"

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"
set editing-mode vi

# For editing config files
alias M="tmux split-window -h $EDITOR ~/.zshrc"
alias r="source ~/.zshrc && echo 'Reloaded source ~/.zshrc'"

plugins=(
  git
  git-flow
  pip
  poetry
  py-env
  svn
  tmux
  zsh-autoseggestions
  zsh-completions
)

source $ZSH/oh-my-zsh.sh
source ~/.zshenv

# Change directory witn ranger
ranger-cd() {
  tempfile=$(mktemp)
  ranger --choosedir="$tempfile" "${@:-$(pwd)}" < $TTY
  test -f "$tempfile" &&
  if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
    cd -- "$(cat "$tempfile")"
  fi
  rm -f -- "$tempfile"
}


# This binds Ctrl-O to ranger-cd:
zle -N ranger-cd
bindkey '^o' ranger-cd

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# zprof # For profiling
