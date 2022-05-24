#!/bin/bash
cat << END | dconf load /org/gnome/shell/extensions/appindicator/
[/]
icon-size=24
tray-pos='left'
END
gnome-extensions list | grep -q 'ubuntu-appindicators@ubuntu.com' ||
gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/Shell --method org.gnome.Shell.Extensions.InstallRemoteExtension 'appindicatorsupport@rgcjonas.gmail.com'

echo ./gnome/ext/apptray.sh >> ~/deployworkenv.log
