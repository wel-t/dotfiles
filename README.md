# Dotfiles

Version-controlled configuration files for desktop apps and terminal tools, deployed via symlinks.

## Structure
- `desktop/` - GUI applications (espanso, etc.)
- (Future: `terminals/`, `editors/`, `shell/`)

## Deployment
On a new machine:
```bash
git clone git@github.com:wel-t/dotfiles.git ~/repos/dotfiles
cd ~/repos/dotfiles
./deploy.sh
```
Espanso Dependencies (Fedora)
```bash
sudo dnf install espanso espanso-wayland wtype
sudo setcap "cap_dac_override+p" $(which espanso-wayland)
```
