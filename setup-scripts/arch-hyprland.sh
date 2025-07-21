#!/bin/sh
#Install packages
sudo pacman -S --needed chezmoi kitty hyprland hyprlock hyprshot hyprpaper waybar nvim lf thunar thunar-archive-plugin fish thunar-volman gvfs gvfs-smb gvfs-mtp xarchiver wofi wlogout dunst nwg-look papirus-icon-theme cliphist uwsm

#Symlink config files
chezmoi init https://github.com/dimsp98/dotfiles.git
chezmoi cd
chezmoi apply -v
