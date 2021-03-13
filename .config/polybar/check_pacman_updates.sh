#!/bin/zsh

for pid in $(pidof -x check_pacman_updates.sh); do
    if [ $pid != $$ ]; then
        echo "[$(date)] : check_pacman_updates.sh : Process is already running with PID $pid"
        exit 1
    fi
done

while true; do
    checkupdates 2> /dev/null | wc -l > /tmp/pacman_updates.count
    sleep 900
done
