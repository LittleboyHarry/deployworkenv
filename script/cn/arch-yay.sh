#!/bin/bash
sudo pacman -S gcc-go --noconfirm
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct

cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
