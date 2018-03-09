#!/usr/bin/zsh

#ZDOTDIR="${ZDOTDIR:-$HOME/.zsh}"

# Dircolors...
eval `dircolors -b ~/.dircolors`

# Kill flow control
if tty -s; then
  stty -ixon
  stty -ixoff
fi

# Exports
typeset -U path
path=(~/Scripts ~/.rbenv/bin $path)
#export PATH=~/Scripts:~/.rbenv/bin:~/.cargo/bin:$PATH

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export GPGKEY="6B5397C85A66AA0F4D4CF9153C0E882460A5849A"
export LOCALE="en_US.UTF-8"
export FREETYPE_PROPERTIES="truetype:interpreter-version=38"
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
export ZADDR="zcQfpwq8XTHGcKtLgngwcEsEsYZEdcvpa2v9Sry8aodLw4EwXVF1r8LBWGEjEumVZqywYrSnKegNoohC6XMcVe28mVdzsxu"
export ZTADDR="t1fSESUDW1nNq7Q4xCESaZ3yJhaiTRLmny9"

[[ $XDG_CACHE_HOME ]] || export XDG_CACHE_HOME="$HOME/.cache"
[[ $XDG_CONFIG_HOME ]] || export XDG_CONFIG_HOME="$HOME/.config"
[[ $XDG_DATA_HOME ]] || export XDG_DATA_HOME="$HOME/.local/share"

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
