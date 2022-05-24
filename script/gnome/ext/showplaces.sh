#!/bin/bash
UUID=places-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable $UUID ||
gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/Shell --method org.gnome.Shell.Extensions.InstallRemoteExtension $UUID

echo ./gnome/ext/showplaces.sh >> ~/deployworkenv.log
