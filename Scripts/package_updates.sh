#!/usr/bin/bash

pac=$(checkupdates | wc -l)
aur=$(/home/gig/.rbenv/shims/ruby /home/gig/Code/ruby/aurb/aurb.rb -u | grep -c "update available")
#aur=$(aurcheck -d aur | wc -l)

total=$((pac + aur))
if [[ "$total" != "0" ]]; then
    echo -n "$pac - $aur"
    #echo "P:$pac A:$aur"
else
    echo -n "0"
fi

# vim: ts=4 sw=4 sts=4 expandtab
