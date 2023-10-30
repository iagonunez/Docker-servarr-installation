#!/bin/bash
echo "Creating media folders"

mkdir /data /data/torrents /data/torrents/music \
/data/torrents/tv /data/torrents/movies \
/data/media /data/media/music /data/media/tv \
/data/media/movies

chown -R $USER:$USER /data
chmod -R a=,a+rX,u+w,g+w /data

echo "Deploying docker containers"

docker compose up -d