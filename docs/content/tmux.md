# Tmux Configuration

Main config: `~/dotfiles/tmux.conf` | Prefix: `Ctrl-a`

## General Settings

| Setting | Value | Purpose |
|---------|-------|---------|
| Default shell | `reattach-to-user-namespace -l bash` | macOS clipboard integration |
| Terminal | `xterm-256color` | 256-color support |
| Base index | `1` | Human-friendly window/pane numbering |
| Escape time | `0` | No delay after escape key |
| History limit | `10000` | Scrollback buffer |
| Mouse | `on` | Mouse support enabled |
| Mode keys | `vi` | Vi-style copy mode |
| Aggressive resize | `on` | Better multi-client support |
| Renumber windows | `on` | Auto-renumber on close |

## Key Bindings

### Window Management

| Binding | Action |
|---------|--------|
| `prefix + N` | New window (same directory) |
| `prefix + \|` | Split horizontal |
| `prefix + -` | Split vertical |
| `prefix + C-h` | Previous window |
| `prefix + C-l` | Next window |
| `prefix + R` | Reload tmux config |

### Pane Navigation (vim-style)

| Binding | Action |
|---------|--------|
| `prefix + h` | Select pane left |
| `prefix + j` | Select pane down |
| `prefix + k` | Select pane up |
| `prefix + l` | Select pane right |
| `prefix + H` | Resize pane left (repeatable) |
| `prefix + J` | Resize pane down (repeatable) |
| `prefix + K` | Resize pane up (repeatable) |
| `prefix + L` | Resize pane right (repeatable) |

### Copy Mode

| Binding | Action |
|---------|--------|
| `Escape` | Enter copy mode |
| `v` | Begin selection (in copy mode) |
| `y` | Yank selection (in copy mode) |
| `prefix + p` | Paste buffer |
| `prefix + C-c` | Copy to system clipboard |
| `prefix + C-v` | Paste from system clipboard |

### Custom Tools

| Binding | Action |
|---------|--------|
| `prefix + f` | tmux-sessionizer (FZF project switcher) |
| `prefix + i` | tmux-cht (cheat sheet lookup) |
| `prefix + C` | Browse ~/Development |
| `prefix + P` | Browse ~/projects |
| `prefix + D` | Open TODO.md in vim |
| `prefix + y` | Toggle pane synchronization |

## Theme (Nova)

Active theme: `~/.tmux/config/theme-nova.sh`

### Colors

| Element | Color |
|---------|-------|
| Active text | brightcyan |
| Inactive text | colour249 |
| Feature/host | red |
| Active border | brightwhite |

### Status Bar

- **Left**: Session name with icon (🙊)
- **Right**: Time, date, hostname
- **Windows**: Active highlighted in brightcyan, inactive in grey
- **Separators**: Unicode arrows (◀ ❮ ▶ ❯)

## Plugins (TPM)

Managed via Tmux Plugin Manager (`~/.tmux/plugins/tpm/`).

| Plugin | Purpose |
|--------|---------|
| `tmux-plugins/tpm` | Plugin manager |
| `tmux-plugins/tmux-sensible` | Sensible default settings |
| `tmux-plugins/tmux-copycat` | Enhanced search and copy |
| `tmux-plugins/tmux-resurrect` | Save/restore sessions across restarts |

### Plugin Installation

```bash
# Install plugins (after adding to config)
prefix + I

# Update plugins
prefix + U
```

## Pre-configured Sessions

Defined as functions in `~/dotfiles/functions`:

### tmux-crac (Personal Development)

| Window | Purpose |
|--------|---------|
| dev | Main development |
| lab | Experimentation |
| training | Learning |
| hacking | Side projects |
| shell | General terminal |

### tmux-cmplx (Work)

| Window | Purpose |
|--------|---------|
| develop | Main development |
| campaigns | Campaign work |
| internal | Internal tools |
| sanity | Testing |
| shell | General terminal |

### tmux-pgn (Project)

| Window | Purpose |
|--------|---------|
| shell | General terminal |
| iqgeo | IQGeo work |
| develop | Development |

## Directory Structure

```
tmux/
├── config/
│   ├── theme-nova.sh       Active theme
│   ├── theme.sh            Alternative theme
│   ├── theme-nova-2.8.sh   Legacy Nova variant
│   ├── plugins.sh          Plugin loading
│   ├── dev.tmux.conf       Dev layout template
│   └── human.sh            Utility
├── cht/
│   ├── tmux-cht-languages  Language list for cheat sheets
│   └── tmux-cht-command    Command list for cheat sheets
├── plugins/
│   ├── tpm/                Plugin manager
│   ├── tmux-sensible/      Sensible defaults
│   ├── tmux-copycat/       Enhanced copy
│   └── tmux-resurrect/     Session persistence
└── resurrect/              Saved session files
```
