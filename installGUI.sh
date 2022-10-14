#!/bin/bash

echo " Memulai script ... install GUI "

sudo apt install udisks2
sudo rm /var/lib/dpkg/info/udisks2.postinst
echo "" >> /var/lib/dpkg/info/udisks2.postinst
sudo apt-mark hold udisks2
echo " berhasil set dpkg konfigurasi "
clear
sudo apt install xfce4 xfce4-terminal xfce-whiskermenu-plugin
sudo apt install firefox gedit vlc dbus-x11 xtigervnc-standalone-server
