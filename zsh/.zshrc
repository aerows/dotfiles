# for a tmux -2 session (also for screen)
export TERM="screen-256color"       

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"
set editing-mode vi

# For editing config files
alias zshconfig="$EDITOR ~/.zshrc"
alias envconfig="$EDITOR ~/.zshenv"
alias zs="source ~/.zshrc && echo 'Reloaded source ~/.zshrc'"

plugins=(
zsh-completions
zsh-autoseggestions
git
git-flow
pip
py-env
svn
tmux
)

source $HOME/.zshenv
source $ZSH/oh-my-zsh.sh

# plugins=(zsh-completions zsh-autosuggestions)
autoload -U compinit && compinit

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#

# ls directory color
eval $(dircolors ~/.dircolors.ansi-dark)
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit
