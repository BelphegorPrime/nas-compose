#! /bin/bash

sleep 10;

cd /srv/nas-compose/vpn || exit;
docker-compose up -d --build;
