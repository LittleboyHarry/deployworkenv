#!/bin/bash
pkcon install tlp
lsb_release -si | grep -qi "^Arch" && sudo pacman -S tlp-rdw --noconfirm
systemctl enable tlp.service --now
sudo systemctl mask systemd-rfkill.{service,socket} --now
sudo tlp start

echo ./pkd-tlp.sh >> ~/deployworkenv.log