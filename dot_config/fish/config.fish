## Start uwsm if allowed and not already running
if uwsm check may-start; and uwsm select
    exec uwsm start default
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

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low

## Environment setup
# Apply .profile: use this to put fish compatible .profile stuff in
if test -f ~/.fish_profile
  source ~/.fish_profile
end

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
