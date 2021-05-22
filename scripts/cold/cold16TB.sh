#! /usr/bin/env bash

#DIR="/srv/dev-disk-by-label-cold16TB"
DIR="/srv/dev-disk-by-id-usb-TOSHIBA_MG08ACA16TE_RANDOM__F9D3073F4917-0-1-part1"

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
