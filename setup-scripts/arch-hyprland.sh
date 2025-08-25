#!/bin/sh
# Update system
sudo pacman -Syu --noconfirm

# Install AUR helper
if ! command -v paru &> /dev/null; then
  echo "Installing yay AUR helper..."
sudo pacman -S --needed base-devel
rm -rf $HOME/paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
else
    echo "paru is already installed"
  fi

# Install packages
source $HOME/.local/share/chezmoi/setup-scripts/packages.txt
  echo "Installing system utilities..."
  paru -S --needed --noconfirm "${SYSTEM_UTILS[@]}"
  
  echo "Installing development tools"
  paru -S --needed --noconfirm "${TOOLS[@]}"
  
  echo "Installing hyprland packages"
  paru -S --needed --noconfirm "${HYPR[@]}"

  echo "Installing niri packages"
  paru -S --needed --noconfirm "${NIRI[@]}"

  echo "Installing theming tools"
  paru -S --needed --noconfirm "${THEME[@]}"

  echo "Installing audio packages"
  paru -S --needed --noconfirm "${AUDIO[@]}"

  echo "Installing fonts"
  paru -S --needed --noconfirm "${FONTS[@]}"
  
  echo "Installing media packages"
  paru -S --needed --noconfirm "${MEDIA[@]}"
  
  echo "Installing file manager"
  paru -S --needed --noconfirm "${FILE_MANAGEMENT[@]}"

# Enable services
  echo "Configuring services..."
  for service in "${SERVICES[@]}"; do
    if ! systemctl is-enabled "$service" &> /dev/null; then
      echo "Enabling $service..."
      sudo systemctl enable "$service"
    else
      echo "$service is already enabled"
    fi
  done

# Apply dotfiles with chezmoi
chezmoi init https://github.com/dimsp98/dotfiles.git 
chezmoi apply -v

# Install fish plugins
fish -c 'fisher install < $HOME/.config/fish/fish_plugins'
