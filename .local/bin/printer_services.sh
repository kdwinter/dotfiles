#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:
set -euo pipefail

require_root() {
    if [ "$(id -u)" != "0" ]; then
        echo "Root required"
        exit 1
    fi
}

action="$1"

case $action in
    start)
        require_root
        systemctl start org.cups.cupsd
        systemctl start avahi-daemon
    ;;
    stop)
        require_root
        systemctl stop org.cups.cupsd
        systemctl stop avahi-daemon
        systemctl stop avahi-daemon.socket
    ;;
    *)
        echo "Usage: $0 start|stop"
        echo
        echo "Status:"
        systemctl status org.cups.cupsd
    ;;
esac
