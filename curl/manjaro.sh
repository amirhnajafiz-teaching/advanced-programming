#!bin/bash

# installing snapd
sudo pacman -S snapd

# systemd unit that manages the main snap communication socket needs to be enabled
sudo systemctl enable --now snapd.socket

# to enable classic snap support, the following creates a symbolic link between /var/lib/snapd/snap and /snap
sudo ln -s /var/lib/snapd/snap /snap

# install curl
sudo snap install curl

# check curl version
curl --version
