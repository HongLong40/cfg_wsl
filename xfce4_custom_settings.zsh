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

# Workspaces

xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>1" -n -t string -s workspace_1_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>2" -n -t string -s workspace_2_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>3" -n -t string -s workspace_3_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>4" -n -t string -s workspace_4_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>5" -n -t string -s workspace_5_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>6" -n -t string -s workspace_6_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>7" -n -t string -s workspace_7_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>8" -n -t string -s workspace_8_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>9" -n -t string -s workspace_9_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>1" -n -t string -s move_window_workspace_1_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>2" -n -t string -s move_window_workspace_2_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>3" -n -t string -s move_window_workspace_3_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>4" -n -t string -s move_window_workspace_4_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>5" -n -t string -s move_window_workspace_5_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>6" -n -t string -s move_window_workspace_6_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>7" -n -t string -s move_window_workspace_7_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>8" -n -t string -s move_window_workspace_8_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Super>9" -n -t string -s move_window_workspace_9_key

xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Left" -n -t string -s left_workspace_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Right" -n -t string -s right_workspace_key

# Windows: Tiling

xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Left" -n -t string -s tile_left_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Right" -n -t string -s tile_right_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Up" -n -t string -s tile_up_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Down" -n -t string -s tile_down_key

xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>KP_Add" -n -t string -s maximize_window_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>KP_Subtract" -n -t string -s hide_window_key

xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>KP_End" -n -t string -s tile_down_left_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>KP_Home" -n -t string -s tile_up_left_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>KP_Next" -n -t string -s tile_down_right_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>KP_Page_Up" -n -t string -s tile_up_right_key

# Windows: Moving, Resizing, etc

xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>d" -n -t string -s show_desktop_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>Tab" -n -t string -s switch_window_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>m" -n -t string -s move_window_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>r" -n -t string -s resize_window_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Alt>q" -n -t string -s close_window_key

# Application Menus

xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>space" -n -t string -s 'rofi -show window'
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Shift><Super>space" -n -t string -s xfce4-popup-whiskermenu 
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>r" -n -t string -s 'xfce4-appfinder -c'
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>r/startup-notify" -n -t string -s true

# Applications

xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>e" -n -t string -s thunar
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>b" -n -t string -s opera
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>h" -n -t string -s 'opera --private'
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>i" -n -t string -s xfce4-settings-manager
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>m" -n -t string -s clementine
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>t" -n -t string -s xfce4-terminal
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>v" -n -t string -s gvim

xfconf-query -c xfce4-keyboard-shortcuts -p /commands/custom/Calculator -n -t string -s galculator
xfconf-query -c xfce4-keyboard-shortcuts -p /commands/custom/Print -n -t string -s 'flameshot gui'

