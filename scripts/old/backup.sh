#! /bin/bash

BACKUP_DIR=/srv/dev-disk-by-label-backup

rsync -rtul --delete --progress --exclude "lost+found" /srv/dev-disk-by-label-home/ "$BACKUP_DIR/home";
rsync -rtul --delete --progress --exclude "lost+found"  --exclude "Movies" --exclude "Series" /srv/dev-disk-by-label-media/ "$BACKUP_DIR/media";
