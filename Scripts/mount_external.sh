#!/usr/bin/bash
set -eou pipefail

if [ "$(id -u)" != "0" ]; then
    echo "Root required"
    exit 1
fi

disk=$(realpath "/dev/disk/by-id/usb-Seagate_Expansion_Desk_NA8X1KY6-0:0")
cryptsetup open $disk cryptoext
mount -t ext4 /dev/mapper/cryptoext /mnt/external

# vim: ts=4 sw=4 sts=4 expandtab
