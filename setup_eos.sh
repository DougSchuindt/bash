#!/bin/bash

#Elementary Tweak
echo ""
read -p "Instalar Tweaks? (s/n): " TWEAK

if [ "$TWEAK" = "s" ]
    then
        apt install -y software-properties-common
        add-apt-repository ppa:philip.scott/elementary-tweaks
        apt update
        apt install -y elementary-tweaks
        apt update && apt upgrade -y
        clear
	    echo ""
        echo "########## Elementary Tweak instalado com sucesso ##########"
        sleep 3

    else
        clear
        echo "Instalacao de 'Elementary Tweaks' abortada"
        sleep 2
fi

#Packages
apt install -y python3-pyinotify libkeybinder-3.0-0 gir1.2-keybinder-3.0 gir1.2-webkit2-4.0 gir1.2-notify-0.7 python3-distutils-extra python3-websocket python3-levenshtein snapd rar fonts-liberation git remmina

#Google Chrome
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.4.0/ulauncher_5.4.0_all.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://hadler.me/files/forticlient-sslvpn_4.4.2333-1_amd64.deb
dpkg -i *.deb


#Snap

snap install notepadqq
snap install atom --classic
snap install android-studio --classic
snap install vlc
snap install inkscape

#Wine
echo ""
read -p "Instalar Wine? (s/n): " WINE

if [ "$WINE" = "s" ]
    then
        dpkg --add-architecture i386
        wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
        apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
        apt update
        apt install -y --install-recommends winehq-stable
        clear
        echo "##### WINE VERSION #####"
        echo ""
        wine --version
        sleep 3

    else
        clear
        echo "Instalacao do 'Wine' abortada"
        sleep 2
fi


#Wine
echo ""
read -p "Instalar McMojave? (s/n): " MOJAVE

if [ "$MOJAVE" = "s" ]
    then
        wget "https://dl.opendesktop.org/api/files/download/id/1564655888/s/c5e6911b9396a0f42b8eda8f421025da9d6610f29a03feb8eee4240c234ca2fd120fc577be00fc6c2cffd4f6c88ea05069ee8bbbd4f6d162b4e2ee22d11d4037/t/1565316380/lt/download/01-McMojave-circle.tar.xz"
        tar -xvf "01-McMojave-circle.tar.xz"
        mv McMojave-*/ /usr/share/icons/
        rm "01-McMojave-circle.tar.xz"

    else
        clear
        echo "Instalacao do 'McMojave' abortada"
        sleep 2
fi

useradd douglas
usermod -U -e "" douglas

exit 0
