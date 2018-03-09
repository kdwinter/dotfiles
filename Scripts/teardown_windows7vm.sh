#!/usr/bin/bash

sudo brctl delif bridge0 vmtap0
sudo ip link set vmtap0 down
sudo ip tuntap del dev vmtap0 mode tap

killall synergyc

xrandr --output DisplayPort-0 --mode 2560x1440 --pos 0x0 --primary
xrandr --output DVI-D-0 --mode 1920x1200 --pos 2560x0

setxkbmap be
xset r rate 350 40
xset m 0 0

while read -r mouse_id; do
    xinput set-prop $mouse_id 'libinput Accel Speed' 0 >/dev/null 2<&1
done <<< $(xinput list | grep "G Pro.*pointer" | awk '{print $8}' | sed "s/id=//")

# vim: ts=4 sw=4 sts=4 expandtab
