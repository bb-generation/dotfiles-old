# ~/.bashrc: executed by bash(1) for non-login shells.

#umask 022

export LS_OPTIONS='--color=auto'
eval "`dircolors`"

# ALIASES

alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lhA'
alias l='ls $LS_OPTIONS -lhA'
alias gg='grep -HnIir'
alias uu='du -h --max-depth=1'
if [ `hostname` == "dbbeee" ]; then
  alias current='cat /sys/class/power_supply/BAT0/current_now'
  alias speed='cat /sys/devices/platform/eeepc/cpufv'
  alias toff='synclient TouchpadOff=1'
  alias ton='synclient TouchpadOff=0'
  alias a='acpi -b'
  alias start_redshift='redshift  -v -l 48.208957:16.374035'
fi


#enable bash completion
. /etc/bash_completion

#enable git and some other stuff.
export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)")\[\033[01;34m\]$\[\033[00m\] '


