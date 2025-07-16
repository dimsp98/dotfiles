#!/bin/sh
#Install Dependencies
cd ~ && echo "Installing Dependencies"
sudo apt install fish bspwm rofi polybar lf sxhkdrc feh maim lxappearance papirus-icon-theme ttf-mscorefonts-installer
#creating directories
echo "Creating directories"
papirus-folders -C cyan --theme Papirus-Dark
#Install and apply my dotfiles
cd ~/dotfiles && echo "Creating symlinks"
git submodule update --init
ln -sf $HOME/dotfiles/config/* ~/.config
ln -sf $HOME/dotfiles/.zshenv ~
sudo cp -r $HOME/dotfiles/fonts/* /usr/share/fonts
sudo ln -sf $HOME/dotfiles/icons/* /usr/share/icons
sudo ln -sf $HOME/dotfiles/themes/* /usr/share/themes
#Change shell to fish
chsh -s /usr/bin/fish && sudo chsh -s /usr/bin/fish
#NVim
rustup toolchain install nightly
sudo apt install gcc tree-sitter-cli ripgrep gcc
cd ~
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

