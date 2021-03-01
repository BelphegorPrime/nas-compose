#! /bin/bash

cd /srv/nas-compose/vpn || exit;
docker-compose up -d --build;
