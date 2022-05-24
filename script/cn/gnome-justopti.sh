#!/bin/bash

# 自动切换至后台新产生的窗口
dconf write /org/gnome/shell/extensions/just-perfection/window-demands-attention-focus true

read -p "新消息应该在右上侧出现吗 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
dconf write /org/gnome/shell/extensions/just-perfection/notification-banner-position 2

read -p "不保留应用菜单 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
dconf write /org/gnome/shell/extensions/just-perfection/app-menu false

read -p "降低顶栏对屏幕空间的占用 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
dconf write /org/gnome/shell/extensions/just-perfection/panel-size 36

echo '?' ./cn/gnome-justopti.sh >> ~/deployworkenv.log
