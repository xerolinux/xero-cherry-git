#!/bin/bash
#set -e
echo "##########################################"
echo "     XeroCherry Rice Installer Script     "
echo "##########################################"
sleep 3
echo "Creating Backups of ~/.config folder"
echo "#####################################"
mv ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
sleep 2
echo "Removing Latte-Dock & Lightly"
echo "#################################"
sudo pacman -R --noconfirm lightly-git
sudo pacman -R --noconfirm latte-dock
sudo pacman -R --noconfirm latte-dock-git
sleep 2
echo
echo "Installing Cherry Theme"
echo "#################################"
sudo pacman -S --needed --noconfirm cherry-kde-theme cherry-gtk-theme tela-circle-icon-theme-git
sleep 2
echo "Installing Fonts"
echo "#################################"
sudo pacman -S --needed --noconfirm nerd-fonts-hack nerd-fonts-fira-code nerd-fonts-meslo nerd-fonts-terminus noto-fonts-emoji
sleep 2
echo "Applying new Rice, hold on..."
echo "#################################"
cp -Rf Configs/Home/. ~
sudo rm /usr/share/defaultbg/XeroLinux.png
sudo cp -Rf Configs/System/. /
sleep 2
echo "Applying Grub Theme...."
echo "#################################"
chmod +x CherryGrub.sh
sudo ./CherryGrub.sh
sudo sed -i "s/#GRUB_GFXMODE=640x480/GRUB_GFXMODE=1920x1080/g" /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sleep 2
echo "RebootTo Apply Settings..."
echo "#################################"
