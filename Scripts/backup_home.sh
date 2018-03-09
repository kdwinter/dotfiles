#!/usr/bin/bash

rsync -aAXv --delete --exclude={".steam",".node-gyp",".steampid",".steampath",".subversion",".esd_auth",".local/share/Steam",".local/share/Rocket\ League",".local/share/PillarsOfEternity",".local/share/Planescape\ Torment\ -\ Enhanced\ Edition",".local/share/keybase","Code","Git",".cache",".gem",".rbenv",".mutt/cache/*",".wine",".wine32",".thumbnails",".mozilla",".zcash",".rustup",".cargo"} /home/gig/ /storage/backups/archbox/home/

# vim: ts=4 sw=4 sts=4 expandtab
