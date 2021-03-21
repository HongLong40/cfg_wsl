#!/bin/env zsh
if [[ "$(tty)" == "/dev/tty1" ]]; then
    pgrep "herbstluftwm" || startx
fi

