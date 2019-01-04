#!/usr/bin/zsh

# Dircolors...
#eval `dircolors -b ~/.dircolors`

# Kill flow control
if tty -s; then
    stty -ixon
    stty -ixoff
fi

# Exports
typeset -U path
path=(~/bin ~/.rbenv/bin $path)
#export PATH=~/bin:~/.rbenv/bin:~/.cargo/bin:$PATH

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export GPGKEY="6B5397C85A66AA0F4D4CF9153C0E882460A5849A"
export LOCALE="en_US.UTF-8"
export BROWSER="firefox-developer-edition"
export EDITOR="vim"
export SUDO_EDITOR="$EDITOR"
export VISUAL="vim"
export HISTCONTROL="ignoredups"
export IGNOREEOF="3"
export RACK_ENV="development"
export RAILS_ENV="development"
#export TERM=xterm-256color
export QT_QPA_PLATFORMTHEME="gtk2"
export QEMU_AUDIO_DRV="pa"

case $(hostname) in
    archbox)
        export GOPATH="/storage/code/go/.go"
        export WIKIPATH="/storage/wiki"
    ;;
    archbook)
        export GOPATH="$HOME/Code/go/.go"
        export WIKIPATH="$HOME/wiki"

        export GDK_SCALE=1
        export GDK_DPI_SCALE=1
    ;;
esac

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;35m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;30;03;36m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

# Automatically start X and log out after when logging into vc/1
#if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
#  startx >& .myXLog
#  logout
#fi
