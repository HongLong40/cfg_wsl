#!/bin/env zsh
herbstclient stack | grep -E -i "monitor.[0-9]" | sed 's/"//g' | sort | awk '{ print "M"$3":T"$NF }' | paste -sd"  "
