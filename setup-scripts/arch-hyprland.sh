#!/bin/sh
#Install packages
sudo pacman -S --needed stow kitty hyprland hyprlock hyprshot hyprpaper waybar thunar thunar-archive-plugin thunar-volman xarchiver wofi wlogout nwg-look papirus-icon-theme

#Symlink config files
cd dotfiles
stow -t $HOME/.config .config/
sudo stow -t /usr/share/icons icons
sudo stow -t /usr/share/themes themes
sudo stow --target=/usr/share/fonts fonts
sudo stow -t /usr/share/sddm/themes sddm
