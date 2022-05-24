#!/bin/bash
dconf load /org/gnome/shell/extensions/gestureImprovements/ <<END
[/]
default-overview=true
default-session-workspace=true
touchpad-pinch-speed=2.0
enable-alttab-gesture=false
allow-minimize-window=true
touchpad-speed-scale=1.25
END

echo ./gnome/ext/4gesture.sh >> ~/deployworkenv.log