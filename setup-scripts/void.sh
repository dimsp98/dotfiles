#!/bin/sh
#Install Dependencies
cd ~ && echo "Installing Dependencies"
sudo xbps-install arandr awesome acpi bluez qt6-qt5compat rustup pnpm kitty elogind rofi picom yt-dlp syncthing ImageMagick void-repo-nonfree xarchiver thunar-media-tags-plugin thunar-archive-plugin 
sudo xbps-install void-repo-multilib void-repo-multilib-nonfree nodejs pnpm xorg xf86-video-nouveau base-devel git bat papirus-icon-theme papirus-folders lf ffmpeg ghostscript zip unzip gzip 
sudo xbps-install lxappearance libX11-devel libXinerama-devel libXft-devel xsetroot curl openssh wget bspwm htop pipewire pamixer pavucontrol openjdk-jre mpd ncmpcpp sxhkd xclip dunst mpv maim 
sudo xbps-install sddm
sudo xbps-install libreoffice 
sudo xbps-install gcc clang zig qt5-graphicaleffects qt5-quickcontrols2 zsh neovim polybar jsoncpp feh zathura-pdf-mupdf hplip cups simple-scan ntfs-3g udisks2
sudo xbps-remove -R gnome-keyring
#creating directories
echo "Creating directories"
sudo mkdir -p /usr/local/bin
sudo mkdir -p /usr/share
mkdir -p $HOME/Pictures
mkdir -p $HOME/Documents
mkdir -p $HOME/Downloads
mkdir -p $HOME/Music
mkdir -p $HOME/Videos
papirus-folders -C cyan --theme Papirus-Dark
#Install and apply my dotfiles
cd ~/dotfiles && echo "Creating symlinks"
git submodule update --init
ln -sf $HOME/dotfiles/config/* ~/.config
ln -sf $HOME/dotfiles/.zshenv ~
sudo cp -r $HOME/dotfiles/fonts/* /usr/share/fonts
sudo ln -sf $HOME/dotfiles/icons/* /usr/share/icons
sudo ln -sf $HOME/dotfiles/themes/* /usr/share/themes
#void-packages
echo -e "Installing void-packages"
cd ~ && git clone https://github.com/void-linux/void-packages.git
cd void-packages
./xbps-src binary-bootstrap
echo XBPS_ALLOW_RESTRICTED=yes >>etc/conf
#Change theme for bat
bat cache --build
#Change shell to zsh
chsh -s /usr/bin/zsh && sudo chsh -s /usr/bin/zsh
#NVim
rustup toolchain install nightly
sudo xbps-install tree-sitter zoxide lazygit ripgrep sqlite fd yarn lldb nvm gcc
cd ~
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
#Configure fonts
sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
sudo xbps-reconfigure -f fontconfig
#Dual-boot Timezone
echo "HARDWARECLOCK="localtime"" | sudo tee /etc/rc.conf
#Arc Icon theme for awesomewm widgets
mkdir $HOME/.local/share/icons
cd $HOME/.local/share/icons/ 
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make Install
cd ~
#Setting up services
echo -e "Setting up servicces"
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/cupsd /var/service
sudo ln -s /etc/sv/bluetoothd /var/service
sudo ln -s /etc/sv/sddm /var/service
