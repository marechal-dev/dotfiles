# Installing defaults

1. Basic packages

```sh
sudo pacman -S base-devel git unzip wget openssh neovim htop the_silver_searcher lazygit github-cli jdk-openjdk python python-pip python-pynvim
```

2. Packages for working with `wslg` (Windows Subsystem For Linux GUI)

```sh
# These packages HAVE to be installed with pacman in order to work properly!
sudo pacman -S pkgconf dbus gtk3 libsoup webkit2gtk alsa-lib
```

3. `git clone` this repo

```sh
# Use SSH if you can...
git clone git@github.com:marechal-dev/dotfiles.git

# Or use HTTPS at least!
git clone https://github.com/marechal-dev/dotfiles.git
```

4. Execute the `setup.sh` to create the symlinks

```
./.dotfiles/setup.sh
```

5. Install `yay`

```sh
cd /tmp \
git clone https://aur.archlinux.org/yay.git \
cd yay \
makepkg -si \
cd
```

6. Install `zsh`

```sh
sudo yay -S zsh
```

7. Install `zsh-autosuggestions`

```sh
cd \
mkdir .zsh \
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

8. Install `asdf`

```sh
cd \
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0 \
asdf update
```

9. Install `asdf` plugins

```sh
asdf plugin-add lua https://github.com/Stratus3D/asdf-lua.git \
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git \
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git \
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

10. Install latest LTS version of the languages (use `asdf list all <plugin-name>` to list versions)

11. Install utils

```sh
sudo yay -S bat exa broot fd ripgrep
```
