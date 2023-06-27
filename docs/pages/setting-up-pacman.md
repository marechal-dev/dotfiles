# Setting up `pacman`

1. Initialize the keyring

```sh
sudo pacman-key --init
```

2. Populate it

```sh
sudo pacman-key --populate
```

3. Install the keyring

```sh
sudo pacman -Sy archlinux-keyring
```

4. Do a full system update

```sh
sudo pacman -Syyuu
```
