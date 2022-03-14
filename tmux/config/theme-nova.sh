#### COLOUR

tm_icon="🙊 "
tm_color_active=cyan
tm_color_inactive=brightcyan
tm_color_feature=red
tm_color_music=colour41
tm_active_border_color=brightwhite

# separators
tm_separator_left_bold="◀"
tm_separator_left_thin="❮"
tm_separator_right_bold="▶"
tm_separator_right_thin="❯"

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5


# default statusbar colors
set-option -g status-bg black
set-option -g status-fg brightblack
set-option -g status-bg default
set-option -g status-style default

# default window title colors
set-window-option -g window-status-style bg=default,fg=$tm_color_inactive
set -g window-status-format "#I #W"

# active window title colors
set-window-option -g window-status-current-style bg=default,fg=$tm_color_active
set-window-option -g window-status-current-format "#[bold]#I #W"

# pane border
set-option -g pane-border-style fg=colour51
set-option -g pane-active-border-style fg=$tm_active_border_color

# message text
set-option -g message-style bg=black,fg=$tm_color_active

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
set-window-option -g clock-mode-colour $tm_color_active

#tm_tunes="#[fg=$tm_color_music]#(osascript ~/.dotfiles/applescripts/tunes.scpt)"
tm_battery="#(~/dotfiles/bin/battery_indicator.sh)"

tm_date="#[fg=$tm_color_inactive] %R %d %b"
#tm_host="#[fg=$tm_color_feature,bold]#h"
tm_host="#[fg=$tm_color_feature,bold]Silverback"

tm_bat="#[fg=$tm_color_feature,bold]Battery"

tm_session_name="#[fg=$tm_color_feature,bold]$tm_icon #S"

set -g status-left $tm_session_name' '
set -g status-right $tm_date' '$tm_bat' '$tm_battery
