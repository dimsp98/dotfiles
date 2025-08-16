A backup of my Linux config files.

🖥️ System Overview:
-------------------------------------------------------------------
| Spec            | Details                                        |
| --------------- | --------------------------------------         |
| OS              | [CachyOS](https://cachyos.org/)                |
| Desktop         | [hyprland](https://hypr.land/)                 |
| Terminal        | [foot](https://codeberg.org/dnkl/foot)      |
| Shell           | [fish](https://fishshell.com)                  |
| Shell prompt    | [starship](https://starship.rs/)               |
| Editor          | [neovim](https://github.com/neovim)            |
| Launcher        | [rofi](https://github.com/davatorium/rofi)     |
| File Manager    | [yazi](https://yazi-rs.github.io/)             |
| Notification Daemon | [dunst](https://github.com/dunst-project/dunst) | 
| Font            | [JetBrains Mono Nerd Font](https://www.nerdfonts.com/)   |
| Bar             | [Waybar](https://github.com/Alexays/Waybar)    |
| Colorscheme     | [Catppuccin Mocha](https://catppuccin.com/palette/) |
| Icons           | [Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)    |
| Dotfile Manager | [chezmoi](https://www.chezmoi.io)                     |

📷 Screenshots
---------------------------------------
<img width="1920" height="1080" alt="2025-08-15-210710_hyprshot" src="https://github.com/user-attachments/assets/d3a77eb6-d55b-4995-b45c-530a03451983" />
<img width="1920" height="1080" alt="2025-08-15-211317_hyprshot" src="https://github.com/user-attachments/assets/43f2b229-6d92-4901-97e2-ad5afad785e8" />
<img width="1920" height="1080" alt="2025-08-15-211431_hyprshot" src="https://github.com/user-attachments/assets/2c25c3b5-92ca-4f63-a39e-3666c06e6c79" />
<img width="1920" height="1080" alt="2025-08-16-115230_hyprshot" src="https://github.com/user-attachments/assets/84ae67d9-f1e2-4a4e-b3cc-23e462a2b9e5" />
<img width="1920" height="1080" alt="2025-08-16-115253_hyprshot" src="https://github.com/user-attachments/assets/95c8b865-4853-4d41-a5d9-d5974d620b05" />

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
