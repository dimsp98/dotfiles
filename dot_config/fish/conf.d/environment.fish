set -g fish_greeting

# Default programs 
set -gx TERMINAL foot 
set -gx EDITOR nvim 
set -x STARSHIP_CONFIG $HOME/.config/starship.toml

# Format man pages
set -x MANROFFOPT "-c"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Directories
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_RUNTIME_DIR /run/user/(id -u)

# Set settings for https://github.com/franciscolourenco/done 
set -U __done_min_cmd_duration 5000
set -U __done_notification_urgency_level low
set -U __done_notification_urgency_level_failure normal

# Add ~/.local/bin to PATH
if test -d ~/.local/bin
    if not contains -- ~/.local/bin $PATH
        set -p PATH ~/.local/bin
    end
end
