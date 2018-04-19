#!/bin/zsh

# Autostart Tmux
# ZSH_TMUX_AUTOSTART='true' - This has been moved to iTerm2 settings

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR='vim'
set editing-mode vi
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Add Scripts folder to path
export PATH="/Users/danielhallin/scripts:$PATH"

# Global node.js modules
export PATH=".node_modules_global/bin:$PATH"

# User scripts
export PATH="$PATH:/Users/danielhallin/bin"

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development/

# Owner
export USER_NAME="Daniel"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Use sublimetext for editing config files
alias zshconfig="$EDITOR ~/.zshrc"
alias envconfig="$EDITOR ~/.env.sh"
alias zs="source ~/.zshrc && echo 'Reloaded source ~/.zshrc'"

alias nb="jupyter notebook"
alias myip="curl -s ipecho.net/plain; echo"

# Python packages
export PATH=/Library/Python/2.7/site-packages:$PATH

# NVIDIA - CUDA TOOLKIT
export PATH=/Developer/NVIDIA/CUDA-8.0/bin${PATH:+:${PATH}}
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-8.0/lib${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}

# CuDNN path
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/cudnn/5.1_8.0/cuda:$DYLD_LIBRARY_PATH

# Matlab
export PATH=/Applications/MATLAB_R2014b.app/bin:$PATH
alias ml="matlab -nosplash -nodesktop"

# Apache
export CATALINA_HOME=/Users/danielhallin/Develop/Apache/apache-tomcat-9.0.0.M26

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# Python 3 
alias python='python3'
alias pip='pip3'

# Spark
export SPARK_HOME=/opt/spark
export PATH=$SPARK_HOME/bin:$PATH
export PYSPARK_DRIVER_PYTHON="jupyter" 
export PYSPARK_DRIVER_PYTHON_OPTS="notebook" 

#For python 3, You have to add the line below or you will get an error
# export PYSPARK_PYTHON=python3
alias snotebook='$SPARK_HOME/bin/pyspark --master local[2]'



