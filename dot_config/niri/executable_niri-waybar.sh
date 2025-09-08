#!/usr/bin/env sh

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
waybar -c $HOME/.config/niri/waybar/config.jsonc -s $HOME/.config/niri/waybar/style.css &> /dev/null & disown
