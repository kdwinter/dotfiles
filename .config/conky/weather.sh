#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:
set -e

METRIC=1 # Should be 0 or 1; 0 for F, 1 for C

if [ -z $1 ]; then
    echo "Usage: weather.sh <locationcode>"
    exit 0
fi

out="$(curl --connect-timeout 3 -s https://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${METRIC}\&locCode\=$1 | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }')"
cond="$(echo -ne "$out" | cut -d':' -f 1)"
temp="$(echo -ne "$out" | cut -d':' -f 2 | tr -d C)"

echo -ne "$cond,$temp°C"
