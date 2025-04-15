#!/bin/bash

source .env

# Make directories
sudo mkdir -pv ./configs/linuxserver/{jellyfin,radarr,sonarr,prowlarr,sabnzbd,qbittorrent,bazarr}
sudo mkdir -pv ./configs/recyclarr
sudo mkdir -pv ${MOVIES_DIRECTORY}/data/movies/{media,nzbs,torrents}
sudo mkdir -pv ${TV_SHOWS_DIRECTORY}/data/tvshows/{media,nzbs,torrents}
sudo mkdir -pv ${OTHERS_DIRECTORY}/data/others/{nzbs,torrents}

# Set permissions
sudo chmod 775 ./configs
sudo chown ${USER_ID}:${GROUP_ID} ./configs
sudo chmod 775 ./configs/linuxserver
sudo chown ${USER_ID}:${GROUP_ID} ./configs/linuxserver
sudo chmod 775 ./configs/linuxserver/{jellyfin,radarr,sonarr,prowlarr,sabnzbd,qbittorrent,bazarr}
sudo chown ${USER_ID}:${GROUP_ID} ./configs/linuxserver/{jellyfin,radarr,sonarr,prowlarr,sabnzbd,qbittorrent,bazarr}
sudo chmod 775 ./configs/recyclarr
sudo chown ${USER_ID}:${GROUP_ID} ./configs/recyclarr

sudo chmod 775 ${MOVIES_DIRECTORY}
sudo chown ${USER_ID}:${GROUP_ID} ${MOVIES_DIRECTORY}
sudo chmod 775 ${MOVIES_DIRECTORY}/data
sudo chown ${USER_ID}:${GROUP_ID} ${MOVIES_DIRECTORY}/data
sudo chmod 775 ${MOVIES_DIRECTORY}/data/movies
sudo find ${MOVIES_DIRECTORY}/data/movies -type d -exec sudo chmod 775 {} \;
sudo find ${MOVIES_DIRECTORY}/data/movies -type f -exec sudo chmod 664 {} \;
sudo chown -R ${USER_ID}:${GROUP_ID} ${MOVIES_DIRECTORY}/data/movies

sudo chmod 775 ${TV_SHOWS_DIRECTORY}
sudo chown ${USER_ID}:${GROUP_ID} ${TV_SHOWS_DIRECTORY}
sudo chmod 775 ${TV_SHOWS_DIRECTORY}/data
sudo chown ${USER_ID}:${GROUP_ID} ${TV_SHOWS_DIRECTORY}/data
sudo chmod 775 ${TV_SHOWS_DIRECTORY}/data/tvshows
sudo find ${TV_SHOWS_DIRECTORY}/data/tvshows -type d -exec sudo chmod 775 {} \;
sudo find ${TV_SHOWS_DIRECTORY}/data/tvshows -type f -exec sudo chmod 664 {} \;
sudo chown -R ${USER_ID}:${GROUP_ID} ${TV_SHOWS_DIRECTORY}/data/tvshows

sudo chmod 775 ${OTHERS_DIRECTORY}
sudo chown ${USER_ID}:${GROUP_ID} ${OTHERS_DIRECTORY}
sudo chmod 775 ${OTHERS_DIRECTORY}/data
sudo chown ${USER_ID}:${GROUP_ID} ${OTHERS_DIRECTORY}/data
sudo chmod 775 ${OTHERS_DIRECTORY}/data/others
sudo find ${OTHERS_DIRECTORY}/data/others -type d -exec sudo chmod 775 {} \;
sudo find ${OTHERS_DIRECTORY}/data/others -type f -exec sudo chmod 664 {} \;
sudo chown -R ${USER_ID}:${GROUP_ID} ${OTHERS_DIRECTORY}/data/others
