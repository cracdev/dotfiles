# Git Configuration

Config file: `~/dotfiles/gitconfig`

## User Settings

| Setting | Value |
|---------|-------|
| Name | `cracdev` |
| Email | `andres.ca@gmail.com` |
| Default branch | `main` |
| Pager | `diff-so-fancy \| less --tabs=4 -RFX` |
| Global gitignore | `~/.gitignore_global` |

## Git Aliases

### Everyday Commands

| Alias | Command | Purpose |
|-------|---------|---------|
| `c` | `commit` | Commit |
| `up` | `pull` | Pull |
| `p` | `push` | Push |
| `co` | `checkout` | Checkout |
| `s` | `status -s` | Short status |
| `su` | `status -u` | Status with untracked |
| `b` | `branch` | Branch |
| `br` | `branch -a` | All branches |
| `m` | `merge` | Merge |
| `r` | `revert` | Revert |
| `df` | `diff --color --color-words --abbrev` | Colored word diff |

### Commit Shortcuts

| Alias | Command | Purpose |
|-------|---------|---------|
| `cam` | `commit -a -m` | Commit all with message |
| `cmn` | `commit -m -n` | Commit, skip hooks |

### Remote Operations

| Alias | Command | Purpose |
|-------|---------|---------|
| `upo` | `pull origin` | Pull from origin |
| `por` | `push origin` | Push to origin |
| `pub` | `push -u origin` | Push and set upstream |
| `rup` | `pull --rebase` | Pull with rebase |
| `rupo` | `pull --rebase origin` | Pull rebase from origin |
| `pur` | `pull --rebase` | Pull rebase (alias) |
| `rv` | `remote -v` | List remotes |
| `phk` | `push heroku` | Push to Heroku |

### Branch Management

| Alias | Command | Purpose |
|-------|---------|---------|
| `dev` | `checkout develop` | Switch to develop |
| `db` | `branch -D` | Force delete branch |
| `rbi` | `rebase -i` | Interactive rebase |

### Stash

| Alias | Command | Purpose |
|-------|---------|---------|
| `stc` | `stash list` | List stashes |
| `st` | `stash` | Stash changes |
| `sta` | `stash apply` | Apply stash |
| `std` | `stash drop` | Drop stash |

### Log Formats

| Alias | Format | Output |
|-------|--------|--------|
| `lg` | `log --graph --all --pretty=format:...` | Full graph with colors |
| `lg2` | Same with `%ai` date | Graph with ISO dates |
| `lol` | `log --pretty=oneline --abbrev-commit --graph --decorate` | One-line graph |
| `lod` | `log --graph --pretty=format:...` | Decorated graph |
| `lp` | `log -p` | Log with patches |

### Tags

| Alias | Command | Purpose |
|-------|---------|---------|
| `lsrt` | `for-each-ref --sort=... refs/tags` | Tags sorted by date |
| `ptg` | `push --tags` | Push all tags |
| `rmlt` | `tag -d $(git tag)` | Remove all local tags |

### Dangerous / Reset

| Alias | Command | Purpose |
|-------|---------|---------|
| `scrub` | `reset --hard && clean -fd` | Hard reset + clean |
| `rh` | `reset --hard` | Hard reset |
| `gc-ap` | `gc --aggressive --prune` | Aggressive garbage collect |
| `ignorechanges` | `update-index --assume-unchanged` | Ignore local changes |
| `noticechanges` | `update-index --no-assume-unchanged` | Track changes again |

## Color Configuration

### Branches
- Current: yellow
- Local: yellow
- Remote: green

### Diffs (diff-so-fancy)
- Old (removed): red bold
- New (added): green bold
- Meta: yellow bold
- Frag: magenta bold
- Commit: yellow bold

### Status
- Added: yellow
- Changed: green
- Untracked: cyan

## Hub Integration

Git is aliased to `hub` in the shell (`g='hub'`), providing:
- `g pull-request` — Create GitHub pull requests from CLI
- `g browse` — Open repo in browser
- `g fork` — Fork a repository
- All standard git commands pass through
