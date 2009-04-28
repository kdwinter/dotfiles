#!/bin/sh
#
# ~/.xinitrc
xset m 0 3 &
xsetroot -cursor_name left_ptr -solid "#090909" &
urxvtd -o -q -f &
unclutter -idle 5 -root &
wmname compiz &
mpd &

#exec awesome

xbindkeys &
#exec wmii -r ~/.wmii-3.5/wmiirc
exec wmii -r ~/.wmii-hg/wmiirc

#exec xterm
