#!/bin/zsh
#
# Dircolors...
#eval `dircolors -b ~/.dircolors`

# Kill flow control
if tty -s ; then
  stty -ixon
  stty -ixoff
fi

# Exports
#export PATH=/bin:/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/Applications:/Users/gig/bin:/usr/local/Cellar/ruby/1.9.1-p378/bin
export PATH=/bin:/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/Applications:/Users/gig/Scripts
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LOCALE=en_US.UTF-8
export BROWSER='open -a Safari'
export PACKAGER='Gigamo <gigamo@gmail.com>'
#export OOO_FORCE_DESKTOP='gnome'
export EDITOR=vim
export VISUAL=vim
export HISTCONTROL=ignoredups
export IGNOREEOF=3
export CLICOLOR=1 # Needed in OSX somehow
#export WMII_ADDRESS=/tmp/ns.gig.:0/wmii
#export JAVA_HOME=/opt/java
#export J2SDKDIR=/opt/java
export RACK_ENV=development
export RAILS_ENV=development

# watch for people
watch=(notme)                   # watch for everybody but me
LOGCHECK=300                    # check every 5 min for login/logout activity

if [ "$TERM" = "linux" ]; then
  echo -en "\e]P0000000" #black
  echo -en "\e]P8505354" #darkgrey
  echo -en "\e]P1f92672" #darkred
  echo -en "\e]P9ff5995" #red
  echo -en "\e]P282b414" #darkgreen
  echo -en "\e]PAb6e354" #green
  echo -en "\e]P3fd971f" #brown
  echo -en "\e]PBfeed6c" #yellow
  echo -en "\e]P456c2d6" #darkblue
  echo -en "\e]PC8cedff" #blue
  echo -en "\e]P58c54fe" #darkmagenta
  echo -en "\e]PD9e6ffe" #magenta
  echo -en "\e]P6465457" #darkcyan
  echo -en "\e]PE899ca1" #cyan
  echo -en "\e]P7ccccc6" #lightgrey
  echo -en "\e]PFf8f8f2" #white
  clear # back to default input colours
fi

bindkey "\e[1~" beginning-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char

bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history

# Automatically start X and log out after when logging into vc/1
#if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
#  dbus-launch --exit-with-session ck-launch-session xinit >& .myXLog
#  logout
#fi

# Source rvm (comment these if you don't use rvm)
if [[ -s ~/.rvm/scripts/rvm ]]; then
  . ~/.rvm/scripts/rvm
fi
