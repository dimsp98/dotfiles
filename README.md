A backup of my Linux config files.

🖥️ System Overview:
-------------------------------------------------------------------
| Spec            | Details                                        |
| --------------- | --------------------------------------         |
| OS              | [CachyOS](https://cachyos.org/)                |
| Desktop         | [Hyprland](https://hypr.land/)                 |
| Terminal        | [kitty](https://github.com/kovidgoyal/kitty)   |
| Shell           | [fish](https://fishshell.com)                  |
| Editor          | [neovim](https://github.com/neovim)            |
| Launcher        | [rofi]([https://github.com/SimplyCEO/wofi?tab=readme-ov-file](https://github.com/lbonn/rofi)) |
| File Manager    | [lf](https://github.com/gokcehan/lf)  with kitty previews    |
| Notification Daemon | [dunst](https://github.com/dunst-project/dunst)
| Font            | [Hack Nerd Font](https://www.nerdfonts.com/)   |
| Bar             | [Waybar](https://github.com/Alexays/Waybar)    |
| Colorscheme     | [Catppuccin Mocha](https://catppuccin.com/palette/) |
| Icons           | [Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)    |
| Dotfile Manager | [chezmoi](https://www.chezmoi.io)                     |

📷 Screenshots
---------------------------------------
<img width="1920" height="1080" alt="2025-07-21-205353_hyprshot" src="https://github.com/user-attachments/assets/d6280896-889b-4f30-8313-2cfe582f800d" />
<img width="1920" height="1080" alt="2025-07-21-205948_hyprshot" src="https://github.com/user-attachments/assets/8da60edb-d53e-494e-bfdc-dff262259d74" />
<img width="1920" height="1080" alt="2025-07-21-205221_hyprshot" src="https://github.com/user-attachments/assets/662c4e50-c08d-4e23-b0d7-0b23ed0f7705" />
<img width="1920" height="1080" alt="2025-07-21-205235_hyprshot" src="https://github.com/user-attachments/assets/cfb8dddf-5acf-4e60-973c-b58883f39cdd" />
<img width="1920" height="1080" alt="rofi_hyprshot" src="https://github.com/user-attachments/assets/f9da6bc8-0ff2-45e1-9f57-548999d4f987" />
<img width="1920" height="1080" alt="2025-07-23-210858_hyprshot" src="https://github.com/user-attachments/assets/b73b0440-0eb5-4f4b-8425-b79e815afd20" />
<img width="1920" height="1080" alt="2025-07-19-175235_hyprshot" src="https://github.com/user-attachments/assets/6973de93-839e-4341-9215-03888ca682e4" />
<img width="1920" height="1080" alt="2025-07-19-185959_hyprshot" src="https://github.com/user-attachments/assets/82a971e9-a193-4e81-8135-f68446773db5" />

⚙️ Install and setup
------------------------------
Prerequisites:
-----
Ensure you have installed

    git base-devel chezmoi

This repository provides automated scripts to help you quickly install dependencies and setup the configuration.
To install the setup, just clone this repository using the following command 
      
    chezmoi init https://github.com/dimsp98/dotfiles.git 

and run one of the scripts.
Also included are archived config files from my previous systems (based on i3, bspwm and herbstluftwm), as well as a script to install and setup my [patched dwm config](https://github.com/dimsp98/dwm).

Credits
-----------------------
 • goolord for [alpha-nvim](https://github.com/goolord/alpha-nvim)
      
 • [typecraft-dev](https://typecraft.dev/) for the nvim config and the helpful Neovim tutorials
      
 • Wallpaper: https://wallhaven.cc/w/9m1jyx
