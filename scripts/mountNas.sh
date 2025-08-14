#! /bin/bash

DIR=/mnt/unas

if mountpoint -q $DIR; then
  echo "$DIR already mounted"
else
  sudo mount -t cifs -o user=marcel,pass=Night17293,rw,noperm,file_mode=0777,dir_mode=0777 //192.168.1.100/media $DIR
  #sudo mount -t cifs -o user=vault,pass=night17293,rw,noperm,file_mode=0777,dir_mode=0777,vers=2.0 //192.168.1.200/media $DIR;
fi

