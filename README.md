# Arr programs install for Linux using Docker

This script and docker-compose file help install Sonarr, Radarr, Lidarr, Prowlarr to download Linux ISOs along with qbitorrent, a vpn through gluetun and a navidrome server for music streaming.

### Setup:
The folder structure is very important for proper operation between programs. The following structure will be created on the root folder.

``` sh
data
├── torrents
│   ├── books
│   ├── movies
│   ├── music
│   └── tv
├── usenet
│   ├── incomplete
│   └── complete
│        ├── books
│        ├── movies
│        ├── music
│        └── tv
└── media
     ├── books
     ├── movies
     ├── music
     └── tv

```
This goes in accordance with the structure created on the docker-compose.yml file. 

**IMPORTANT: The user and group must have recursive access to the /data folder. For this chown and chmod are used with 775 and 664 permissions respectively.**

For the setup of the VPN the docker-compose file shall be modified. In particular, the environment variables of the gluetun service must be changed to the VPN of choice. It is recomended to use protonvpn as it has a free plan with unlimited bandwidth.

``` dockerfile
environment:
    ...
    - VPN_SERVICE_PROVIDER=protonvpn
    - OPENVPN_USER={Open VPN USER from protonvpn configuration}
    - OPENVPN_PASSWORD={Open VPN PASSWORD from protonvpn configuration}
    - SERVER_COUNTRIES={Country of the vpn server. Ex:Netherlands}
```

For the setup of each program follow [Servarr wiki](https://wiki.servarr.com).

## Installation
To install the programs give execution permissions to install.sh with ```chmod +x install.sh``` and run wiht ```sudo ./install.sh```.


This code is for educational purposes only and I'm not responsible for any unlawful use of the programs.
