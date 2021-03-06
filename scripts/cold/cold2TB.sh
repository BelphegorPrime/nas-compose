#! /usr/bin/env bash

UUID=388db899-68a7-4652-92ab-21ee72824626
DIR="/srv/dev-disk-by-uuid-$UUID"

# 388db899-68a7-4652-92ab-21ee72824626 === cold2TB (1,79 TB)
if [[ -d $DIR ]]
then
  # Size ~ 0,018TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/DSA $DIR/
  # Size ~ 0,005TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Ebooks $DIR/
  # Size ~ 0,015TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Fuer_Spiele $DIR/
  # Size ~ 0,095TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Images $DIR/
  # Size ~ 0,120TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Manga $DIR/
  # Size ~ 0,59TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Music $DIR/
  # Size ~ 0,031TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Pictures $DIR/
  # Size ~ 0,016TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Podcasts $DIR/
  # Sizes Total ~ 0,89TB
fi