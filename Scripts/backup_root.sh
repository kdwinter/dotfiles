#!/usr/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "Root required"
    exit 1
fi

rsync -aAXv --delete --exclude="/dev/*" --exclude="/proc/*" --exclude="/sys/*" --exclude="/tmp/*" --exclude="/storage" --exclude="/data" --exclude="/run/*" --exclude="/media/*" --exclude="/mnt/*" --exclude="/lost+found" --exclude="/home" --exclude="/boot_old" --exclude="/keybase" --exclude="/var/log/journal/*" --exclude="/var/tmp/*" / /storage/backups/archbox/root/

# vim: ts=4 sw=4 sts=4 expandtab
