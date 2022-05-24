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

echo ./gnome/ext/dash/recommend.sh >> ~/deployworkenv.log
