#!/bin/bash
dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ <<END
[custom0]
binding='<Super>x'
command='gnome-terminal'
name='Open Terminal'

[custom1]
binding='<Super>e'
command='nautilus'
name='File Explorer'

[custom2]
binding='<Super>i'
command='gnome-control-center'
name='Control Center'

[custom3]
binding='<Shift><Super>s'
command='gnome-screenshot --interactive'
name='ScreenShot'
END
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/']"
