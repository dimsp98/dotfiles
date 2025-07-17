#!/bin/sh
# Install Dependencies
echo "Installing Dependencies"
sudo xbps-install stow arandr acpi rustup pnpm kitty elogind rofi picom void-repo-nonfree xarchiver thunar-media-tags-plugin thunar-archive-plugin 

sudo xbps-install void-repo-multilib void-repo-multilib-nonfree nodejs pnpm xorg base-devel git bat papirus-icon-theme papirus-folders lf ffmpeg ghostscript zip unzip gzip 

sudo xbps-install lxappearance libX11-devel libXinerama-devel libXft-devel xsetroot curl openssh wget bspwm htop pipewire pamixer pavucontrol ncmpcpp sxhkd xclip dunst vlc maim

sudo xbps-install zig fish neovim polybar jsoncpp feh zathura-pdf-mupdf firefox

sudo xbps-remove -R gnome-keyring

# Choose folder color
echo "Setting folder Theme"
papirus-folders -C cyan --theme Papirus-Dark

# Install and apply my dotfiles
cd ~/dotfiles && echo "Creating symlinks"
git submodule update --init

# Create symlinks using stow
stow -t $HOME/.config config
stow -t /usr/share/ fonts
stow -t /usr/share/ icons
stow -t /usr/share/ themes

# Setup void-packages
echo -e "Installing void-packages"
cd ~ && git clone https://github.com/void-linux/void-packages.git
cd void-packages
./xbps-src binary-bootstrap
echo XBPS_ALLOW_RESTRICTED=yes >>etc/conf

# Change theme for bat
bat cache --build

# Change shell to zsh
chsh -s /usr/bin/zsh && sudo chsh -s /usr/bin/zsh

# NVim
rustup toolchain install nightly
sudo xbps-install tree-sitter zoxide lazygit ripgrep sqlite fd yarn lldb nvm gcc
cd ~
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

# Configure fonts
sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
sudo xbps-reconfigure -f fontconfig

# Dual-boot Timezone
echo "HARDWARECLOCK="localtime"" | sudo tee /etc/rc.conf
cd ~

# Setting up services
echo -e "Setting up servicces"
sudo ln -s /etc/sv/dbus /var/service
