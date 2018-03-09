#!/usr/bin/bash
set -eou pipefail

if [ "$(id -u)" != "0" ]; then
    echo "Root required"
    exit 1
fi

umount /mnt/external
cryptsetup close cryptoext

# vim: ts=4 sw=4 sts=4 expandtab
