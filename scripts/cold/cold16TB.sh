#! /usr/bin/env bash

DIR="/srv/dev-disk-by-label-cold16TB"

# cold16TB (14,55 TB)
if [[ -d $DIR ]]
then
  # Size ~ 7,1TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Series $DIR/

  # Size ~ 0,344TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Movies $DIR/
  # Sizes Total ~ 7,444TB
else
  echo "cold16TB drives directory $DIR does not exist"
fi