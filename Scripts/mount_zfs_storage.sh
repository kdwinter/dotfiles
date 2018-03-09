#!/usr/bin/bash
set -eou pipefail

if [ "$(id -u)" != "0" ]; then
    echo "Root required"
    exit 1
fi

# -N means no automount
echo -n "Importing zpool..."
zpool import -N storage && echo "ok."

echo -n "Loading encryption keys..."
zfs load-key -a && echo "ok."
#zfs load-key -r storage/droot
#zfs load-key storage/data

echo -n "Mounting datasets..."
zfs mount -a && echo "ok."

# vim: ts=4 sw=4 sts=4 expandtab
