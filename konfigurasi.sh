#!/bin/bash

echo " Memulai konfigurasi ... "
apt install git
apt update -y
apt upgrade -y
read -p " Masukan user local : " nama;
adduser $nama
echo " tahapan buat sandi "
passwd $nama
echo "login sebagai user local"
echo "mengatur agar user bisa sudo command"
echo "$nama ALL=(ALL:ALL) ALL" >> /etc/sudoers
su $nama
