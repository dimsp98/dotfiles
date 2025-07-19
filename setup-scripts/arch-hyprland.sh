#!/bin/sh
#Install packages
sudo pacman -S --needed chezmoi kitty hyprland hyprlock hyprshot hyprpaper waybar thunar thunar-archive-plugin thunar-volman gvfs gvfs-smb gvfs-mtp xarchiver wofi wlogout nwg-look papirus-icon-theme

#Symlink config files
chezmoi init https://github.com/dimsp98/dotfiles.git
chezmoi cd
chezmoi apply -v
