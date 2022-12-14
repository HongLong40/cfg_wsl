#!/bin/env zsh

# Load profile
for file in "/etc/profile" "$HOME/.profile" "/etc/xprofile" "$HOME/.xprofile"
do
    if [ -f "$file" ]
    then
        echo "Loading profile from $file";
        . "$file"
    fi
done

# Load resources
for file in "/etc/X11/Xresources" "$HOME/.Xresources"
do
    if [ -f "$file" ]
    then
        echo "Loading resource: $file"
        xrdb -merge "$file"
    fi
done

# Run all system xinitrc shell scripts
xinitdir="/etc/X11/xinit/xinitrc.d"
if [ -d "$xinitdir" ]
then
    for script in $xinitdir/*
    do
        echo "Loading xinit script $script"
        if [ -x "$script" -a ! -d "$script" ]
        then
            . "$script"
        fi
    done
fi

# start herbstluftwm. The --locked option eliminates flickering while wm starts
#exec herbstluftwm --locked 
#exec qtile start 
#exec i3

# Keep Herbstluftwm as default
session=${1:-herbstluftwm}

case $session in
    herbstluftwm    ) exec herbstluftwm --locked;;
    i3              ) exec i3;;
    qtile           ) exec qtile start;;
    # No known session, try to run it as command
    *               ) exec $1;;
esac
