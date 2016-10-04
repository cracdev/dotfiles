#### COLOUR

tm_icon="🙊"
tm_color_active=colour51
tm_color_inactive=colour241
tm_color_feature=colour198
tm_color_music=colour41
tm_active_border_color=colour51

# separators
tm_separator_left_bold="◀"
tm_separator_left_thin="❮"
tm_separator_right_bold="▶"
tm_separator_right_thin="❯"

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5


# default statusbar colors
# set-option -g status-bg colour0
# set-option -g status-fg $tm_color_active
# set-option -g status-bg default
# set-option -g status-attr default
set -g status-style 'fg=brightblack,bg=black'

# default window title colors
set-window-option -g window-status-fg $tm_color_inactive
set-window-option -g window-status-bg default
set -g window-status-format "#I #W"

# active window title colors
set-window-option -g window-status-current-fg $tm_color_active
set-window-option -g window-status-current-bg default
set-window-option -g  window-status-current-format "#[bold]#I #W"

# pane border
# set-option -g pane-border-fg $tm_color_inactive
# set-option -g pane-active-border-fg $tm_active_border_color
set -g pane-border-style 'fg=brightblack,bg=black'
set -g pane-active-border-style 'fg=brightwhite,bg=black'

# message text
# set-option -g message-bg default
# set-option -g message-fg $tm_color_active
set -g message-style 'fg=cyan, bg=black'

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
# set-window-option -g clock-mode-colour $tm_color_active
set -g clock-mode-colour cyan

#tm_tunes="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/tunes.scpt)"
#tm_battery="#(~/.dotfiles/bin/battery_indicator.sh)"

tm_date="#[fg=$tm_color_inactive] %R %d %b"
tm_host="#[fg=$tm_color_feature,bold]#h"
tm_session_name="#[fg=$tm_color_feature,bold]$tm_icon #S"

set -g status-left $tm_session_name' '
set -g status-right $tm_date' '$tm_host

# These are the rules you need to use True Color and Nova terminal ANSI colors
# If you want Tmux to use the Nova color scheme, ensure you have installed a Nova plugin for your terminal first
set -g default-terminal "xterm-256color"
set -ga terminal-overrides ",xterm-256color:Tc"
