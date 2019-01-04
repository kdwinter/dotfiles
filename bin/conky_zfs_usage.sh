#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:

#zfs list -H storage/root | awk '{printf $2"/"; printf $2 + $3"T"}'
DATASET="storage/root"
used="$(zfs get -H -o value logicalused ${DATASET})"
avail="$(zfs get -H -o value available ${DATASET})"
echo "$used/$(printf %.2f $(echo "$used + $avail" | bc))T"
