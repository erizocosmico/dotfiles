# dotfiles

Collection of dotfiles and setups for some common apps.

## Install

```bash
git clone https://github.com/erizocosmico/dotfiles ~/dotfiles
cd ~/dotfiles
sh install
sh setup
```

### Installed configs

* NeoVim config
* i3 config (requires `py3status` installed)
* fish config

## Setups

### Fish

```bash
sh ~/dotfiles/setup_fish
```

* Installs Oh My Fish
* Installs theme Bobthefish

### NeoVim

```bash
sh ~/dotfiles/setup_nvim
```

* Installs NeoBundle
* Installs neovim python client
* Installs `gocode`

After installing, start `nvim` once to install all plugins using NeoBundle. Exit and open `nvim` again and run `:UpdateRemotePlugins` to make deoplete work.

**Requirements** (if you want all plugins to work)

* Golang installed
* Python3 installed
* Node.js and NPM installed
* pbcopy/xsel to access system clipboard

### NPM

```bash
sh ~/dotfiles/setup_npm
```

* Sets the `~/npm-global` as the directory for global packages (avoids permission issues)
