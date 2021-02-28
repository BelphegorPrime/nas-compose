# nas-compose
docker-compose files for my private NAS

## services:

- balancer
  - Description:
    - node script to generate a haproxy conf for the running services 
  - copy `balancer/.env.example` to `balancer/.env` and set some env variables
  - ATTENTION! The SSL certificate in `balancer/cert` is self-signed and should not be used when the machine is exposed to the world wide web aka the internet 
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
- wetty (port: 8003)