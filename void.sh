#!/bin/sh

#Install Dependencies
cd ~ && echo "Installing Dependencies"
sudo xbps-install syncthing ImageMagick void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree nodejs pnpm xorg xf86-video-nouveau base-devel picom git bat papirus-icon-theme ranger ueberzug ffmpeg ghostscript zip unzip gzip lxappearance libX11-devel libXinerama-devel libXft-devel xsetroot curl openssh wget bspwm herbstluftwm htop pulseaudio pamixer pavucontrol alsa-plugins-pulseaudio openjdk-jre cmus sxhkd xclip dunst mpv maim libreoffice pfetch firefox sddm qt5-graphicaleffects qt5-quickcontrols2 zsh neovim polybar jsoncpp feh zathura-pdf-mupdf hplip cups simple-scan ntfs-3g udisks2

#creating directories
echo "Creating directories"
create_default_directories() {
	mkdir -p "$HOME"/.config && ln -sf $HOME/dotfiles/user-dirs.dirs ~/.config
	sudo mkdir -p /usr/local/bin
	sudo mkdir -p /usr/share
	mkdir -p "$HOME"/Pictures
	mkdir -p "$HOME"/Documents
	mkdir -p "$HOME"/Downloads
	mkdir -p "$HOME"/Music
	mkdir -p "$HOME"/Videos
}
#void-packages
install_void_packages() {
	if
		! command -v "cd void-packages" &
		>/dev/null
	then
		echo -e "Installing void-packages"
		cd ~ && git clone https://github.com/void-linux/void-packages.git
		cd void-packages
		./xbps-src binary-bootstrap
		echo XBPS_ALLOW_RESTRICTED=yes >>etc/conf
	else
		echo -e "void-packages already installes, skipping"
	fi
}

#Install and apply my dotfiles
cd ~/dotfiles && echo "Creating symlinks"
git submodule update --init
ln -s $HOME/dotfiles/Backgrounds ~/Pictures
ln -s $HOME/dotfiles/bat ~/.config
ln -s $HOME/dotfiles/bottom ~/.config
ln -s $HOME/dotfiles/bspwm ~/.config
ln -s $HOME/dotfiles/dunst ~/.config
ln -s $HOME/dotfiles/herbstluftwm ~/.config
ln -s $HOME/dotfiles/htop ~/.config
ln -s $HOME/dotfiles/picom ~/.config
ln -s $HOME/dotfiles/polybar ~/.config
ln -s $HOME/dotfiles/ranger ~/.config
ln -s $HOME/dotfiles/rofi ~/.config
ln -s $HOME/dotfiles/sxhkd ~/.config
ln -s $HOME/dotfiles/zathura ~/.config
ln -s $HOME/dotfiles/zsh ~/.config
ln -s $HOME/dotfiles/.p10k.zsh ~
ln -s $HOME/dotfiles/.zshrc ~
sudo ln -sf $HOME/dotfiles/fonts /usr/share
sudo ln -sf $HOME/dotfiles/icons /usr/share
sudo ln -sf $HOME/dotfiles/themes /usr/share
touch ~/.histfile

#dwm
echo "installing dwm"
cd ~ && git clone https://github.com/dimsp98/dwm.git ~/.dwm
cd .dwm && sudo make clean install
cd ~
git clone https://github.com/dimsp98/slstatus.git ~/slstatus
cd slstatus && sudo make clean install
sudo touch /usr/share/xsessions/dwm.desktop
echo "[Desktop Entry]
Encoding=UTF-8
Name=Dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession" | sudo tee -a /usr/share/xsessions/dwm.desktop

#St and dmenu
cd ~/dotfiles/suckless/st && sudo make clean install
cd ~/dotfiles/suckless/dmenu && sudo make clean install

#Change shell to zsh
chsh -s /usr/bin/zsh && sudo chsh -s /usr/bin/zsh

#NVim
sudo xbps-install tree-sitter lazygit ripgrep sqlite fd yarn lldb nvm && cd ~
if command -v curl >/dev/null 2>&1; then
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/ayamir/nvimdots/HEAD/scripts/install.sh)"
else
	bash -c "$(wget -O- https://raw.githubusercontent.com/ayamir/nvimdots/HEAD/scripts/install.sh)"
fi

#Configure fonts
sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
sudo xbps-reconfigure -f fontconfig

#SDDM THEME
cd ~
sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme
sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/
echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf

#Setting up services
echo -e "Setting up servicces"
sudo ln -s /etc/sv/cupsd /var/service
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/sddm /var/service
