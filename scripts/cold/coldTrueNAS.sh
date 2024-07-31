#! /usr/bin/env bash

DIR="/mnt/truenas"

rsync -avu --delete /volume1/media $DIR/
