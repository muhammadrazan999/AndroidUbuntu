	#!/bin/bash
	
	hijau='\033[32;1m'
	biru='\033[34;1m'
	merah='\033[31;1m'
	kuning='\033[33;1m'
	kuning_terang='\033[33;1m'

	clear
	echo -e "\033[1;31m =========================================\033[0m"
	echo -e " || "+"\033[1;33m  UBUNTU INSTALLER \033[0m "+"		||"
	echo -e " || "+"\033[1;33m By Muhammad Razan Rizqullah \033[0m"+"	||"
	echo " || Wa : 087822002484			||"
	echo -e "\033[1;31m ############©©©©©©©©©©##################### \033[0m"

	echo -e "\033[1;36m===  Beranda Menu ===\033[0m"
	echo -e "\033[1;35m 1. Instalasi bahan\033[0m"
	echo -e "\033[1;34m 2. Instalasi OS\033[0m"
	echo -e "$hijau      3. Keluar	\033[0m"
	read -p "pilihan anda [1/2]:" pil;
	if [ $pil = 1 ];
		then
	 pkg update -y
	 pkg upgrade -y
	termux-setup-storage
	for i in {5..0};do
   	 printf "\r${biru}[${merah}${i}${biru}]"
    	sleep 3
	done
	echo -e	"\033[1;32m Sukses Instalasi Bahan \033[0m"
	./install.sh

	elif [ $pil = 2 ]; 
		then 
		pkg install proot -y
		apt install proot-distro -y
		proot-distro install ubuntu
		proot-distro login ubuntu
		cowsay selamat anda berhasil install ubuntu
	elif [ $pil = 3 ];
		then
		cd $HOME
	else
		echo " perintah invalid "
	fi
		 
