#! /usr/bin/env bash

#DIR=""
#DIR="/srv/dev-disk-by-id-usb-TOSHIBA_MG08ACA16TE_RANDOM__42CC1D61B6A0-0-1-part1"
DIR="/srv/dev-disk-by-uuid-90b9d203-d281-4e8e-aec9-ecaae020703f"

# cold16TB (14,55 TB)
if [[ -d $DIR ]]
then
  # Size ~ 12,1TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Series $DIR/
else
  echo "coldSeries drives directory $DIR does not exist"
fi
