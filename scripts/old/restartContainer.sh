#!/usr/bin/env bash

sleep 10;
docker restart $(docker ps -q);

docker-compose -f /srv/dev-disk-by-label-media/appdata/jdownloader/docker-compose.yml up -d
