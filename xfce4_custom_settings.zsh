#!/bin/zsh
# Appearance

xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Breeze_Amber
xfconf-query -c xsettings -p /Gtk/FontName -s 'Roboto 10'
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s 'Monospace 10'
xfconf-query -c xsettings -p /Net/IconThemeName -s Papirus-Dark
xfconf-query -c xsettings -p /Net/ThemeName -s Arc-Dark-Bluer
xfconf-query -c xfwm4 -p /general/button_layout -s '|'
xfconf-query -c xfwm4 -p /general/theme -s Tgc
xfconf-query -c xfwm4 -p /general/title_alignment -s center
xfconf-query -c xfwm4 -p /general/title_font -s 'Roboto Bold Italic 10'
xfconf-query -c xfwm4 -p /Default/XkbOptions/Compose -n -t string -s 'compose:ralt'

# Workspaces: Goto Workspace

xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_1"
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_2"
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_3"
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_4"
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_5"
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_6"
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_7"
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_8"
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Super>KP_9"

xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_1" -t string -s workspace_1_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_2" -t string -s workspace_2_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_3" -t string -s workspace_3_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_4" -t string -s workspace_4_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_5" -t string -s workspace_5_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_6" -t string -s workspace_6_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_7" -t string -s workspace_7_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_8" -t string -s workspace_8_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Super>KP_9" -t string -s workspace_9_key

# Windows: Tiling

xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Super>="
xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Super>-"

xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Super>=" -t string -s maximize_window_key
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Super>-" -t string -s hide_window_key

# Windows: Closing 

xfconf-query -c xfce4-keyboard-shortcuts -rp "/xfwm4/custom/<Primary><Alt>q"
xfconf-query -c xfce4-keyboard-shortcuts -np "/xfwm4/custom/<Primary><Alt>q" -t string -s close_window_key

### Application Menus

## rofi
xfconf-query -c xfce4-keyboard-shortcuts -rp "/commands/custom/<Super>space"
xfconf-query -c xfce4-keyboard-shortcuts -np "/commands/custom/<Super>space" -t string -s 'rofi -show window'

# Applications

# opera
xfconf-query -c xfce4-keyboard-shortcuts -rp "/commands/custom/<Super>b"
xfconf-query -c xfce4-keyboard-shortcuts -np "/commands/custom/<Super>b" -t string -s opera

xfconf-query -c xfce4-keyboard-shortcuts -rp "/commands/custom/<Super>h"
xfconf-query -c xfce4-keyboard-shortcuts -np "/commands/custom/<Super>h" -t string -s 'opera --private'

xfconf-query -c xfce4-keyboard-shortcuts -rp "/commands/custom/<Super>i"
xfconf-query -c xfce4-keyboard-shortcuts -np "/commands/custom/<Super>i" -t string -s xfce4-settings-manager

# gVim
xfconf-query -c xfce4-keyboard-shortcuts -rp "/commands/custom/<Super>v"
xfconf-query -c xfce4-keyboard-shortcuts -np "/commands/custom/<Super>v" -t string -s gvim

# Calculator
xfconf-query -c xfce4-keyboard-shortcuts -rp /commands/custom/Calculator
xfconf-query -c xfce4-keyboard-shortcuts -np /commands/custom/Calculator -t string -s galculator

# Screen Capture
xfconf-query -c xfce4-keyboard-shortcuts -p /commands/custom/Print -s 'flameshot gui'

