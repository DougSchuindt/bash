#!/bin/bash

#Snapd
if [ ! -e "/var/lib/snapd/" ]
	then
		sudo apt install snapd -y
fi

#OpenJDK
sudo apt install openjdk-8-jdk* -y
clear
echo ""
echo "########## OpenJDK instalado com sucesso ##########"
sleep 4
echo ""

#Netbeans
sudo apt install netbeans -y
clear
echo ""
echo "########## Netbeans instalado com sucesso ##########"
sleep 4
echo ""
echo ""

#IntelliJ Idea
echo ""
read -p "Instalar IntelliJ IDEA? (s/n): " IDEA

if [ "$IDEA" = "s" ]
    then
        sudo snap install intellij-idea-community --classic
        clear
	echo ""
        echo "########## IntelliJ IDEA instalado com sucesso ##########"
        sleep 4

    else
        clear
        echo "Instalacao de 'IntelliJ IDEA' abortada"
        sleep 2
fi

#Notepad++
echo ""
read -p "Instalar Notepad++? (s/n): " NOTE

if [ "$NOTE" = "s" ]
    then
        sudo snap install notepad-plus-plus
        clear
	echo ""
        echo "########## Notepad++ instalado com sucesso ##########"
        sleep 2

    else
        clear
        echo "Instalacao de 'Notepad++' abortada"
        sleep 2
fi


clear
echo 
echo " =================================================="
echo "            INSTALACAO FINALIZADA                 "
echo " =================================================="
echo
echo
echo

read -p "Deseja reiniciar o computador? (s/n): " REBOOT

if [ "$REBOOT" = "s" ]
    then
        sudo reboot
    else
        exit 0
fi



