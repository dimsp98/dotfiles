set -g fish_greeting
## Start uwsm if allowed and not already running
if status is-login
    if command -q uwsm
        if uwsm check may-start; and uwsm select
            exec uwsm start default
        end
    end
end

# Starship
starship init fish | source

## Source from conf.d before our fish config
source $HOME/.config/fish/conf.d/done.fish

# Source aliases
source $HOME/.config/fish/aliases.fish

# Format man pages
set -x MANROFFOPT "-c"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Default programs
set -Ux TERMINAL foot
set -gx EDITOR nvim
set -x STARSHIP_CONFIG $HOME/.config/starship.toml

# Directories
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_RUNTIME_DIR /run/user/(id -u)

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low

# Add ~/.local/bin to PATH
if test -d ~/.local/bin
    if not contains -- ~/.local/bin $PATH
        set -p PATH ~/.local/bin
    end
end

## Keybindings for history functions
if [ "$fish_key_bindings" = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

zoxide init fish | source
