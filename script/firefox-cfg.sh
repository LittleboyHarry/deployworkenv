#!/bin/bash
cat << END >> "$(find ~/.mozilla/firefox -type d -name *.default-release)/user.js"
user_pref("ui.key.menuAccessKeyFocuses", false);
END

echo ./firefox-cfg.sh >> ~/deployworkenv.log