#! /bin/bash

sleep 30;

bash ./activate-wol.sh

sleep 10;

bash ./restartVPNService.sh

powertop --auto-tune

bash ./runBackup.sh
bash ./runTroveDownloader.sh

rclone mount --daemon onedrive:OpenMediaVault /srv/onedrive
