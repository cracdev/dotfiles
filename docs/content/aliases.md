# Aliases

164+ command shortcuts organized by category. Defined in `~/dotfiles/aliases`.

## Tmux

| Alias | Command | Purpose |
|-------|---------|---------|
| `tm` | `tmux` | Tmux shorthand |
| `tmls` | `tmux ls` | List sessions |
| `tms` | `tmux new-session -s` | New named session |
| `tmsa` | `tmux attach -t` | Attach to session |
| `tma` | `tmux attach` | Attach to last session |
| `tmr` | `tmux source ~/.tmux.conf` | Reload config |
| `tmk` | `tmux kill-session -t` | Kill session |
| `tmks` | `tmux kill-server` | Kill server |
| `tmsc` | `tmux switch-client -t` | Switch client |

## Navigation

| Alias | Command | Purpose |
|-------|---------|---------|
| `..` | `cd ..` | Up one level |
| `...` | `cd ../..` | Up two levels |
| `....` | `cd ../../..` | Up three levels |
| `.....` | `cd ../../../..` | Up four levels |
| `~` | `cd ~` | Home directory |
| `cl` | `clear` | Clear terminal |
| `op` | `open .` | Open current dir in Finder |

## File Listing

| Alias | Command | Purpose |
|-------|---------|---------|
| `ll` | `ls -alF` | Long list with indicators |
| `la` | `ls -A` | All except . and .. |
| `l` | `ls -CF` | Columnar with indicators |
| `lh` | `ls -lha` | Long list human-readable |
| `lsd` | `ls -l \| grep "^d"` | Directories only |

## Git

Uses `hub` as the git wrapper for GitHub integration.

| Alias | Command | Purpose |
|-------|---------|---------|
| `g` | `hub` | Git via hub |
| `gs` | `g s` | Short status |
| `gd` | `g diff` | Diff |
| `gc` | `g cam` | Commit all with message |
| `gco` | `g co` | Checkout |
| `gpr` | `g pull-request` | Create pull request |
| `gr` | `git root` | cd to repo root |
| `ltag` | `git tag --sort=committerdate \| tail -1` | Latest tag |

## npm / Yarn

| Alias | Command | Purpose |
|-------|---------|---------|
| `nup` | `npm install` | Install packages |
| `nsd` | `npm run dev` | Run dev server |
| `nst` | `npm start` | Start app |
| `ntst` | `npm run test` | Run tests |
| `nrb` | `npm run build` | Build |
| `yst` | `yarn start` | Yarn start |
| `yte` | `yarn test` | Yarn test |
| `yin` | `yarn install` | Yarn install |
| `ysd` | `yarn start:dev` | Yarn dev server |

## Kubernetes

| Alias | Command | Purpose |
|-------|---------|---------|
| `k` | `kubectl` | kubectl shorthand |
| `kgp` | `kubectl get pods` | List pods |
| `ksp` | `kubectl describe pods` | Describe pods |
| `kdp` | `kubectl delete pod` | Delete pod |
| `kds` | `kubectl delete service` | Delete service |
| `kct` | `kubectl config get-contexts` | List contexts |
| `kuc` | `kubectl config use-context` | Switch context |
| `kd` | `kubectl delete` | Delete resource |

## Network & System

| Alias | Command | Purpose |
|-------|---------|---------|
| `ip` | `dig +short myip.opendns.com` | Public IP |
| `localip` | `ipconfig getifaddr en0` | Local IP |
| `flush` | `dscacheutil -flushcache` | Flush DNS |
| `cleanup` | `find . -name '.DS_Store' ...` | Remove .DS_Store files |
| `fs` | `stat -f "%z bytes"` | File size |

## macOS

| Alias | Command | Purpose |
|-------|---------|---------|
| `hidedesktop` | defaults write ... | Hide desktop icons |
| `showdesktop` | defaults write ... | Show desktop icons |
| `showFiles` | defaults write ... | Show hidden files |
| `hideFiles` | defaults write ... | Hide hidden files |
| `emptytrash` | `sudo rm -rfv ...` | Empty all trash |

## Cloud & DevOps

| Alias | Command | Purpose |
|-------|---------|---------|
| `awsgci` | `aws sts get-caller-identity` | AWS identity check |
| `gawsc` | `gimme-aws-creds` | AWS credentials |
| `vl` | `vercel` | Vercel CLI |
| `vlprod` | `vercel --prod` | Deploy to production |

## Special

| Alias | Command | Purpose |
|-------|---------|---------|
| `rm` | `trash` | Safe delete (trash-cli) |
| `shr` | `source ~/.bash_profile` | Reload shell |
| `please` | `sudo` | Polite sudo |
| `v` | `vim` | Vim shorthand |
| `cc` | `claude` | Claude Code |
| `df` | `tmux-sessionizer` | Project switcher |
| `cht` | `tmux-cht` | Cheat sheet |
| `f` | `fcd` | Fuzzy directory finder |
| `sc` | `match_contents` | Search file contents |
| `rot13` | `tr 'A-Za-z' 'N-ZA-Mn-za-m'` | ROT13 encoding |
