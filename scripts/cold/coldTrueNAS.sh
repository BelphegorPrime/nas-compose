#! /usr/bin/env bash

DIR="/mnt/truenas"

rsync --exclude={".DS_Store","Downloads","Documents","DownloadsTransmission","WatchTransmission","nas-compose"} -avuz --delete /volume1/media $DIR/
