#!/bin/sh
# Update system
sudo pacman -Syu --noconfirm

#Install packages
sudo pacman -S --noconfirm --needed chezmoi kitty hyprland hyprlock hyprshot hyprpaper waybar nvim lf thunar thunar-archive-plugin fish thunar-volman gvfs gvfs-smb gvfs-mtp xarchiver rofi wlogout dunst nwg-look papirus-icon-theme cliphist uwsm mpd rmpc xcb-imdkit meson hyprpolkitagent

#Symlink config files
chezmoi init https://github.com/dimsp98/dotfiles.git
chezmoi cd
chezmoi apply -v
