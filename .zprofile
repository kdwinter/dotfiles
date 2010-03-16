#!/bin/zsh
#
# Dircolors...
eval `dircolors -b ~/.dircolors`

# Kill flow control
if tty -s ; then
    stty -ixon
    stty -ixoff
fi

# Exports
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/opt/mozilla/bin:/opt/java/jre/bin:/home/gig/bin:/opt/OneSwarm:/opt/google/chrome
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LOCALE=en_US.UTF-8
export BROWSER=firefox
export PACKAGER='Gigamo <gigamo@gmail.com>'
export OOO_FORCE_DESKTOP='gnome'
export EDITOR=vim
export VISUAL=vim
export HISTCONTROL=ignoredups
export IGNOREEOF=3
export WMII_ADDRESS=/tmp/ns.gig.:0/wmii
export JAVA_HOME=/opt/java
export J2SDKDIR=/opt/java
export RACK_ENV='development'

# watch for people
watch=(notme)                   # watch for everybody but me
LOGCHECK=300                    # check every 5 min for login/logout activity

# Zenburn for the Linux console
if [ "$TERM" = "linux" ]; then
    #3f3f3f is problematic on a non-256color terminal
    echo -en "\e]P01e2320" #zen-black (norm. black)
    echo -en "\e]P8709080" #zen-bright-black (norm. darkgrey)
    echo -en "\e]P1705050" #zen-red (norm. darkred)
    echo -en "\e]P9dca3a3" #zen-bright-red (norm. red)
    echo -en "\e]P260b48a" #zen-green (norm. darkgreen)
    echo -en "\e]PAc3bf9f" #zen-bright-green (norm. green)
    echo -en "\e]P3dfaf8f" #zen-yellow (norm. brown)
    echo -en "\e]PBf0dfaf" #zen-bright-yellow (norm. yellow)
    echo -en "\e]P4506070" #zen-blue (norm. darkblue)
    echo -en "\e]PC94bff3" #zen-bright-blue (norm. blue)
    echo -en "\e]P5dc8cc3" #zen-purple (norm. darkmagenta)
    echo -en "\e]PDec93d3" #zen-bright-purple (norm. magenta)
    echo -en "\e]P68cd0d3" #zen-cyan (norm. darkcyan)
    echo -en "\e]PE93e0e3" #zen-bright-cyan (norm. cyan)
    echo -en "\e]P7dcdccc" #zen-white (norm. lightgrey)
    echo -en "\e]PFffffff" #zen-bright-white (norm. white)
    # avoid artefacts
    clear
fi

# Make framebuffer colors look like in X
#if [ "$TERM" = "linux" ]; then
#    echo -en "\e]P0222222" #black
#    echo -en "\e]P8222222" #darkgrey
#    echo -en "\e]P1803232" #darkred
#    echo -en "\e]P9982b2b" #red
#    echo -en "\e]P25b762f" #darkgreen
#    echo -en "\e]PA89b83f" #green
#    echo -en "\e]P3aa9943" #brown
#    echo -en "\e]PBefef60" #yellow
#    echo -en "\e]P4324c80" #darkblue
#    echo -en "\e]PC2b4f98" #blue
#    echo -en "\e]P5706c9a" #darkmagenta
#    echo -en "\e]PD826ab1" #magenta
#    echo -en "\e]P692b19e" #darkcyan
#    echo -en "\e]PEa1cdcd" #cyan
#    echo -en "\e]P7ffffff" #lightgrey
#    echo -en "\e]PFdedede" #white
#    clear #for background artifacting
#fi

bindkey "\e[1~" beginning-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char

bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history

# Automatically start X and log out after when logging into vc/1
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/vc/1 ]]; then
    dbus-launch startx >& .myXLog
    logout
fi
