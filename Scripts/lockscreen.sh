#!/usr/bin/bash

icon="/storage/pictures/i3lock.png"
tmpbg="/tmp/lockscreen.png"

(( $# )) && { icon = $1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 20% -scale 500% "$tmpbg"
convert "$tmpbg" "$icon" -gravity west -geometry +700+0 -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
rm "$tmpbg"

# vim: ts=4 sw=4 sts=4 expandtab
