#! /bin/bash

sleep 10;

# restart docker vpn services
cd /srv/nas-compose/vpn || exit;
docker-compose up -d --build;

# power adjustments
powertop --auto-tune

# run backups
bash -c "
    if ! screen -ls | grep -q \"backup\"; then
        screen -dm -S backup;
    fi
    screen -r backup -X stuff \"bash /srv/nas-compose/scripts/runBackup .sh \n\";
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
