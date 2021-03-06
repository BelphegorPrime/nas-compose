#! /usr/bin/env bash

UUID=xxxxxxxxxxxx
DIR="/srv/dev-disk-by-uuid-$UUID"

if [[ -d $DIR ]]
then
  echo $DIR
  # xxxxxxxxxxxx === cold16TB (7,22 TB)
  # Size > 7TB
  #rsync -av --delete /srv/dev-disk-by-label-media/media/Series $DIR/

  # Size ~ 0,000TB
  #rsync -avu --delete /srv/dev-disk-by-label-media/media/Movies $DIR/
  # Sizes Total > 7TB
else
  echo "cold16TB drives directory $DIR does not exist"
fi