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
<img width="1920" height="1080" alt="2025-08-21-182635_hyprshot" src="https://github.com/user-attachments/assets/f62f7c9c-fbff-4f5a-b563-2558c0774dd5" />
<img width="1920" height="1080" alt="2025-08-21-182923_hyprshot" src="https://github.com/user-attachments/assets/ffa76e6d-09c3-4352-be6e-b25219f08eb5" />
<img width="1920" height="1080" alt="2025-08-21-182958_hyprshot" src="https://github.com/user-attachments/assets/56345fdb-c05f-4f98-93c9-eb117c44d1a7" />
<img width="1920" height="1080" alt="2025-08-21-183130_hyprshot" src="https://github.com/user-attachments/assets/95274199-bede-4df5-9360-89ddd0a1d06d" />
<img width="1920" height="1080" alt="2025-08-21-183337_hyprshot" src="https://github.com/user-attachments/assets/afe4f662-3f61-4d20-818a-36c13ce8011d" />
<img width="1920" height="1080" alt="2025-08-21-183519_hyprshot" src="https://github.com/user-attachments/assets/4ba950ed-186c-467b-85d9-101562c5b8cc" />
<img width="1920" height="1080" alt="2025-08-19-221852_hyprshot" src="https://github.com/user-attachments/assets/7ca36cd5-a928-4b20-96f1-2b4b85ef2c9b" />


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
