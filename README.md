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
<img width="1920" height="1080" alt="2025-09-02-202343_hyprshot" src="https://github.com/user-attachments/assets/a02392d5-fc43-4a11-88ff-8e172a1f60aa" />
<img width="1920" height="1080" alt="2025-09-02-202520_hyprshot" src="https://github.com/user-attachments/assets/a913d9cc-f855-46a5-9a00-da2802a594ce" />
<img width="1920" height="1080" alt="2025-09-02-203158_hyprshot" src="https://github.com/user-attachments/assets/476ea687-e552-4557-a6dc-8bc3b30fc799" />
<img width="1920" height="1080" alt="2025-09-02-203117_hyprshot" src="https://github.com/user-attachments/assets/e11094a8-ca16-4c22-bd5c-00449918be0a" />
<img width="1920" height="1080" alt="2025-09-02-203108_hyprshot" src="https://github.com/user-attachments/assets/303eaae2-1dff-4f74-b246-edb6050067e1" />
<img width="1920" height="1080" alt="2025-09-02-203117_hyprshot" src="https://github.com/user-attachments/assets/55fe968c-0a52-4654-8466-b1a1c14aada5" />
<img width="1920" height="1080" alt="2025-09-02-203902_hyprshot" src="https://github.com/user-attachments/assets/ef4ce2ea-7d24-4ca7-8520-408be3cc3188" />

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
