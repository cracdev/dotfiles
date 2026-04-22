# Custom Scripts

Located in `~/dotfiles/bin/local/scripts/` (on PATH).

## tmux-sessionizer

**FZF-based project switcher** — quickly jump between project directories as tmux sessions.

### Usage
```bash
tmux-sessionizer          # Interactive FZF selection
tmux-sessionizer ~/path   # Direct path argument
```

### Keybindings
- `prefix + f` — From tmux
- `Alt + F` — From bash
- `df` — Shell alias

### Search Paths
Searches these directories (1 level deep):
1. `~/Development/trainings`
2. `~/projects`
3. `~/`
4. `~/Development`
5. `~/Development/Nomadaz`

### Behavior
- Creates a new tmux session named after the selected directory
- If already in tmux, switches to the session (or creates it)
- If not in tmux, starts a new tmux session
- Session names are sanitized (dots replaced with underscores)

---

## tmux-cht

**Cheat sheet lookup tool** — query cht.sh from within tmux.

### Usage
```bash
tmux-cht    # Interactive selection
cht         # Shell alias
prefix + i  # From tmux
```

### How It Works
1. Presents FZF menu combining languages and commands
2. Prompts for a query
3. For **languages**: fetches `cht.sh/<language>/<query>` (spaces become `+`)
4. For **commands**: fetches `cht.sh/<command>~<query>`
5. Displays result in a tmux pane via `less`

### Supported Languages
golang, solidity, nodejs, javascript, typescript, python, bash, rust, c, cpp, php, html, css, lua, java, nix, and more.

### Supported Commands
find, man, tldr, sed, awk, tr, cp, ls, grep, xargs, rg, ps, mv, kill, lsof, less, head, tail, tar, chmod, chown, make, jq, cat, ssh, docker, git, and more.

---

## zipFiles

**Archive creator** for images and videos.

### Usage
```bash
zipFiles
```

### Options
1. Images only — creates `<name>-images.zip` (jpg, png, gif)
2. Videos only — creates `<name>-videos.zip` (mp4)
3. Both — creates both archives

---

## battery_indicator.sh

Displays battery status using heart symbols. Used in the tmux status bar.

---

## z (Directory Jumper)

**Frecency-based directory navigation** — `z` tracks your most-used directories and lets you jump to them by partial name.

### Usage
```bash
z foo       # Jump to most frecent directory matching "foo"
z foo bar   # Jump to directory matching "foo" and "bar"
```

Located at `~/dotfiles/bin/local/z/z.sh`, initialized in `bash_profile`.
