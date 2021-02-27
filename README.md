# nas-compose
docker-compose files for my private NAS

## services:

- diun
  - copy `diun/.env.example` to `diun/.env` and set some env variables
- dozzle (port: 8004)
- handbreak (port: 8005)
- heimdall (port: 8000, 4430)
- jellyfin (port: 8001, 7359, 1900)
- nextcloud (port: 8006)
  - when it is a new installation create an empty file `nextcloud/CAN_INSTALL`.
  - after installation delete `nextcloud/CAN_INSTALL`
- ouroboros
- portainer (port: 8002, 9000)
- vpn
  - wireguard
    - copy a wireguard config file to `vpn/wg0.conf`
  - jdownloader
    - copy `vpn/.env.example` to `vpn/.env` and set some env variables
  - onedrive
    - before using it you have to auth. Use the following command `docker run -it --name onedrive -v ./onedrive_conf:/onedrive/conf -v "./data:/onedrive/data" -e "ONEDRIVE_UID:1000" -e "ONEDRIVE_GID:1000" driveone/onedrive:latest`
- wetty (port: 8003)