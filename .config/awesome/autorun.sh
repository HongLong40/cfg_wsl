#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

##run $HOME/.screenlayout/display.sh
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run /usr/bin/gnome-keyring-daemon --start --components=pkcs11
run /usr/bin/gnome-keyring-daemon --start --components=secrets
run /usr/bin/gnome-keyring-daemon --start --components=ssh
run picom
run nm-applet
run start-pulseaudio-x11
run nitrogen --restore
run conky --config=$HOME/.config/conky/conkyob.conf --daemonize --pause=1
run numlockx on
run xfce4-power-manager
