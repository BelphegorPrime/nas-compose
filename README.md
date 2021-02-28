# nas-compose
docker-compose files for my private NAS

## services:

- balancer
  - Description:
    - node script to generate a haproxy conf for the running services 
  - copy `balancer/.env.example` to `balancer/.env` and set some env variables
  - ATTENTION! The SSL certificate in `balancer/cert` is self-signed and should not be used when the machine is exposed to the world wide web aka the internet 
- diun
  - Description:
    - A notifier for docker image updates
  - copy `diun/.env.example` to `diun/.env` and set some env variables
- dozzle (port: 8004)
  - Description:
    - A web based docker container log viewer
- handbreak (port: 8005)
  - Description:
    - Video encoder
- heimdall (port: 8000, 4430)
  - Description:
    - home service dashboard
- jellyfin (port: 8001, 7359, 1900)
  - Description:
    - Multimedia Server
- nextcloud (port: 8006)
  - Description:
    - personal cloud storage
  - when it is a new installation create an empty file `nextcloud/CAN_INSTALL`.
  - after installation delete `nextcloud/CAN_INSTALL`
- ouroboros
  - Description:
    - automatic docker upgrader
- portainer (port: 8002, 9000)
  - Description:
    - web interface to manage docker container instances
- vpn
  - Description:
    - a downloader that loads through a vpn exclusively all other services should be normally reachable in the LAN
  - wireguard
    - copy a wireguard config file to `vpn/wg0.conf`
  - jdownloader
    - copy `vpn/.env.example` to `vpn/.env` and set some env variables
- wetty (port: 8003)
  - Description:
    - web based SSH connection