#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="/usr/lib/ccache/bin/:$PATH"
export MAKEFLAGS="-j5 -l4"
