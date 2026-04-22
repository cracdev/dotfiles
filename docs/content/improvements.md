# Improvement Recommendations

Analysis of the dotfiles for organization, performance, maintainability, and best practices.

## Performance

### 1. Lazy-load NVM (High Impact)

NVM initialization adds 300-800ms to shell startup. Use lazy loading:

```bash
# Instead of loading NVM immediately, defer until first use
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  nvm "$@"
}
node() { nvm use default >/dev/null; command node "$@"; }
npm() { nvm use default >/dev/null; command npm "$@"; }
npx() { nvm use default >/dev/null; command npx "$@"; }
```

### 2. Conditional PATH Setup (Medium Impact)

`bash_profile` adds many directories to PATH unconditionally (MongoDB, Android SDK, Maven, PHP, etc.). Check existence first:

```bash
# Instead of always adding:
export PATH="$MONGO_PATH/bin:$PATH"

# Check first:
[ -d "$MONGO_PATH/bin" ] && export PATH="$MONGO_PATH/bin:$PATH"
```

### 3. Consolidate Tool Initialization

`rbenv init`, `pyenv init`, and Homebrew shellenv all add startup time. Only initialize what's installed and needed.

---

## Organization

### 4. Missing `exports` File

`bash_profile` sources `~/.exports` but the file isn't in the repository. Either:
- Create an `exports` file in the repo with non-sensitive defaults
- Document that `~/.extra` and `~/.exports` are for local/private config

### 5. Clean Up Deleted Scripts

Git status shows several deleted scripts (`env_path`, `nmfd`, `nmrf`, `tfname`, `tmux-cht-bad`, `zipDirs`). Commit these deletions to keep the repo clean.

### 6. Remove `scripts-old/` Directory

Legacy scripts in `bin/local/scripts-old/` should either be:
- Deleted if no longer needed
- Moved back to `scripts/` if still useful
- Archived in a separate branch if needed for reference

### 7. Consolidate Tmux Session Functions

`tmux-crac`, `tmux-cmplx`, `tmux-pgn`, and `tmux-new` share similar patterns. Refactor into a single configurable function:

```bash
tmux-session-create() {
  local name=$1; shift
  local windows=("$@")
  tmux new-session -d -s "$name" -n "${windows[0]}"
  for win in "${windows[@]:1}"; do
    tmux new-window -t "$name" -n "$win"
  done
  tmux attach -t "$name"
}

# Usage:
alias tmux-crac='tmux-session-create crac dev lab training hacking shell'
```

### 8. Theme Files Consolidation

Three theme variants (`theme.sh`, `theme-nova.sh`, `theme-nova-2.8.sh`) exist but only one is active. Remove unused themes or make theme selection configurable.

---

## Security

### 9. Review Sensitive Data Handling

- `GITHUB_TOKEN` appears to be set in `bash_profile` — move to `~/.extra` (which is gitignored)
- `testChrome()` launches Chrome with `--disable-web-security` — add a warning comment
- Git alias `cmn` (commit with `--no-verify`) should be used sparingly

### 10. Strengthen .gitignore

Add patterns for common sensitive files:

```gitignore
*.pem
*.key
.env
.env.*
credentials*
```

---

## Maintainability

### 11. Pin Tool Versions

`brew.sh` installs packages without version pinning. Consider using a `Brewfile` for reproducible installs:

```ruby
# Brewfile
brew "git"
brew "hub"
brew "fzf"
brew "tmux"
brew "diff-so-fancy"
brew "jq"
```

Then install with `brew bundle`.

### 12. Replace Deprecated Tools

| Current | Replacement | Reason |
|---------|-------------|--------|
| `hub` | `gh` (GitHub CLI) | hub is archived/unmaintained |
| `reattach-to-user-namespace` | Built-in (tmux 3.2+) | No longer needed on modern tmux |
| Vundle | vim-plug or lazy.nvim | Vundle is unmaintained |

### 13. Add Health Check Script

Create a script to verify the dotfiles environment is working:

```bash
#!/bin/bash
# bin/local/scripts/dotfiles-health
check() { command -v "$1" &>/dev/null && echo "OK: $1" || echo "MISSING: $1"; }
check git; check hub; check tmux; check fzf
check vim; check node; check diff-so-fancy
# Verify symlinks
for f in bashrc bash_profile aliases functions tmux.conf vimrc gitconfig; do
  [ -L "$HOME/.$f" ] && echo "LINKED: $f" || echo "BROKEN: $f"
done
```

### 14. Document the `~/.extra` Convention

Make it clear that private/machine-specific config goes in `~/.extra`:

```bash
# In bash_profile, add a comment:
# ~/.extra is for private config not committed to the repo.
# Use it for: API tokens, machine-specific PATH, work email, etc.
```

---

## Best Practices

### 15. Use `$HOME` Instead of `~` in Scripts

Tilde expansion doesn't work in all contexts (e.g., inside quotes). Prefer `$HOME` for reliability.

### 16. Quote Variables Consistently

Some PATH manipulations and script variables are unquoted. Add quotes to prevent word-splitting issues:

```bash
# Instead of:
cd $selected
# Use:
cd "$selected"
```

### 17. Add ShellCheck Compliance

Run `shellcheck` on all bash scripts and fix warnings. This catches common issues like unquoted variables, useless uses of cat, and POSIX compatibility problems.

### 18. Consider XDG Base Directory Spec

Modern tools support XDG directories. While not critical, organizing config into `~/.config/` improves clarity:

```
~/.config/
├── git/config      (instead of ~/.gitconfig)
├── tmux/tmux.conf  (instead of ~/.tmux.conf)
└── vim/vimrc       (instead of ~/.vimrc)
```

---

## Priority Summary

| Priority | Item | Impact |
|----------|------|--------|
| High | Lazy-load NVM | Shell startup 2-3x faster |
| High | Replace `hub` with `gh` | hub is unmaintained |
| High | Clean up deleted files | Repo hygiene |
| Medium | Conditional PATH setup | Faster startup |
| Medium | Consolidate session functions | Less code duplication |
| Medium | Move secrets to `~/.extra` | Security |
| Medium | Use Brewfile | Reproducible setup |
| Low | Replace Vundle | Future-proofing |
| Low | XDG directories | Modern convention |
| Low | Health check script | Debugging aid |
