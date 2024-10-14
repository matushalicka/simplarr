#!/bin/bash

source .env

# Make directories
sudo mkdir -pv ./configs/linuxserver/{jellyfin,radarr,sonarr,prowlarr,qbittorrent,bazarr}
sudo mkdir -pv ${MOVIES_DIRECTORY}/data/movies/{torrents,media}
sudo mkdir -pv ${TV_SHOWS_DIRECTORY}/data/tvshows/{torrents,media}

# Set permissions
sudo chmod 775 ./configs
sudo chown ${USER_ID}:${GROUP_ID} ./configs
sudo chmod 775 ./configs/linuxserver
sudo chown ${USER_ID}:${GROUP_ID} ./configs/linuxserver
sudo chmod 775 ./configs/linuxserver/{jellyfin,radarr,sonarr,prowlarr,qbittorrent,bazarr}
sudo chown ${USER_ID}:${GROUP_ID} ./configs/linuxserver/{jellyfin,radarr,sonarr,prowlarr,qbittorrent,bazarr}

sudo chmod 775 ${MOVIES_DIRECTORY}
sudo find ${MOVIES_DIRECTORY} -type d -exec sudo chmod 775 {} \;
sudo find ${MOVIES_DIRECTORY} -type f -exec sudo chmod 664 {} \;
sudo chown -R ${USER_ID}:${GROUP_ID} ${MOVIES_DIRECTORY}

sudo chmod 775 ${TV_SHOWS_DIRECTORY}
sudo find ${TV_SHOWS_DIRECTORY} -type d -exec sudo chmod 775 {} \;
sudo find ${TV_SHOWS_DIRECTORY} -type f -exec sudo chmod 664 {} \;
sudo chown -R ${USER_ID}:${GROUP_ID} ${TV_SHOWS_DIRECTORY}