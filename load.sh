#
# This script is intended to be sourced from .bashrc
# It is added to .bashrc by install.sh
#

export PATH=$PATH:~/bin:~/.local/bin

alias cls=clear
alias md=mkdir
alias cd..="cd .."

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [[ -z $DEV_CONTAINER ]];then
    TZ='Europe/London'; export TZ
fi