#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:

pac="$(timeout -s TERM --preserve-status 10 checkupdates | wc -l)"
aur="$(augo u | grep -c "update available")"
#aur="$(/home/gig/.rbenv/shims/ruby /home/gig/bin/aurb -u | grep -c "update available")"
#aur="$(aurs -u | grep -c "update available")"
#aur="$(aurcheck -d aur | wc -l)"

total="$((pac + aur))"
if [[ "$total" != "0" ]]; then
    echo -n "$pac · $aur"
else
    #echo -n "  "
    echo -n "0"
fi
