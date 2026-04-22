# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository for a macOS development environment. It manages shell configuration (bash), tmux, vim, git, and custom scripts. The `claude-tmux/` subdirectory is within the broader `~/dotfiles` repo.

## Setup

Dotfiles are symlinked from `~/dotfiles/` to `~/` via `install/makesymlinks.sh`. The script backs up existing dotfiles to `~/dotfiles_old/` then creates symlinks (e.g., `~/.bashrc` -> `~/dotfiles/bashrc`).

Symlinked files: `bashrc`, `bash_profile`, `bash_prompt`, `functions`, `exports`, `aliases`, `dircolors`, `gitconfig`, `vimrc`, `vim`, `tmux.conf`, `tmux`.

## Architecture

- **Shell loading order**: `bashrc` sources `bash_profile` (when interactive). `bash_profile` sources `~/.{extra,bash_prompt,exports,aliases,functions}`.
- **Custom scripts**: `bin/local/scripts/` is on PATH. Contains tmux session launchers (`crac-tmux`, `new-tmux`, `cmplx-tmux`), `tmux-sessionizer` (fzf-based project switcher), `tmux-cht` (cheat sheet lookup), and utility scripts.
- **Tmux config**: `tmux.conf` is the main config (prefix remapped to `C-a`, vi mode). Theme and plugins are sourced from `~/.tmux/config/`. Plugin manager is TPM (`tmux/plugins/tpm/`).
- **Git**: Uses `hub` as git alias. Custom aliases in `gitconfig`. Default branch is `main`. Uses `diff-so-fancy` for diffs.

## Key tmux bindings (from tmux.conf)

- Prefix: `C-a` (not default `C-b`)
- `R` — reload config
- `f` — tmux-sessionizer (fzf project switcher)
- `i` — tmux-cht
- `|` / `-` — split horizontal/vertical
- `h/j/k/l` — vim-style pane navigation

## Common aliases (from aliases file)

- `tm`, `tms`, `tmsa`, `tmk`, `tmr` — tmux shortcuts
- `g`, `gs`, `gc`, `gco`, `gd` — git shortcuts (via hub)
- `k`, `kgp`, `kuc` — kubectl shortcuts
- `shr` — reload bash profile
- `df` — tmux-sessionizer
- `rm` is aliased to `trash` (trash-cli)
