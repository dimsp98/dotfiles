#!/bin/zsh

# Terminate already running bar instances
pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar -c $HOME/.config/herbstluftwm/bar.ini &

echo "Polybar launched"
