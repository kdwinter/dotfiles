#!/usr/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "Root required"
    exit 1
fi

action="$1"

case $action in
    start)
        systemctl start org.cups.cupsd
        systemctl start avahi-daemon
    ;;
    stop)
        systemctl stop org.cups.cupsd
        systemctl stop avahi-daemon
        systemctl stop avahi-daemon.socket
    ;;
esac

# vim: ts=4 sw=4 sts=4 expandtab
