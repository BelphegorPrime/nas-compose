# nas-compose
docker-compose files for my private NAS

## initial situation

- [OpenMediaVault 5](https://www.openmediavault.org/)
- [Docker](https://www.docker.com/) and [Docker-Compose](https://docs.docker.com/compose/)

## services:

- balancer
  - Description:
    - node script to generate a [haproxy](http://www.haproxy.org) conf for the running services 
  - copy `balancer/.env.example` to `balancer/.env` and set some env variables
  - ATTENTION! The SSL certificate in `balancer/cert` is self-signed and should not be used when the machine is exposed to the world wide web aka the internet
  - I use [NextDNS](http://nextdns.com)´s overwrite functionality to make local.net resolve in my LAN
- [diun](https://github.com/crazy-max/diun)
  - Description:
    - A notifier for docker image updates
  - copy `diun/.env.example` to `diun/.env` and set some env variables
- [dozzle](https://dozzle.dev/) (port: 8004)
  - Description:
    - A web based docker container log viewer
- [handbrake](https://handbrake.fr/) (port: 8005)
  - Description:
    - Video encoder
- [heimdall](https://heimdall.site/) (port: 8000, 4430)
  - Description:
    - home service dashboard
- [jellyfin](https://jellyfin.org/) (port: 8001, 7359, 1900)
  - Description:
    - Multimedia Server
- [nextcloud](https://nextcloud.com/) (port: 8006)
  - Description:
    - personal cloud storage
  - when it is a new installation create an empty file `nextcloud/CAN_INSTALL`.
  - after installation delete `nextcloud/CAN_INSTALL`
- [ouroboros](https://github.com/pyouroboros/ouroboros)
  - Description:
    - automatic docker upgrader
- [portainer](https://www.portainer.io/) (port: 8002, 9000)
  - Description:
    - web interface to manage docker container instances
- vpn
  - Description:
    - a downloader that loads through a vpn exclusively all other services should be normally reachable in the LAN
  - [wireguard](https://hub.docker.com/r/linuxserver/wireguard)
    - copy a wireguard config file to `vpn/wg0.conf`
  - [jdownloader](https://github.com/jaymoulin/docker-jdownloader)
    - copy `vpn/.env.example` to `vpn/.env` and set some env variables
- [wetty](https://github.com/butlerx/wetty) (port: 8003)
  - Description:
    - web based SSH connection
  - copy `wetty/.env.example` to `wetty/.env` and set some env variables