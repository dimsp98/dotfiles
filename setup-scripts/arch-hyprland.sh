#!/bin/sh
#Install packages
sudo pacman -S --needed stow kitty hyprland hyprlock hyprshot hyprpaper waybar thunar thunar-archive-plugin thunar-volman xarchiver wofi wlogout nwg-look papirus-icon-theme

#Symlink config files
git clone https://github.com/dimsp98/dotfiles.git
cd dotfiles
stow -t $HOME/.config config
sudo stow -t /usr/share share
