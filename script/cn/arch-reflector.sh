#!/bin/bash
echo "-c cn" | sudo tee -a /etc/xdg/reflector/reflector.conf
sudo systemctl restart reflector
yes | sudo pacman -Sy

echo ./cn/arch-reflector.sh >> ~/deployworkenv.log
