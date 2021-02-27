#!/usr/bin/env bash

bash -c "
    if ! screen -ls | grep -q \"trove\"; then
        screen -dm -S trove;
    fi
    screen -r trove -X stuff \"cd /srv/humbleTroveDownloader && /srv/humbleTroveDownloader/trove_downloader run \n\";
"