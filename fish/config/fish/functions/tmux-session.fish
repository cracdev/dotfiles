# Create a tmux session with a standard multi-window layout
# Usage: tmux-session <session-name> <window1> <window2> ...
# First and last windows get a small bottom pane (10%)
# Middle windows get a side pane (30%) with a small bottom sub-pane (20%)
function tmux-session
    if test (count $argv) -eq 0
        echo "Usage: tmux-session <session-name> <window1> [window2] ..."
        return 1
    end

    set -l session $argv[1]
    set -l windows
    if test (count $argv) -gt 1
        set windows $argv[2..]
    else
        set windows dev shell
    end

    if tmux has-session -t "$session" 2>/dev/null
        echo "Session '$session' already exists. Attaching..."
        tmux attach-session -t "$session"
        return 0
    end

    set -l dir $PWD
    set -l total (count $windows)

    # First window: main + small bottom pane (10%)
    tmux new-session -d -s "$session" -n $windows[1] -c "$dir"
    tmux split-window -v -l "10%" -t "$session:$windows[1]" -c "$dir"

    # Middle windows: main + right pane (30%) + bottom sub-pane (20%)
    if test $total -gt 2
        for i in (seq 2 (math $total - 1))
            tmux new-window -t "$session" -n $windows[$i] -c "$dir"
            tmux split-window -h -l "30%" -t "$session:$windows[$i]" -c "$dir"
            tmux split-window -v -l "20%" -t "$session:$windows[$i].1" -c "$dir"
        end
    end

    # Last window: main + small bottom pane (if more than 1 window)
    if test $total -gt 1
        tmux new-window -t "$session" -n $windows[-1] -c "$dir"
        tmux split-window -v -l "10%" -t "$session:$windows[-1]" -c "$dir"
    end

    tmux select-window -t "$session:1"
    tmux attach-session -t "$session"
end