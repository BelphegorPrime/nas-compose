#! /usr/bin/env bash

#DIR=""
#DIR="/srv/dev-disk-by-id-usb-TOSHIBA_MG08ACA16TE_RANDOM__42CC1D61B6A0-0-1-part1"
DIR="/srv/dev-disk-by-uuid-26391ff1-3360-42a8-8227-c17addd702de"

# cold16TB (14,55 TB)
if [[ -d $DIR ]]
then
  # Size ~ 2,29TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Movies $DIR/
else
  echo "coldMovies directory $DIR does not exist"
fi
