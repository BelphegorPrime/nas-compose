#! /etc/bash

DIR=/srv/dev-disk-by-label-media/media

if mountpoint -q $DIR; then
  echo "$DIR already mounted"
else
  sudo mount -t cifs -o user=vault,pass=night17293,rw,noperm,file_mode=0777,dir_mode=0777,vers=2.0 //192.168.1.200/media $DIR;
fi
