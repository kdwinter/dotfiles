#!/usr/bin/zsh
#
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

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LOCALE=en_US.UTF-8
export FREETYPE_PROPERTIES="truetype:interpreter-version=38"
export BROWSER=firefox-developer-edition
#export OOO_FORCE_DESKTOP='gnome'
export EDITOR=vim
export VISUAL=vim
export HISTCONTROL=ignoredups
export IGNOREEOF=3
#export CLICOLOR=1 # Needed in OSX somehow
#export WMII_ADDRESS=/tmp/ns.gig.:0/wmii
#export JAVA_HOME=/opt/java
#export J2SDKDIR=/opt/java
export RACK_ENV=development
export RAILS_ENV=development
#export ANDROID_HOME=/opt/android-sdk-linux
#export GEM_HOME=$HOME/.gem/ruby/2.1.0
#export TERM=xterm-256color
export QT_QPA_PLATFORMTHEME=gtk2
export QEMU_AUDIO_DRV=pa
#export QEMU_PA_SINK=alsa_output.pci-0000_12_00.3.analog-surround-51
#export QEMU_PA_SINK=bluez_sink.00_16_94_21_C1_07.a2dp_sink
#export QEMU_PA_SOURCE=alsa_input.usb-BLUE_MICROPHONE_Blue_Snowball_201705-00.analog-mono

#bindkey "\e[1~" beginning-of-line
#bindkey "\e[7~" beginning-of-line
#bindkey "\e[8~" end-of-line
#bindkey "\e[4~" end-of-line
#bindkey "\e[3~" delete-char

#bindkey "\e[5~" beginning-of-history
#bindkey "\e[6~" end-of-history

# Automatically start X and log out after when logging into vc/1
#if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
#  startx >& .myXLog
#  logout
#fi

# export ssh agent stuff
#eval "$(ssh-agent)" &> /dev/null
