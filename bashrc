#
# ~/.bashrc
#
XDG_CURRENT_DESKTOP=XFCE
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

alias ls='ls --color=auto'

# trash-cli : trash-list, restore-trash, trash-empty
alias rm=trash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#PS1="\e[0;32m[\u@\h \W]\$ \e[0m""\]\]"
#PS1='\[\e[0;32m\][\u\h \W]\$ \e[0m\]'
if [ "`id -u`" -eq 0  ]; then
    PS1="\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1;31m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
else
    PS1="\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
fi
# Aliases for archlinux
alias sudo='A=`alias` sudo '
alias ls='ls --color=auto'
# alias pacman='pacman-color'
export EDITOR="vim" 

# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset

export PATH="/usr/lib/ccache/bin/:$PATH"
export MAKEFLAGS="-j5 -l4"

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

PATH="/home/ivan/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ivan/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ivan/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ivan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ivan/perl5"; export PERL_MM_OPT;

# Disable touchpad after key is pressed
# syndaemon -i 0.5 -K -R -d
