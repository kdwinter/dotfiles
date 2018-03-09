#!/usr/bin/bash

if [ ! -d /mnt/external/storage_backup ]; then
    echo "External harddrive not mounted?"
    exit 1
fi

rsync -aAXv --delete /storage/ /mnt/external/storage_backup/

# vim: ts=4 sw=4 sts=4 expandtab
