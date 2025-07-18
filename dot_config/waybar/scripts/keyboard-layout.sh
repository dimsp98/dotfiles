#!/bin/sh
layout=$(hyprctl devices -j | jq -r '
  .keyboards[] | select(.name != null) | .active_keymap' | head -n1)
case "$layout" in
  us) echo "US" ;;
  gr) echo "GR" ;;
  *) echo "$layout" ;;
esac
