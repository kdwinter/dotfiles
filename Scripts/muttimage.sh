#!/usr/bin/bash

xy=($(stty size))

echo -e "2;3;\n0;1;210;20;$((${xy[1]}*7-250));$((${xy[0]}*14-100));0;0;0;0;$1\n4;\n3;" | /usr/lib/w3m/w3mimgdisplay &

# vim: ts=4 sw=4 sts=4 expandtab
