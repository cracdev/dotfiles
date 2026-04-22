# Shell Configuration

## Loading Order

1. **`bashrc`** — Entry point for interactive shells. Sources `bash_profile` when `$PS1` is set.
2. **`bash_profile`** — Main hub. Sources `~/.{extra,bash_prompt,exports,aliases,functions}`.
3. Individual files load in order: extra, bash_prompt, exports, aliases, functions.

## bashrc

The minimal entry point that bootstraps the shell:

- Sources `bash_profile` for interactive sessions
- Configures npm packages path (`$NPM_PACKAGES`)
- Loads NVM (Node Version Manager)
- Sources `~/.local/bin/env`
- Adds Heroku, Yarn, Bun, and RVM to PATH

## bash_profile

The main configuration hub that sets up the development environment:

### PATH Configuration

Added to PATH (in order):
- `/usr/local/opt/apr/bin` — APR libraries
- `/usr/local/git/bin` — Git
- `/usr/local/opt/coreutils/libexec/gnubin` — GNU coreutils
- `$MONGO_PATH/bin` — MongoDB
- `~/go/bin` — Go binaries
- `~/dotfiles/bin/local/scripts/` — Custom scripts
- `/usr/local/opt/ruby/bin` — Ruby
- `~/.bun/bin` — Bun runtime
- `/opt/homebrew/opt/postgresql@16/bin` — PostgreSQL
- `/opt/homebrew/opt/mysql-client/bin` — MySQL

### Environment Variables

| Variable | Value | Purpose |
|----------|-------|---------|
| `LC_ALL` | `en_US.UTF-8` | Locale |
| `LANG` | `en_US` | Language |
| `EVENT_NOKQUEUE` | `1` | tmux compatibility fix |
| `JAVA_HOME` | Zulu JDK 17 | Java runtime |
| `ANDROID_HOME` | `$HOME/Library/Android/sdk` | Android SDK |
| `MAVEN_HOME` | `/usr/local/Cellar/maven/3.8.5` | Maven build tool |
| `NVM_DIR` | `$HOME/.nvm` | Node version manager |
| `BASH_SILENCE_DEPRECATION_WARNING` | `1` | Suppress macOS zsh warning |

### Shell Options

- **Case-insensitive globbing** — `shopt -s nocaseglob`
- **SSH tab completion** — Parses `~/.ssh/config` for hostnames
- **z initialization** — Fast directory jumping via `~/dotfiles/bin/local/z/z.sh`

### Tool Initialization

- `rbenv init` — Ruby version manager
- `pyenv init` — Python version manager (commented out)
- Homebrew shellenv setup

## bash_prompt

A git-aware colored prompt based on @gf3's Sexy Bash Prompt:

### Colors
- **Magenta** — Username
- **Orange** — Hostname
- **Green** — Working directory
- **Purple** — Git branch
- **White** — Default text

### Features
- Detects 256-color terminal support
- Shows git branch name with dirty indicator (`*`)
- Conditional username/host display (hidden for default users: `crac`, `andres.castro`)
- iTerm integration (tab title shows current directory)
- Prompt symbol: `⚡`

### Format
```
[user@host] ~/directory (git-branch*)
⚡
```

## exports

Environment exports (not tracked in repo — use `~/.extra` for secrets).

## Functions

25+ utility functions organized by purpose:

### Navigation & Directory

| Function | Usage | Purpose |
|----------|-------|---------|
| `md` | `md dirname` | Create directory and cd into it |
| `fcd` | `fcd` | FZF-based fuzzy directory finder |
| `cdf` | `cdf` | cd to Finder's frontmost window |
| `pmv` | `pmv pattern dir` | Move files matching pattern |

### File Operations

| Function | Usage | Purpose |
|----------|-------|---------|
| `bkf` | `bkf file` | Backup file with `.bak.YYYYMMDD-HHMMSS` suffix |
| `cp_p` | `cp_p src dst` | Copy with progress bar (rsync) |
| `extract` | `extract archive` | Universal extractor (tar, zip, gz, bz2, rar, 7z) |
| `dsdel` | `dsdel` | Remove `.DS_Store` files from git |

### Git

| Function | Usage | Purpose |
|----------|-------|---------|
| `gf` | `gf` | Git log with clickable GitHub URLs (iTerm) |
| `gitexport` | `gitexport dir` | Export repo without `.git` folder |

### Search

| Function | Usage | Purpose |
|----------|-------|---------|
| `match_filename` | `match_filename pattern` | Find files by name |
| `match_contents` | `match_contents pattern` | Grep file contents |

### Development

| Function | Usage | Purpose |
|----------|-------|---------|
| `code` | `code file` | Open VS Code |
| `nmc` | `nmc` | Find and count node_modules |
| `nms` | `nms` | Search inside node_modules |
| `testChrome` | `testChrome` | Launch Chrome with disabled security |
| `gz` | `gz file` | Show gzip compression ratio |

### Tmux Sessions

| Function | Usage | Purpose |
|----------|-------|---------|
| `tmux-session` | Internal | Base session creator with multi-window layout |
| `tmux-crac` | `tmux-crac` | Session: dev, lab, training, hacking, shell |
| `tmux-cmplx` | `tmux-cmplx` | Session: develop, campaigns, internal, sanity, shell |
| `tmux-pgn` | `tmux-pgn` | Session: shell, iqgeo, develop |
| `tmux-new` | `tmux-new name` | Generic new session |
| `claude` | `claude` | Start Claude Code in a tmux session |

### Encoding Utilities

| Function | Usage | Purpose |
|----------|-------|---------|
| `escape` | `escape str` | UTF-8 encode characters |
| `unidecode` | `unidecode str` | Decode unicode escape sequences |
| `digga` | `digga domain` | Full DNS lookup |
