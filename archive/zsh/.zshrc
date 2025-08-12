# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dimitris/.zshrc'
autoload -Uz compinit
compinit

# zsh-sybntax-highlighting theme 
source ~/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
# Source plugins
source ~/.config/zsh/.profile
source ~/.zshenv
source ~/.config/zsh/sudo.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

eval "$(starship init zsh)"
