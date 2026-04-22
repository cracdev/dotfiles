# Installation & Setup

## Quick Start

```bash
git clone <repo-url> ~/dotfiles
cd ~/dotfiles
./install/makesymlinks.sh
./install/bash/brew.sh
```

## makesymlinks.sh

The main installation script that:

1. **Backs up** existing dotfiles to `~/dotfiles_old/`
2. **Creates symlinks** from `~/dotfiles/` to `~/`:

| Source | Symlink |
|--------|---------|
| `~/dotfiles/bashrc` | `~/.bashrc` |
| `~/dotfiles/bash_profile` | `~/.bash_profile` |
| `~/dotfiles/bash_prompt` | `~/.bash_prompt` |
| `~/dotfiles/functions` | `~/.functions` |
| `~/dotfiles/exports` | `~/.exports` |
| `~/dotfiles/aliases` | `~/.aliases` |
| `~/dotfiles/dircolors` | `~/.dircolors` |
| `~/dotfiles/gitconfig` | `~/.gitconfig` |
| `~/dotfiles/vimrc` | `~/.vimrc` |
| `~/dotfiles/vim` | `~/.vim` |
| `~/dotfiles/tmux.conf` | `~/.tmux.conf` |
| `~/dotfiles/tmux` | `~/.tmux` |

## Homebrew Packages (brew.sh)

Installs essential development tools:

### CLI Tools
- `ack` — Code search (better grep)
- `tree` — Directory tree display
- `wget` — File downloader
- `jq` — JSON processor

### Development
- `git` — Version control
- `hub` — GitHub CLI wrapper
- `ctags` — Code tag generation
- `fzf` — Fuzzy finder
- `macvim` — Vim with macOS integration
- `reattach-to-user-namespace` — tmux clipboard fix
- `tmux` — Terminal multiplexer
- `highlight` — Syntax highlighter
- `z` — Directory jumper
- `markdown` — Markdown processor
- `diff-so-fancy` — Better git diffs

### Infrastructure
- `minikube` — Local Kubernetes

## Vim Plugins

```bash
vim +PluginInstall +qall
```

Installs 30+ plugins via Vundle (declared in `install/vim/plugins.vim`).

## Powerline Fonts

```bash
./install/bash/font.sh
```

Installs Powerline-patched fonts for vim-airline and tmux status line.

## Post-Installation

1. **Reload shell**: `source ~/.bash_profile` or `shr`
2. **Install tmux plugins**: Open tmux, press `prefix + I`
3. **Install vim plugins**: Run `vim +PluginInstall +qall`
4. **Set up `~/.extra`**: Add private config (tokens, work email, etc.)

## Private Configuration

Create `~/.extra` for machine-specific or sensitive settings:

```bash
# ~/.extra (not tracked in git)
export GITHUB_TOKEN="..."
export NPM_TOKEN="..."
export AWS_PROFILE="work"
GIT_AUTHOR_NAME="Your Name"
GIT_AUTHOR_EMAIL="you@work.com"
```

## Directory Structure After Install

```
~/
├── .bashrc          -> ~/dotfiles/bashrc
├── .bash_profile    -> ~/dotfiles/bash_profile
├── .bash_prompt     -> ~/dotfiles/bash_prompt
├── .aliases         -> ~/dotfiles/aliases
├── .functions       -> ~/dotfiles/functions
├── .gitconfig       -> ~/dotfiles/gitconfig
├── .vimrc           -> ~/dotfiles/vimrc
├── .vim/            -> ~/dotfiles/vim/
├── .tmux.conf       -> ~/dotfiles/tmux.conf
├── .tmux/           -> ~/dotfiles/tmux/
├── .extra           (local, not symlinked)
└── dotfiles/        (the repo)
```
