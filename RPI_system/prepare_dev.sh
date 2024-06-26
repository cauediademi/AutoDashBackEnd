#!/bin/sh

# remove current can env
sudo systemctl stop can_server
sudo systemctl disable can_server
sudo rm /etc/systemd/system/can_server.service

sudo systemctl stop vcan_server
sudo systemctl disable vcan_server
sudo rm /etc/systemd/system/vcan_server.service

sudo chmod u+rw ~/AutoDashBackEnd/RPI_system/start_vcan.sh

# ccan socket server and web server setup
sudo cp ~/AutoDashBackEnd/RPI_system/services/vcan/vcan_server.service  /etc/systemd/system/
sudo chmod u+rw /etc/systemd/system/vcan_server.service
sudo systemctl enable vcan_server
