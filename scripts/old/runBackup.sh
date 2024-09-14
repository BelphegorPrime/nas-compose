#!/usr/bin/env bash

#example call
#./restartVPN.sh

bash -c "
    if ! screen -ls | grep -q \"backup\"; then
        screen -dm -S backup;
    fi
    screen -r backup -X stuff \"bash /srv/dev-disk-by-label-media/appdata/backup/backup.sh \n\";
"
