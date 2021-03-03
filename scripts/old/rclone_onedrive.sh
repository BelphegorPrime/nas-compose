#!/bin/bash

#example call
#./rclone_onedrive.sh

rclone copy OneDrive: /srv/dev-disk-by-label-main/main/OneDrive;
rclone copy /srv/dev-disk-by-label-main/main/OneDrive OneDrive:;
