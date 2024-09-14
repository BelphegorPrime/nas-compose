#! /usr/bin/env bash

UUID=75fc92e0-cca2-461b-abab-6c45d5a9474b
DIR="/srv/dev-disk-by-uuid-$UUID"

# 28b81fe9-324f-4956-9b99-9136a371f7db === cold8TB (7,22 TB)
if [[ -d $DIR ]]
then
  # Size ~ 3,58TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Games $DIR/
else
  echo "coldGames drives directory $DIR does not exist"
fi
