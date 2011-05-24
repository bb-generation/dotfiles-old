# ----------------------------------------------------------------------------
# "THE MODIFIED BEER-WARE LICENSE"
# <git@bbgen.net> wrote this file. You can do whatever you want with this stuff.
# If we meet some day, and you think this stuff is worth it, you can buy me a
# beer in return Bernhard Eder
# ----------------------------------------------------------------------------
  

#umask 022

export LS_OPTIONS='--color=auto'

if [ `uname -s` == "Linux" ]; then
  eval "`dircolors`"

  #enable bash completion
  . /etc/bash_completion
fi

# ALIASES

alias ls='ls $LS_OPTIONS'

# list files.. interesting way
## -l: use long format
## -h: human readable size
## -A: all files (except . and ..)
alias ll='ls $LS_OPTIONS -lhA'
alias l='ls $LS_OPTIONS -lhA'

# calculate size of all directories (calculate but don't print recursive).
alias uu='du -h --max-depth=1'

# some aliases for my netbook (may be broken sometimes)
if [ `hostname` == "dbbeee" ]; then
	# prints the current current
  alias current='cat /sys/class/power_supply/BAT0/current_now'
  alias speed='cat /sys/devices/platform/eeepc/cpufv'
	# disable/enable touchpad
  alias toff='synclient TouchpadOff=1'
  alias ton='synclient TouchpadOff=0'
  alias a='acpi -b'
	# alias to start redshift with Vienna coordinates
  alias start_redshift='redshift  -v -l 48.208957:16.374035'
fi

# grep alias to search for something
## -H: print the filename
## -n: print the line number
## -I: ignore binary files
## -i: case insensitive
## -r: recursive
alias ggrep='grep -HnIir'

# open files as tabs
alias vim='vim -p'
alias gvim='gvim -p'

# alias which prints last return code
alias e='echo $?'

# make concurrent compiling
if [ `hostname` == "bbx2s" ]; then
	alias make='make -j 4'
elif [ `hostname` == "dbbeee" ]; then
	alias make='make -j 2'
elif [ `hostname` == "dbbvirtual" ]; then
	alias make='make -j 4'
fi


# enable git and some other stuff.
export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)")\[\033[01;34m\]$\[\033[00m\] '

# add user-local bin/ to PATH
export PATH=$PATH:~/bin

