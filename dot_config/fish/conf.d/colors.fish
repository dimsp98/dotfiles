# Catppuccin Mocha theme for fish
# Fish shell colors
set -g fish_color_autosuggestion 6c7086
set -g fish_color_cancel f38ba8
set -g fish_color_command 89b4fa
set -g fish_color_comment 7f849c
set -g fish_color_cwd f9e2af
set -g fish_color_cwd_root red
set -g fish_color_end fab387
set -g fish_color_error f38ba8
set -g fish_color_escape eba0ac
set -g fish_color_gray 6c7086
set -g fish_color_history_current --bold
set -g fish_color_host 89b4fa
set -g fish_color_host_remote a6e3a1
set -g fish_color_keyword f38ba8
set -g fish_color_normal cdd6f4
set -g fish_color_operator f5c2e7
set -g fish_color_option a6e3a1
set -g fish_color_param f2cdcd
set -g fish_color_quote a6e3a1
set -g fish_color_redirection f5c2e7
set -g fish_color_search_match --background=313244
set -g fish_color_selection --background=313244
set -g fish_color_status f38ba8
set -g fish_color_user 94e2d5
set -g fish_color_valid_path --underline

# Fish pager colors
set -g fish_pager_color_completion cdd6f4
set -g fish_pager_color_description 6c7086
set -g fish_pager_color_prefix f5c2e7
set -g fish_pager_color_progress 6c7086

# Unset pager colors (equivalent to \x1d in SETUVAR)
set -g fish_pager_color_background
set -g fish_pager_color_secondary_background
set -g fish_pager_color_secondary_completion
set -g fish_pager_color_secondary_description
set -g fish_pager_color_secondary_prefix
set -g fish_pager_color_selected_background
set -g fish_pager_color_selected_completion
set -g fish_pager_color_selected_description
set -g fish_pager_color_selected_prefix

# Pure prompt settings
set -g pure_begin_prompt_with_current_directory true
set -g pure_check_for_new_release false
set -g pure_color_at_sign pure_color_mute
set -g pure_color_aws_profile pure_color_warning
set -g pure_color_command_duration pure_color_warning
set -g pure_color_current_directory pure_color_primary
set -g pure_color_danger red
set -g pure_color_dark black
set -g pure_color_git_branch pure_color_mute
set -g pure_color_git_dirty pure_color_mute
set -g pure_color_git_stash pure_color_info
set -g pure_color_git_unpulled_commits pure_color_info
set -g pure_color_git_unpushed_commits pure_color_info
set -g pure_color_hostname pure_color_mute
set -g pure_color_info cyan
set -g pure_color_jobs pure_color_normal
set -g pure_color_k8s_context pure_color_success
set -g pure_color_k8s_namespace pure_color_primary
set -g pure_color_k8s_prefix pure_color_info
set -g pure_color_light white
set -g pure_color_mute brblack
set -g pure_color_nixdevshell_prefix pure_color_info
set -g pure_color_nixdevshell_symbol pure_color_mute
set -g pure_color_normal normal
set -g pure_color_prefix_root_prompt pure_color_danger
set -g pure_color_primary blue
set -g pure_color_prompt_on_error pure_color_danger
set -g pure_color_prompt_on_success pure_color_success
set -g pure_color_success magenta
set -g pure_color_system_time pure_color_mute
set -g pure_color_username_normal pure_color_mute
set -g pure_color_username_root pure_color_light
set -g pure_color_virtualenv pure_color_mute
set -g pure_color_warning yellow
