#!/bin/env zsh

# PS3='Please enter your choice: '
# opts=("Herbstluft" "Qtile" "Quit")
# select opt in "${opts[@]}"
# do
#     case $opt in
#         "Herbstluft")
#             echo "you chose choice 1"
#             echo "herbstluftwm --locked" > /tmp/startwm
#             wm="herbstluftwm"
#             break
#             ;;
#         "Qtile")
#             echo "you chose choice 2"
#             echo "qtile" > /tmp/startwm
#             wm="qtile"
#             break
#             ;;
#         "Quit")
#             break
#             ;;
#         *) echo "invalid option $REPLY";;
#     esac
# done


if [[ "$(tty)" == "/dev/tty1" ]]; then
    pgrep "herbstluftwm" || startx
    #startx ~/.xinitrc $wm
fi

