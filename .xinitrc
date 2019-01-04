#!/usr/bin/env sh
# vim:ts=4:sw=4:sts=4:et:

sysresources="/etc/X11/xinit/.Xresources"
if [ -f "$sysresources" ]; then
    xrdb -merge "$sysresources"
fi

sysmodmap="/etc/X11/xinit/.Xmodmap"
if [ -f "$sysmodmap" ]; then
    xmodmap "$sysmodmap"
fi

userresources="$HOME/.Xresources"
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

usermodmap="$HOME/.Xmodmap"
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

#if [ -e /usr/bin/gnome-keyring-daemon ]; then
#    eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
#    export SSH_AUTH_SOCK
#fi
if [ "$(pgrep ssh-agent)" == "" ]; then
    eval $(ssh-agent)
fi

#nitrogen --restore
#xrandr --output DisplayPort-0 --mode 2560x1440 --pos 0x0 --primary
#xrandr --output DisplayPort-2 --mode 2560x1440 --pos 2560x0
#. "$HOME/bin/set_mouse_keyboard_prefs.sh"
#unclutter &
#nm-applet &
#redshift-gtk -l 50.5:4.4 &
#dunst &
#compton -b &

#exec xterm
exec i3
#exec startkde
