# Overview

This is a personal dotfiles repository for a **macOS development environment**. It manages shell configuration (bash), tmux, vim, git, and custom scripts — all symlinked from `~/dotfiles/` into the home directory.

## What's Included

| Component | Purpose |
|-----------|---------|
| **Shell** | Bash configuration with custom prompt, 164+ aliases, 25+ functions |
| **Tmux** | Terminal multiplexer with Nova theme, vi-mode, session management |
| **Vim** | Editor with 30+ plugins, Dracula theme, extensive key mappings |
| **Git** | 50+ aliases, hub integration, diff-so-fancy |
| **Scripts** | tmux-sessionizer, cheat sheet lookup, utility scripts |
| **Install** | Automated symlink setup and Homebrew package installation |

## Architecture

```
bashrc (entry point for interactive shells)
  └── bash_profile (main configuration hub)
      ├── ~/.extra        (private/local overrides, not in repo)
      ├── ~/.bash_prompt  (git-aware colored prompt)
      ├── ~/.exports      (environment variables, not in repo)
      ├── ~/.aliases      (164+ command shortcuts)
      └── ~/.functions    (25+ utility functions)
```

## Installation

```bash
cd ~/dotfiles
./install/makesymlinks.sh
```

This backs up existing dotfiles to `~/dotfiles_old/` and creates symlinks:

`bashrc`, `bash_profile`, `bash_prompt`, `functions`, `exports`, `aliases`, `dircolors`, `gitconfig`, `vimrc`, `vim`, `tmux.conf`, `tmux`

## Directory Structure

```
~/dotfiles/
├── bashrc, bash_profile, bash_prompt    Shell config
├── aliases, functions                   Commands & utilities
├── gitconfig                            Git configuration
├── vimrc                                Vim configuration
├── tmux.conf                            Tmux configuration
├── dircolors, ctags                     Tool configs
├── bin/local/
│   ├── scripts/                         Custom scripts (on PATH)
│   ├── scripts-old/                     Archived scripts
│   ├── z/                               z directory jumper
│   └── battery_indicator.sh             Tmux battery display
├── tmux/
│   ├── config/                          Themes & plugin configs
│   ├── plugins/                         TPM-managed plugins
│   ├── cht/                             Cheat sheet data
│   └── resurrect/                       Session persistence
├── vim/bundle/                          Vundle-managed plugins
├── install/                             Setup scripts
├── vs-code/                             VS Code settings
├── iterm/                               iTerm2 color schemes
├── editors/                             Archived editor configs
└── personal/                            Personal notes
```
