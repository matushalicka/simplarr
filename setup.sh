#!/bin/bash
source .env

# Make directories
sudo mkdir -pv ./configs/{bazarr,jellyfin,prowlarr,qbittorrent,radarr,recyclarr,sabnzbd,sonarr}
sudo mkdir -pv "$DATA_DIRECTORY"/{media,torrents,usenet}/{movies,tv}
sudo mkdir -pv "$DATA_DIRECTORY"/{torrents,usenet}/{incomplete,others}
sudo mkdir -pv ./data2/{torrents,usenet}/{incomplete,movies,others,tv}

# Set permissions
sudo chmod 775 ./configs
sudo chown $USER_ID:$GROUP_ID ./configs
sudo chmod 775 ./configs/{bazarr,jellyfin,prowlarr,qbittorrent,radarr,recyclarr,sabnzbd,sonarr}
sudo chown $USER_ID:$GROUP_ID ./configs/{bazarr,jellyfin,prowlarr,qbittorrent,radarr,recyclarr,sabnzbd,sonarr}

sudo find "$DATA_DIRECTORY" -type d -exec sudo chmod 775 {} \;
sudo find "$DATA_DIRECTORY" -type f -exec sudo chmod 664 {} \;
sudo chown -R $USER_ID:$GROUP_ID "$DATA_DIRECTORY"

sudo find ./data2 -type d -exec sudo chmod 775 {} \;
sudo find ./data2 -type f -exec sudo chmod 664 {} \;
sudo chown -R $USER_ID:$GROUP_ID ./data2
