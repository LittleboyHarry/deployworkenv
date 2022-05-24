#!/bin/bash
dconf load /org/gnome/shell/extensions/babar/ <<END
[/]
display-activities=true
display-app-grid=false
display-favorites=false
favorites-first=true
icon-size=38
reduce-padding=false
right-click=false
END

echo ./gnome/ext/4taskbar.sh >> ~/deployworkenv.log
