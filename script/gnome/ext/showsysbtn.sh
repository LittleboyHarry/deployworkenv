#!/bin/bash
gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/Shell --method org.gnome.Shell.Extensions.InstallRemoteExtension 'BringOutSubmenuOfPowerOffLogoutButton@pratap.fastmail.fm'

echo ./gnome/ext/showsysbtn.sh >> ~/deployworkenv.log
