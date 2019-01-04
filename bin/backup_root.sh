#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:

if [ "$(id -u)" != "0" ]; then
    echo "Root required"
    exit 1
fi

rsync -aAXv --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/storage","/data","/run/*","/media/*","/mnt/*","/lost+found","/home","/boot_old","/keybase/*","/var/log/journal/*","/var/tmp/*"} / /storage/backups/archbox/root/
