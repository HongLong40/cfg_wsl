[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xbindkeys &
~/.screenlayout/display.sh
exec herbstluftwm
