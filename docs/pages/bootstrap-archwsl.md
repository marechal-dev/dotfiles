# Steps to bootstrap the ArchWSL

1. Download the [latest version of ArchWSL](https://github.com/yuk7/ArchWSL/releases/latest)
2. Unzip the file at the Windows Root (`C:`)
3. On an Elevated PowerShell, execute the `.\Arch.exe` command and wait to complete
4. Execute `.\Arch.exe` again and configure the `root` password

```sh
passwd
```

5. Setup `sudoers` file

```sh
 echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
```

6. Add user

```sh
useradd -m -G wheel -s /bin/bash marechal-dev
```

7. Setup the password and exit

```sh
passwd marechal-dev \
exit
```

8. On PowerShell, setup the default user

```powershell
.\Arch.exe config --default-user marechal-dev
```
