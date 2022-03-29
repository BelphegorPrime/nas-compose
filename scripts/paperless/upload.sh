#! /bin/bash

rclone sync /srv/dev-disk-by-label-media/media/Documents/export onedrive:Documents/paperless/export
rclone sync /srv/dev-disk-by-label-media/media/Documents/media onedrive:Documents/paperless/media