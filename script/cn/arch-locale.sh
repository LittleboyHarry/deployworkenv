#!/bin/bash
sudo pacman -S noto-fonts-cjk --noconfirm
sudo sed -i "/#zh_CN.U/ s/^#//" /etc/locale.gen
sudo locale-gen

echo ./cn/arch-locale.sh >> ~/deployworkenv.log