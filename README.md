A backup of my Linux config files.

🖥️ System Overview:
-------------------------------------------------------------------
| Spec            | Details                                        |
| --------------- | --------------------------------------         |
| OS              | [CachyOS](https://cachyos.org/)                |
| Desktop         | [Hyprland](https://hypr.land/)                 |
| Terminal        | [kitty](https://github.com/kovidgoyal/kitty)   |
| Shell           | [fish](https://fishshell.com)                  |
| Shell prompt    | [starship](https://starship.rs/)               |
| Editor          | [neovim](https://github.com/neovim)            |
| Launcher        | [rofi](https://github.com/davatorium/rofi)     |
| File Manager    | [yazi](https://yazi-rs.github.io/)             |
| Notification Daemon | [dunst](https://github.com/dunst-project/dunst) | 
| Font            | [Hack Nerd Font](https://www.nerdfonts.com/)   |
| Bar             | [Waybar](https://github.com/Alexays/Waybar)    |
| Colorscheme     | [Catppuccin Mocha](https://catppuccin.com/palette/) |
| Icons           | [Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)    |
| Dotfile Manager | [chezmoi](https://www.chezmoi.io)                     |

📷 Screenshots
---------------------------------------
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8bb16750-3693-45dd-be9c-eff8856f639f" />
<img width="1920" height="1080" alt="2025-07-26-184504_hyprshot" src="https://github.com/user-attachments/assets/c2b219d6-69b3-4bbe-a92b-a28b71cc69d3" />
<img width="1920" height="1080" alt="2025-07-25-201306_hyprshot" src="https://github.com/user-attachments/assets/62040a0a-ec38-484d-bebe-836f8c4b513c" />
<img width="1920" height="1080" alt="2025-07-25-201354_hyprshot" src="https://github.com/user-attachments/assets/20d5ae06-fdf9-40a2-9166-5fd675ebde1d" />
<img width="1920" height="1080" alt="2025-07-25-201236_hyprshot" src="https://github.com/user-attachments/assets/e04f861c-4956-4df0-a737-1db06fe7f3f1" />


⚙️ Install and setup
------------------------------

This repository provides an automated script to help you quickly install dependencies and setup the configuration.
To install the setup, follow these steps:

1) Ensure you have installed

       git base-devel chezmoi


2) Clone the repository using chezmoi
      
       chezmoi init https://github.com/dimsp98/dotfiles.git && chezmoi cd 

3) Run the script

       ./setup-scripts/arch-hyprland.sh

to automatically install dependencies and apply all of the included config files.

Archive
---------------
In the archive directory, I have included old config files from my previous systems, based on

 - i3
 - bspwm
 - herbstluftwm

You can also find a script to install and setup my [patched dwm config](https://github.com/dimsp98/dwm).

Credits
-----------------------
 • goolord for [alpha-nvim](https://github.com/goolord/alpha-nvim)
      
 • [typecraft-dev](https://typecraft.dev/) for the Neovim config and the helpful customization tutorials
      
 • Wallpaper: [Wallhaven](https://wallhaven.cc/w/9m1jyx)
