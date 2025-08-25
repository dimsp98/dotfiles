swayidle -w \
    timeout 3 'loginctl lock-session; pidof hyprlock || hyprlock' \
    before-sleep 'loginctl lock-session; pidof hyprlock || hyprlock'
