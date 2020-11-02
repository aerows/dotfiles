#!/usr/bin/fish
# File: ~/.config/fish/config.fish
# Desc: Config file for fish shell
#
# TODO:
#

# Prompt =======================================================================
starship init fish | source

# Key-binds and vi mode --------------------------------------------------------
function fish_user_key_bindings
  fzf_key_bindings
  fish_vi_key_bindings
  # Next command
  bind \cn history-search-forward
  bind -M insert \cn history-search-forward
  # Previous command
  bind \cp history-search-backward
  bind -M insert \cp history-search-backward
  # Accept auto-suggestion
  bind -M insert \cf accept-autosuggestion execute
end

# Supress welcome message -----------------------------------------------------
set fish_greeting

# Universal variables =========================================================
set -U BROWSER chrome.exe
set -U EDITOR vim
set -U LANG en_US.UTF-8
set -U VISUAL vim
set -U PAGER bat

set -x DISPLAY :0                # Enables interaction with system clipboard
set -x LIBGL_ALWAYS_INDIRECT 1   # via X11

set -x LS_COLORS (cat ~/.local/share/lscolors.txt)

# Path ------------------------------------------------------------------------
set -x PATH ~/.pyenv/bin $PATH
set -x PATH ~/.cargo/bin $PATH
set -x PATH ~/scripts $PATH

# Overrides ====================================================================
if type -q bat
  alias cat='bat -pp --theme="Nord"'
end

# Abbreviations ===============================================================
# cmd.exe
abbr -a start cmd.exe /c start 

# ls --------------------------------------------------------------------------
abbr -a l  exa -la --icons 
abbr -a ll exa -l  --icons
abbr -a la exa -a  --icons
abbr -a lt exa -T  --icons


# // Abbreviations ------------------------------------------------------------

# Source ======================================================================
source (pyenv init - | psub)
zoxide init fish | source

