#!/bin/bash
sudo pacman -S pkgfile --noconfirm
sudo pkgfile -u
echo source /usr/share/doc/pkgfile/command-not-found.zsh | tee -a ~/.bashrc ~/.zshrc
