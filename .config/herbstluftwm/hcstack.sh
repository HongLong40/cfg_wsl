herbstclient stack | rg "monitor.[0-9]" | sort | awk '{ print $3":"$NF }' | paste -sd '|' | sed 's/|/ | /g' | sed 's/"//g'
