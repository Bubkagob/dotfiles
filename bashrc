#
# ~/.bashrc
#

#History
shopt -s histappend
PROMT_COMMAND='history -a'
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignorespace:erasedups:ignoredups
export HISTIGNORE="ls:ps:history"
export HISTTIMEFORMAT="%h %d %H:%M:%S "

#Spell
shopt -s cdspell
shopt -s checkjobs
shopt -s dirspell

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="/usr/lib/ccache/bin/:$PATH"
export MAKEFLAGS="-j5 -l4"
