### This is XeroLinux's Cherry Rice

-> Some notes before proceeding :

> Applying this rice will override all your settings. So make sure to create a backup of your system either via Snapper if using it, or TimeShift. Don't worry though, script will attempt to create a backup for you of your ~/.config folder before proceeding. Still better be safe than sorry.


![XeroLayan](https://i.imgur.com/oGqFvd0.png)

# Requirement for *Other* Arch KDE Distros ...

First off, note that if you want to use on other Arch based distros with KDE than **XeroLinux** you will need to add my repo since most of the packages are only available there. (This does not apply to XeroLinux as repo already there).

Open the file `/etc/pacman.conf` and add my repo at the bottom of the file :
```
[xerolinux_repo]
SigLevel = Optional TrustAll
Server = https://xerolinux.github.io/$repo/$arch
```
Save the file, and refresh databases via `sudo pacman -Sy` then follow below step...

# Installation

Just clone this repository, run terminal inside directory and run installer Script using below command.

`git clone https://github.com/xerolinux/xero-cherry-git.git && cd xero-cherry-git && ./install.sh`

## Script will do the following steps :

- Create a backup of your ~/.config folder.
- Download and install necessary packages if needed...
- Override your settings and files with this rice's.
- Install and apply CyberRe Grub Theme...
- Reboot system to get everything loaded...

# F.A.Q

> Q: Will this rice work on other distros Like Fedora or Debian based ?<br />
> A : If it's not **Arch-KDE** or **XeroLinux** then no. Sorry.
>
> Q : I am running *Pre-Customized* **Arch** Distro with *KDE* can I use your rice ?<br />
> A : Short answer, *might*. Long answer, too many variables, I don't guarantee success.
>
> Q : After applying this rice on **XeroLinux** nice ASCII in neofetch gone how to get it back ?<br />
> A : To get Xero ASCII in neofetch back just unhash line 114 in `config.conf` inside `/.config/neofetch/`

# Disclosure

> Use this at your own Risk ! I won't be held liable if you didn't follow above recommendations.... Always Backup.. If you don't and break your system it's on you !!!!
