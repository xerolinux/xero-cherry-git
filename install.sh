#!/bin/bash
#set -e
echo "##########################################"
echo "     XeroCherry Rice Installer Script     "
echo "##########################################"
sleep 3
echo "Creating Backups of ~/.config folder"
echo "#####################################"
cp -r ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
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
sudo pacman -S --needed --noconfirm cherry-kde-theme cherry-gtk-theme tela-purple-icon-theme-git kvantum
sleep 2
echo "Installing Fonts"
echo "#################################"
sudo pacman -S --needed --noconfirm nerd-fonts-hack nerd-fonts-fira-code nerd-fonts-meslo nerd-fonts-terminus noto-fonts-emoji
sleep 2
echo "Applying new Rice, hold on..."
echo "#################################"
cp -Rf Configs/Home/. ~
sudo cp -Rf Configs/System/. /
sed -i "s/{.*}/{C1}/g" ~/XeroAscii
sudo sed -i "s/Current=.*/Current=Relax-SDDM/" /etc/sddm.conf.d/kde_settings.conf
sudo sed -i "s/CursorTheme=.*/CursorTheme=breeze_cursors/" /etc/sddm.conf.d/kde_settings.conf
sleep 2
echo "Applying Flatpak Theme Fix..."
echo "#################################"
cp -r /usr/share/themes/Cherry-gtk ~/.themes/
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
