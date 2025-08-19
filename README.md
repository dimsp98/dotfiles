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
| Launcher        | [rofi](https://github.com/lbonn/rofi)     |
| File Manager    | [yazi](https://yazi-rs.github.io/)             |
| Notification Daemon | [dunst](https://github.com/dunst-project/dunst) | 
| Font            | [JetBrains Mono Nerd Font](https://www.nerdfonts.com/)   |
| Bar             | [Waybar](https://github.com/Alexays/Waybar)    |
| Colorscheme     | [Catppuccin Mocha](https://catppuccin.com/palette/) |
| Icons           | [Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)    |
| Dotfile Manager | [chezmoi](https://www.chezmoi.io)                     |

📷 Screenshots
---------------------------------------
<img width="1920" height="1080" alt="2025-08-17-105447_hyprshot" src="https://github.com/user-attachments/assets/830dc729-eebe-4c3f-bd59-bdaf693a64d0" />
<img width="1920" height="1080" alt="2025-08-16-182927_hyprshot" src="https://github.com/user-attachments/assets/34c80bca-f02a-4ac6-83e0-2dd0ee1a96ad" />
<img width="1920" height="1080" alt="2025-08-17-105650_hyprshot" src="https://github.com/user-attachments/assets/6dfcb40f-ee22-468d-93aa-314d1bb5a54a" />
<img width="1920" height="1080" alt="2025-08-16-151819_hyprshot" src="https://github.com/user-attachments/assets/2de1f845-0426-453f-8b7c-4525cd90b6d1" />
<img width="1920" height="1080" alt="2025-08-16-151838_hyprshot" src="https://github.com/user-attachments/assets/7820df5b-fde8-486f-bf89-19e2cc38a79f" />
<img width="1920" height="1080" alt="2025-08-16-152120_hyprshot" src="https://github.com/user-attachments/assets/2d4295d8-51be-42c5-8599-2b2ff2ab07da" />
<img width="1920" height="1080" alt="2025-08-19-221852_hyprshot" src="https://github.com/user-attachments/assets/58d8bd71-c832-4b7f-90fc-c32130afa9ff" />

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

Credits
-----------------------
 • goolord for [alpha-nvim](https://github.com/goolord/alpha-nvim)
      
 • [typecraft-dev](https://typecraft.dev/) for the Neovim config and the helpful customization tutorials
