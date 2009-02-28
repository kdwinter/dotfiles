#!/bin/sh
#
# ~/.xinitrc
xset m 0 3 &
xsetroot -cursor_name left_ptr -solid "#090909" &
urxvtd -o -q -f &
unclutter -idle 5 -root &
# Fix java apps
wmname compiz &

exec xterm
#exec awesome
