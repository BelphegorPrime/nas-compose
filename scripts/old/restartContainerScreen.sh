#!/usr/bin/env bash

#./restartContainerScreem.sh

bash -c "
    if ! screen -ls | grep -q \"restartContainer\"; then
        screen -dm -S restartContainer;
    fi
    screen -r restartContainer -X stuff \"bash /srv/dev-disk-by-label-media/appdata/restartContainer.sh \n\";
"
