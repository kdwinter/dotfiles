#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:

rsync -aAXv --delete --exclude={".ccache",".bundle",".steam",".node-gyp",".steampid",".steampath",".subversion",".esd_auth",".local/share/Steam",".local/share/Tyranny",".local/share/feral-interactive",".local/share/Rocket\ League",".local/share/Runic\ Games",".local/share/PillarsOfEternity",".local/share/Planescape\ Torment\ -\ Enhanced\ Edition",".local/share/keybase","Code","Git",".cache",".gem",".rbenv",".mutt/cache/*",".wine",".wine32",".wine_pod",".wine_steam",".wine_poe",".wine_bnet",".thumbnails",".mozilla",".zcash",".rustup",".cargo","Games"} /home/gig/ /storage/backups/archbox/home/
