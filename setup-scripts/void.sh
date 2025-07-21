#!/bin/sh
# Install Dependencies
echo "Installing Dependencies"
sudo xbps-install chezmoi acpi kitty elogind void-repo-nonfree xarchiver thunar-media-tags-plugin thunar-archive-plugin 
sudo xbps-install void-repo-multilib void-repo-multilib-nonfree nodejs pnpm base-devel git bat papirus-icon-theme papirus-folders lf ffmpeg ghostscript zip unzip gzip 
sudo xbps-install nwg-look curl openssh wget htop pipewire pamixer pavucontrol rmpc dunst
sudo xbps-install fish neovim zathura-pdf-mupdf firefox
sudo xbps-install thunar-volman eza gvfs gvfs-smb gvfs-mtp cliphist
sudo xbps-remove -R gnome-keyring

# Install Hyprland
echo "Installing Hyprland"
echo 'repository=https://raw.githubusercontent.com/Makrennel/hyprland-void/repository-x86_64-glibc' | sudo tee /etc/xbps.d/hyprland-void.conf
sudo xbps-install -S hyprland hyprlock hyprshot hyprpaper hypridle xdg-desktop-portal-hyprland waybar uwsm
xbps-query -Rs hypr

# Choose folder color
echo "Setting folder Theme"
papirus-folders -C cyan --theme Papirus-Dark

# Create symlinks using chezmoi
chezmoi init https://github.com/dimsp98/dotfiles.git
chezmoi cd
chezmoi apply -v

# Setup void-packages
echo -e "Installing void-packages"
cd ~ && git clone https://github.com/void-linux/void-packages.git
cd void-packages
./xbps-src binary-bootstrap
echo XBPS_ALLOW_RESTRICTED=yes >>etc/conf

# Change theme for bat
bat cache --build

# Change shell to fish
chsh -s /usr/bin/fish && sudo chsh -s /usr/bin/fish

# Configure fonts
sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
sudo xbps-reconfigure -f fontconfig

# Dual-boot Timezone
echo "HARDWARECLOCK="localtime"" | sudo tee /etc/rc.conf
cd ~

# Setting up services
echo -e "Setting up services"
sudo ln -s /etc/sv/dbus /var/service
