# Vim Configuration

Config file: `~/dotfiles/vimrc` | Plugin manager: Vundle | Theme: Dracula

## General Settings

| Setting | Value |
|---------|-------|
| Colorscheme | Dracula (fallback: badwolf) |
| Tab width | 4 spaces |
| Expand tabs | Yes |
| Line numbers | Relative (with toggle) |
| Search | Case-insensitive, smart case |
| Folding | Syntax-based |
| Backups | Disabled |
| Leader key | `,` (comma) |
| Powerline | Enabled (fancy symbols) |

## Key Mappings

### File & Buffer Management

| Mapping | Mode | Action |
|---------|------|--------|
| `<C-Z>` | All | Save file |
| `<leader>e` | Normal | Quit current buffer |
| `<leader>E` | Normal | Quit all |
| `<leader>]` | Normal | Next buffer |
| `<leader>[` | Normal | Previous buffer |
| `<leader>ls` | Normal | List buffers |
| `<leader>nt` | Normal | New tab |

### Navigation & Search

| Mapping | Mode | Action |
|---------|------|--------|
| `<leader>t` | Normal | CtrlP fuzzy find |
| `<leader>r` | Normal | CtrlP buffer search |
| `<F5>` | Normal | Toggle NERDTree |
| `<leader>k` | Normal | Toggle NERDTree |
| `<leader>y` | Normal | NERDTree find current file |
| `<leader>g` | Normal | Go to definition |
| `<leader>qs` | Normal | Clear search highlight |
| `<leader>*` | Normal | Search & replace word under cursor |

### Editing

| Mapping | Mode | Action |
|---------|------|--------|
| `jk` | Insert | Escape |
| `Y` | Normal | Yank to end of line |
| `<leader>,` | Normal | Insert newline |
| `<leader>]` | Visual | Indent block |
| `<leader>[` | Visual | Unindent block |
| `<leader>ss` | Normal | Strip trailing whitespace |
| `<leader>c` | Normal | Toggle invisible characters |

### Configuration

| Mapping | Mode | Action |
|---------|------|--------|
| `<leader>v` | Normal | Open vimrc |
| `<leader>V` | Normal | Open vimrc in new tab |
| `<leader><CR>` | Normal | Source vimrc |
| `<leader>l` | Normal | Toggle line number mode |
| `<leader>p` | Normal | Toggle paste mode |

### Language-Specific

| Mapping | Mode | Action |
|---------|------|--------|
| `<leader>b` | Normal | Insert Python breakpoint |

## Plugins

### Utilities

| Plugin | Purpose |
|--------|---------|
| **ctrlp.vim** | Fuzzy file/buffer finder |
| **NERDTree** | File tree explorer |
| **Syntastic** | Syntax checking/linting |
| **Vimux** | Tmux integration |
| **vim-fugitive** | Git commands (`:Gblame`, `:Gdiff`, etc.) |
| **vim-commentary** | Toggle comments (`gc`) |
| **vim-vinegar** | Enhanced netrw file browser |
| **vim-surround** | Change surrounding quotes/brackets |
| **Gundo** | Visual undo tree |
| **ack.vim** | Project-wide search |

### Language Support

| Plugin | Language |
|--------|----------|
| **vim-javascript** | JavaScript |
| **vim-javascript-syntax** | JavaScript (enhanced) |
| **html5.vim** | HTML5 |
| **vim-css3-syntax** | CSS3 |
| **vim-jsx** | React JSX |
| **emmet-vim** | HTML/CSS abbreviations |
| **vim-go** | Go development |
| **vim-mustache-handlebars** | Mustache/Handlebars templates |

### Snippets

| Plugin | Purpose |
|--------|---------|
| **UltiSnips** | Snippet engine |
| **vim-es2015-snippets** | ES2015 snippets |
| **vim-react-snippets** | React snippets |

### UI & Themes

| Plugin | Purpose |
|--------|---------|
| **vim-airline** | Enhanced status line |
| **vim-airline-themes** | Airline color themes |
| **Dracula** | Active colorscheme |
| **badwolf** | Alternate colorscheme |
| **nova-vim** | Nova colorscheme |
| **vim-devicons** | File type icons |
| **Powerline** | Status line (legacy) |

## Plugin Management

```bash
# Install plugins
vim +PluginInstall +qall

# Update plugins
vim +PluginUpdate +qall

# Clean unused plugins
vim +PluginClean +qall
```

## File Structure

```
vim/
└── bundle/          All Vundle-managed plugins
    ├── Vundle.vim/  Plugin manager itself
    ├── ctrlp.vim/
    ├── nerdtree/
    ├── syntastic/
    ├── vim-go/
    ├── vim-fugitive/
    ├── vim/         Dracula theme
    └── ...          30+ plugin directories
```
