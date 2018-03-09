#!/usr/bin/bash

if [ ! -d /mnt/external/data_backup ]; then
    echo "External harddrive not mounted?"
    exit 1
fi

rsync -aAXv --delete /data/ /mnt/external/data_backup/

# vim: ts=4 sw=4 sts=4 expandtab
