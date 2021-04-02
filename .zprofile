#!/bin/env zsh

#PS3='Please enter your choice: '
#opts=( "Herbstluft" "Qtile" )
#select opt in "${opts[@]}"
#do
#    case $opt in
#        "Herbstluft")
#            echo "herbstluftwm --locked" > /tmp/startwm
#            wm="herbstluftwm"
#            break
#            ;;
#        "Qtile")
#            echo "qtile start" > /tmp/startwm
#            wm="qtile"
#            break
#            ;;
#        *) echo "invalid option $REPLY";;
#    esac
#done

if [[ -z "${DISPLAY}" ]] && [[ "${XDG_VTNR}" -eq 1 ]]
then
    startx
    #startx ~/.xinitrc $wm
fi

