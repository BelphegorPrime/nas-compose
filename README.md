# nas-compose
docker-compose files for my private NAS

## services:

- diun
- dozzle (port: 8004)
- handbreak (port: 8005)
- heimdall (port: 8000, 4430)
- jellyfin (port: 8001, 7359, 1900)
- nextcloud (port: 8006)
  - only when new installation check docker-compose.yml for a mounted `CAN_INSTALL` file (around line 15).
- ouroboros
- portainer (port: 8002, 9000)
- vpn
- wetty (port: 8003)