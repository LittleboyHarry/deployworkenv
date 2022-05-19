#!/bin/bash
dconf load /org/gnome/shell/extensions/nightthemeswitcher/ <<END
[time]
always-enable-ondemand=true
nightthemeswitcher-ondemand-keybinding=['']
END
