#!/bin/bash
sudo sed -i '/#Para/ s/^#//' /etc/pacman.conf
echo '-c cn' | sudo tee -a /etc/xdg/reflector/reflector.conf
sudo systemctl restart reflector
