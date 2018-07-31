#!/bin/zsh

# Owner
export USER_NAME="a249747"
export HOME="/cygdrive/c/Users/a249747"

# Aspera
export ASPERA_PASS="ivdmtWP4La8y"
export ASPERA_DST_PASS="ivdmtWP4La8y"
export ASPERA_SRC_PASS="ivdmtWP4La8y"
export ASPERA_PROXY_PASS="iamjok3r"

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"

# For editing config files
alias zshconfig="$EDITOR ~/.zshrc"
alias envconfig="$EDITOR ~/.env.sh"
alias zs="source ~/.zshrc && echo 'Reloaded source ~/.zshrc'"

# C
export LD_LIBRARY_PATH=/usr/local/lib
export LIBRARY_PATH=/usr/local/lib
export CPATH=/usr/local/include

# Python
alias python=python3

# Cygwin scripts
export PATH=$PATH:~/cygscripts

# Proxy
# export https_proxy=https://a249747:iamjok3r@pxgot4.srv.volvo.com:8080/
# export http_proxy=http://a249747:iamjok3r@1pxgot4.srv.volvo.com:8080/

export https_proxy=https://a249747:solongandthanksforthefish@153.112.38.30:8080/
export http_proxy=httP://A249747:solongandthanksforthefish@153.112.38.30:8080/

set editing-mode vi
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Add Scripts folder to path
# export PATH="/Users/danielhallin/scripts:$PATH"

# Virtual Environment
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Development/


# FileSearch
# function f() { find . -iname "*$1*" ${@:2} }
# function r() { grep "$1" ${@:2} -R . }


# PATH
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
