#!/usr/bin/bash

if [ ! -x /usr/bin/cmus-remote ]; then
    echo -n "CMUS not installed"
    exit
fi

status=$(cmus-remote -Q 2>/dev/null | grep "status" | cut -d " " -f 2-)
artist=$(cmus-remote -Q 2>/dev/null | grep "tag artist" | head -1 | cut -d " " -f 3-)
title=$(cmus-remote -Q 2>/dev/null | grep "tag title" | cut -d " " -f 3-)

if [ -z "$artist" ]; then
    echo -n "Not playing"
elif [ "$status" = "playing" ]; then
    echo -n "$artist - $title"
else
    echo -n "Not playing"
fi

# vim: ts=4 sw=4 sts=4 expandtab
