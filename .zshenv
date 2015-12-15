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
typeset -U path
path=(~/Scripts ~/.gem/ruby/2.2.0/bin $path)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LOCALE=en_US.UTF-8
export BROWSER='firefox'
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
#export GEM_HOME=$HOME/.gem/ruby/2.1.0
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export TERM=xterm-256color

bindkey "\e[1~" beginning-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char

bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history

# Automatically start X and log out after when logging into vc/1
#if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
#  startx >& .myXLog
#  logout
#fi

# export ssh agent stuffs
#eval "$(ssh-agent)" &> /dev/null
