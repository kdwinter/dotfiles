#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:

systemctl restart NetworkManager
systemctl restart bluetooth

#sleep 1

wg-quick up mullvad-no1
#nmcli con up mullvad_no2 --ask >/dev/null 2>&1
