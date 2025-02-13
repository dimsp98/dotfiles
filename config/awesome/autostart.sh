#!/bin/sh
#Xorg power management
xset s off -dpms &

#compositor
pgrep -x picom >/dev/null || picom -b --config ~/.config/awesome/picom.conf &

#wallpaper
feh --bg-scale --no-fehbg /home/dimitris/dotfiles/Backgrounds/wallpaperbetter.jpg &

#clipboard
xclip &

#change language
setxkbmap -model pc104 -layout us,gr -option 'grp:alt_shift_toggle' &

#notifications
pgrep -x dunst >/dev/null || dunst -c ~/.config/dunst/dunstrc &

#network
nm-applet &

#audio
pipewire &
