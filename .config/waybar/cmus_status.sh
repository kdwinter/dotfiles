#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:

if [[ ! -x /usr/bin/cmus-remote ]]; then
    echo -n "cmus not installed"
    exit 1
fi

cmus_output="$(cmus-remote -Q 2>/dev/null)"
if [[ $cmus_output = "" ]]; then
    echo -n " Not running"
    exit 0
fi

status="$(echo -n "$cmus_output" | grep "status" | cut -c8-)"
artist="$(echo -n "$cmus_output" | grep "tag artist" | head -1 | cut -d " " -f 3- | tr -d '"')"
title="$(echo -n "$cmus_output" | grep "tag title" | cut -d " " -f 3- | tr -d '"')"

get_song_times() {
    local position
    local duration
    local position_time
    local duration_time

    position="$(echo -n "$cmus_output" | grep "position" | cut -c10-)"
    duration="$(echo -n "$cmus_output" | grep "duration" | cut -c10-)"

    position_time="$(printf "%02d:%02d" $((position%3600/60)) $((position%60)))"
    duration_time="$(printf "%02d:%02d" $((duration%3600/60)) $((duration%60)))"

    echo -n "${position_time}/${duration_time}"
}

if [[ -z "$artist" ]]; then
    echo -n " Not playing"
elif [[ "$status" = "playing" ]]; then
    echo -n " [$(get_song_times)] $artist - $title"
elif [[ "$status" = "paused" ]]; then
    echo -n " [$(get_song_times)] $artist - $title"
else
    echo -n " Not playing"
fi
