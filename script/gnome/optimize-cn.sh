#!/bin/bash
read -p "激活触摸板轻触点击 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

read -p "显示最小最大化窗口按钮 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    gsettings set org.gnome.desktop.wm.preferences button-layout appmenu:minimize,maximize,close

read -p "跳过 60s 关机前确认 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    gsettings set org.gnome.SessionManager logout-prompt false

read -p "按下键盘电源键关机 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    gsettings set org.gnome.settings-daemon.plugins.power power-button-action interactive

read -p "允许 Super + 右键 拖拽更改窗口大小 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true

# 限制应用切换器作用于当前工作区
read -p "限制应用切换器作用于当前工作区 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    gsettings set org.gnome.shell.app-switcher current-workspace-only true

read -p "关闭干扰的字符搜索支持 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    gsettings set org.gnome.desktop.search-providers disabled "['org.gnome.Characters.desktop']"

read -p "$(Super + D) 键显示桌面 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"

# 任务管理器：使用树视图
read -p "使用树视图的任务管理器 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] &&
    dconf write /org/gnome/gnome-system-monitor/show-dependencies true

# 强化同应用窗口切换 Alt + ` 键
read -p "强化同应用窗口切换 Alt + \` 键 (Y/n)?" r
[[ "$r" =~ ^(y|Y|)$ ]] && dconf load /org/gnome/desktop/wm/keybindings/ <<END
[/]
cycle-group=['<Alt>grave']
cycle-group-backward=['<Shift><Alt>grave']
END

echo ./gnome/optimize-cn.sh >> ~/deployworkenv.log
