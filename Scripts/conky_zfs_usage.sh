#!/usr/bin/bash

zfs list storage/droot | tail -1 | awk '{printf $2"/"; printf $2 + $3"T"}'

# vim: ts=4 sw=4 sts=4 expandtab
