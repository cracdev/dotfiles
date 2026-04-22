###  Plugins

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-copycat'
set -g @plugin 'tmux-plugins/tmux-resurrect'

# Theme Kanagawa
set -g @plugin 'Nybkox/tmux-kanagawa'
set -g @kanagawa-theme 'dragon'
set -g @kanagawa-plugins "git cpu-usage ram-usage"
set -g @kanagawa-ignore-window-colors true

# Other examples:

# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'
# 
# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'

#Init the resurrect
run-shell '~/.tmux/plugins/tmux-resurrect/resurrect.tmux'
