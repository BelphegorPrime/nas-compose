#! /bin/bash

sleep 10;

# restart docker vpn services
docker-compose -f /srv/nas-compose/vpn/docker-compose.yml down;
docker-compose -f /srv/nas-compose/vpn/docker-compose.yml up -d;

# power adjustments
powertop --auto-tune

# run backups
bash -c "
    if ! screen -ls | grep -q \"backup\"; then
        screen -dm -S backup;
    fi
    screen -r backup -X stuff \"bash /srv/nas-compose/scripts/runBackup.sh \n\";
"

# run Humble Trove Downloader
bash -c "
    if ! screen -ls | grep -q \"trove\"; then
        screen -dm -S trove;
    fi
    screen -r trove -X stuff \"cd /srv/humbleTroveDownloader && /srv/humbleTroveDownloader/trove_downloader run \n\";
"

# mount onedrive
rclone mount --daemon onedrive:OpenMediaVault /srv/onedrive
