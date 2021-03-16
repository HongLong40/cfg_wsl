#!/bin/zsh

# check if script is already running
for pid in $(pidof -x check_pacman_updates.sh); do
    if [ $pid != $$ ]; then
        echo "[$(date)] : check_pacman_updates.sh : Process is already running with PID $pid"
        exit 1
    fi
done

typeset CONFIG=$HOME/.config/polybar/check_pacman_updates.config 
typeset LOG=$HOME/.config/polybar/check_pacman_updates.log
typeset -i polling_interval=$(grep "polling_interval" $CONFIG | awk '{ print $2 }')

echo $(date "+%Y-%m-%d %T") Starting $0 with PID = $$ > $LOG
echo $(date "+%Y-%m-%d %T") Polling Interval = $polling_interval s >> $LOG

typeset -i last_update_count=0
typeset -i curr_update_count
typeset -i counter=1

# Wait for 15s, as polybars need to start up
while [[ (! -f /tmp/polybar_started) && $counter -le 15 ]]; do
    echo file not found $counter
    sleep 1
    (( counter++ ))
done

while true; do
    curr_update_count=$(checkupdates 2> /dev/null | wc -l | tee /tmp/pacman_updates.count)
    #curr_update_count=$(cat /tmp/pacman_updates.count)
    echo $(date "+%Y-%m-%d %T") Current Update Count: ..$curr_update_count.. >> $LOG
    if [[ $last_update_count != $curr_update_count ]]; then
        last_update_count=$curr_update_count
        polybar-msg hook pacman_ipc 2 || true
        dunstify -t 5000 "$curr_update_count New Pacman Updates Available"
    fi
    sleep $polling_interval
done
