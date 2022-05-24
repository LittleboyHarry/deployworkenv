#!/bin/bash
dconf load /org/gnome/shell/extensions/dash-to-dock/ <<END
[/]
multi-monitor=true
isolate-workspaces=true
isolate-monitors=true
show-trash=false
scroll-action='cycle-windows'
middle-click-action='quit'
click-action='focus-minimize-or-previews'
END
gdbus call --session --dest org.gnome.Shell --object-path /org/gnome/Shell --method org.gnome.Shell.Extensions.InstallRemoteExtension 'dash-to-dock@micxgx.gmail.com'

echo ./gnome/ext/dash/recommend.sh >> ~/deployworkenv.log