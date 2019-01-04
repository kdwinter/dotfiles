#!/usr/bin/bash
#AccuWeather (r) RSS weather tool for conky
#
#USAGE: weather.sh <locationcode>
#
#(c) Michael Seiler 2007

METRIC=1 #Should be 0 or 1; 0 for F, 1 for C

if [ -z $1 ]; then
    echo
    echo "USAGE: weather.sh <locationcode>"
    echo
    exit 0;
fi

out=`curl --connect-timeout 30 -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${METRIC}\&locCode\=$1 | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }'`
cond=`echo $out | cut -d':' -f 1`
temp=`echo $(echo $out | cut -d':' -f 2 | tr -d C)°C`

echo -e $cond'\c'
echo -n " $temp"

# vim: ts=4 sw=4 sts=4 expandtab
