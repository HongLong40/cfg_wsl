#!/usr/bin/zsh

if [[ -z $(pgrep -x polybar) ]]
then
    for m in $(polybar --list-monitors | cut -d":" -f 1)
    do
        MONITOR=$m polybar --reload slate &
    done
else    
    polybar-msg cmd restart
    dunstify -t 2000 "Polybars Restarted"
fi
