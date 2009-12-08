#!/bin/sh
#
# ~/.xinitrc
sudo setxkbmap be &
xset m 0 3 &
xsetroot -cursor_name left_ptr -solid "#000000" &
urxvtd -o -q -f &
wmname compiz &
mpd &
nitrogen --restore &
xbindkeys &

#exec xterm
exec wmii -r ~/.wmii-hg/wmiirc
#exec gnome-session
