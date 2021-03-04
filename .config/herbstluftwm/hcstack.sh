#!/bin/env zsh
typeset -a hcstack
hcstack=( $(herbstclient stack | rg "monitor.[0-9]" | sort | awk '{ print $3":"$NF }') )
echo ${hcstack[1]} " | " ${hcstack[2]}
