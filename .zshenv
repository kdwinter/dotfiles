#!/usr/bin/zsh

# Dircolors...
#eval `dircolors -b ~/.dircolors`

# Kill flow control
if tty -s; then
    stty -ixon
    stty -ixoff
fi

# Exports

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LOCALE="en_US.UTF-8"
export GPGKEY="8F501EC17D6BD32F1F9D501D6AFF5453B7233ECD"
#export GPGKEY="6B5397C85A66AA0F4D4CF9153C0E882460A5849A"
export BROWSER="firefox-developer-edition"
#export BROWSER="qutebrowser"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export VISUAL="$EDITOR"
export MAIL="$HOME/mail/personal"
export HISTCONTROL="ignoredups"
export IGNOREEOF="3"
export RACK_ENV="development"
export RAILS_ENV="development"
#export TERM=xterm-256color
#export QT_QPA_PLATFORMTHEME="gtk2"
export QT_QPA_PLATFORMTHEME="qt5ct"
export QEMU_AUDIO_DRV="pa"
export _JAVA_AWT_WM_NONREPARENTING=1
export MUTTPATH="$HOME/.config/mutt"
export MOZ_X11_EGL=1
export XCURSOR_THEME="Breeze_Obsidian"
export XKB_DEFAULT_OPTIONS="caps:none"
export GOPROXY="direct"
export GONOSUMDB="off"

case $(hostname) in
    sanctuary)
        # Force the use of Valve's ACO shader compiler in mesa
        #export RADV_PERFTEST="aco"
        #export RADV_PERFTEST="llvm"
        export GOPATH="/storage/code/go/.go"
        export WIKIPATH="/storage/wiki"
        export GEM_HOME="$HOME/.gem/ruby/3.0.0"
    ;;
    sescheron)
        #export RADV_PERFTEST="aco"
        export GOPATH="$HOME/code/go/.go"
        export WIKIPATH="$HOME/wiki"
        export GEM_HOME="$HOME/.gem/ruby/3.0.0"
    ;;
    aranoch)
        export GOPATH="$HOME/code/go/.go"
        export WIKIPATH="$HOME/wiki"
        export GEM_HOME="$HOME/.gem/ruby/2.7.0"

        export QT_SCALE_FACTOR=1.5
        export QT_AUTO_SCREEN_SCALE_FACTOR=0

        ###export GDK_SCALE=1
        ###export GDK_DPI_SCALE=1
    ;;
esac

#export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export GEM_ROOT=$GEM_HOME
export DEFAULT_GEM_HOME=$GEM_HOME

typeset -U path
#path=(~/.local/bin ~/.rbenv/bin $path)
path=(~/.local/bin $GEM_HOME/bin $path)
#export PATH=~/.local/bin:~/.rbenv/bin:~/.cargo/bin:$PATH

#export XDG_CACHE_HOME="$HOME/.cache"
#export XDG_CONFIG_HOME="$HOME/.config"
#export XDG_DATA_HOME="$HOME/.local/share"
#export XDG_DATA_DIRS="$HOME/.local/share:$XDG_DATA_DIRS"
export XDG_DESKTOP_DIR="$HOME"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DOCUMENTS_DIR="$HOME/docs"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/pictures"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;35m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;30;03;36m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'

# Automatically start X and log out after when logging into vc/1
#if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
#  startx >& .Xlog
#  logout
#fi

#if [[ ! -z "$DISPLAY" ]] && [[ "$TERM" = "xterm-256color" ]]; then
#    #fortune -s
#    fortune -s | cowsay -f small | lolcat
#    echo
#fi

if [[ -f /usr/share/chruby/chruby.sh ]]; then
    . /usr/share/chruby/chruby.sh
    # checks for .ruby-version files after cd and switches if possible
    . /usr/share/chruby/auto.sh
fi
