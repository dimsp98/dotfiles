swayidle -w \
    timeout 300 'loginctl lock-session; pidof hyprlock || hyprlock' \
    before-sleep 'loginctl lock-session; pidof hyprlock || hyprlock'
