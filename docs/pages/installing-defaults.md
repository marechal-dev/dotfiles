# Installing defaults

1. Basic packages

```sh
sudo pacman -S base-devel coreutils git unzip wget openssh neovim htop the_silver_searcher lazygit github-cli
```

then install `man`

```sh
sudo pacman -S man-db man-pages
```

and update the `man` database

```sh
sudo mandb
```

2. Packages for working with `wslg` (Windows Subsystem For Linux GUI)

```sh
# These packages HAVE to be installed with pacman in order to work properly!
sudo pacman -S pkgconf dbus gtk3 libsoup webkit2gtk alsa-lib tk
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

9. Install `ruby` prerequirements

```sh
yay -S libyaml
```

10. Install `php` prerequirements

```sh
yay -S autoconf bison gettext gd libcurl-openssl-1.0 libedit icu libjpeg-turbo libmysqlclient libogg oniguruma libpng postgresql-libs readline sqlite openssl libxml2 libzip re2c zlib freetype2 automake krb5 libiconv
```

9. Install languages prerequirements

```sh
chmod +x .dotfiles/install_asdf_plugins.sh
```

```sh
.dotfiles/install_asdf_plugins.sh
```

10. Install `asdf` plugins

```sh
chmod +x .dotfiles/install_asdf_plugins.sh
```

```sh
.dotfiles/install_asdf_plugins
```

11. Install latest LTS version of the languages (use `asdf list all <plugin-name>` to list versions)

12. Install utils

```sh
sudo yay -S bat eza broot fd ripgrep httpie jq tlrc-bin lazydocker lazygit kdash gdb navi task
```

13. Install `gdb-dashboard`
```sh
wget -P ~ https://github.com/cyrus-and/gdb-dashboard/raw/master/.gdbinit
```

14. Install `pygments` for `gdb-dashboard`
```sh
pip install pygments
```
