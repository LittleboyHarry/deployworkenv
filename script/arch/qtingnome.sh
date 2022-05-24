#!/bin/bash
sudo pacman -S qt5ct --noconfirm
mkdir -p ~/.config/environment.d/
echo 'QT_QPA_PLATFORMTHEME=qt5ct' >~/.config/environment.d/use-qt5ct.conf

echo ./arch/qtingnome.sh >> ~/deployworkenv.log
