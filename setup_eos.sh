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

#Google Chrome

if [ ! -e "usr/share/applications/google-chrome.desktop" ]
    then
        echo "Chrome já instalado."
    else
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        apt install -y fonts-liberation
        dpkg -i google-chrome-stable_current_amd64.deb
fi

#Snap
if [ ! -e "/snap/bin" ]
    then
        echo "Snap já instalado."
    else
        apt install -y snapd
fi

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


exit 0

