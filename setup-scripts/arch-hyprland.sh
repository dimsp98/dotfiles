#!/bin/sh
# Update system
sudo pacman -Syu --noconfirm

# Install AUR helper
if ! command -v paru &> /dev/null; then
  echo "Installing yay AUR helper..."
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
else
    echo "paru is already installed"
  fi

# Install packages
sudo pacman -S --noconfirm --needed chezmoi kitty hyprland hyprlock hyprshot hyprpaper waybar nvim lf thunar thunar-archive-plugin fish starship thunar-volman gvfs gvfs-smb gvfs-mtp xarchiver rofi wlogout dunst nwg-look papirus-icon-theme cliphist uwsm mpd rmpc xcb-imdkit meson hyprpolkitagent

# Symlink config files
chezmoi init https://github.com/dimsp98/dotfiles.git
chezmoi cd
chezmoi apply -v
