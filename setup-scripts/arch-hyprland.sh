#!/bin/sh
#Install packages
sudo pacman -S --needed kitty hyprland hyprlock hyprshot hyprpaper waybar thunar thunar-archive-plugin thunar-volman xarchiver wofi wlogout nwg-look papirus-icon-theme

#Symlink config files
ln -sf $HOME/dotfiles/config/hypr/ $HOME/.config
ln -sf $HOME/dotfiles/config/waybar/ $HOME/.config
ln -sf $HOME/dotfiles/config/wofi/ $HOME/.config
ln -sf $HOME/dotfiles/config/wlogout/ $HOME/.config
sudo ln -sf $HOME/dotfiles/config/wlogout/icons/* /usr/share/wlogout/icons/
sudo ln -sf $HOME/dotfiles/themes/Catppuccin-Mocha-Standard-Sapphire-Dark/ /usr/share/themes/
sudo ln -sf $HOME/dotfiles/icons/catppuccin-mocha-sapphire-cursors/ /usr/share/icons/
