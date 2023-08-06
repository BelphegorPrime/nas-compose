#! /usr/bin/env bash

UUID=28b81fe9-324f-4956-9b99-9136a371f7db
DIR="/srv/dev-disk-by-uuid-$UUID"

# 28b81fe9-324f-4956-9b99-9136a371f7db === cold8TB (7,22 TB)
if [[ -d $DIR ]]
then
  # Size ~ 2,99TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Anime $DIR/
else
  echo "cold8TB drives directory $DIR does not exist"
fi
