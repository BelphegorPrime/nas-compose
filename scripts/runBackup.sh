#! /bin/bash

rsync -avu --delete --exclude "lost+found" --exclude "Downloads" --exclude "DownloadsTransmission" /srv/dev-disk-by-label-media/media /srv/dev-disk-by-label-backup