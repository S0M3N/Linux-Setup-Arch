#!/usr/bin/bash

pwd = 'pwd'

echo "--------Updating Repos and upgrading System--------"
sudo pacman -Syu
echo ""
echo "--------Update complete--------"
sleep 2

echo ""
echo"--------Installing Required Packages--------"
yes | sudo pacman -S git gcc python3 jdk-openjdk nodejs npm vlc neofetch net-tools htop gparted python-pip

echo ""
echo "--------Package installation complete--------"
sleep 2

echo ""
echo "--------Making a Directory for installing AUR Packages--------"
cd
mkdir aur_packages
cd aur_packages

echo "Now Installing Following"
echo "VSCODE"
echo "Only Office"
echo "ULauncher"

echo "Installing VS Code"

read -p "Do You want to install VS Code [Y/n]: " VAR
if [[ $VAR == "n" ]] || [[ $VAR == "N" ]];
        then
                echo "VS Code Not Installed Continuing with further processes"
        else
                echo "Installaion initiated"
		git clone https://aur.archlinux.org/visual-studio-code-bin.git
		cd visual-studio-code-bin
		makepkg -si
		cd ..
		echo ""
		echo "VS Code installed Successfully"
fi


echo "Installing OnlyOffice"
read -p "Do You want to install Only Office Suite [Y/n]: " VAR
if [[ $VAR == "n" ]] || [[ $VAR == "N" ]];
        then
                echo "Only Office Not Installed Continuing with further processes"
        else
                echo "Installaion initiated"
                git clone https://aur.archlinux.org/onlyoffice-bin.git
                cd onlyoffice-bin
                makepkg -si
                cd ..
                echo ""
                echo "Only Office Suite installed Successfully"
fi

echo "Installing ULauncher"
read -p "Do You want to install ULauncher [Y/n]: " VAR
if [[ $VAR == "n" ]] || [[ $VAR == "N" ]];
        then
                echo "Ulauncher Not Installed Continuing with further processes"
        else
                echo "Installaion initiated"
                git clone https://aur.archlinux.org/ulauncher.git
                cd ulauncher
                makepkg -si
                cd ..
                echo ""
                echo "ULauncher installed Successfully"
fi

echo "--------Basic software installed successfully--------"
sleep 2
cd $pwd

echo "--------installing other required packages--------"

echo "Pluma is a light weight text editor" echo ""
read -p "Do You want to install Pluma Test Editor  [Y/n]: " VAR
if [[ $VAR == "n" ]] || [[ $VAR == "N" ]];
        then
                echo "Not Installing pluma."
        else
                yes | sudo pacman -S pluma
		echo "Pluma installed successfully"
fi


echo "Cmatrix is a fun matrix animation for your terminal" echo ""
read -p "Do You want to install CMatrix [Y/n]: " VAR
if [[ $VAR == "n" ]] || [[ $VAR == "N" ]];
        then
                echo "Not Installing CMatrix."
        else
                yes | sudo pacman -S cmatrix
		echo "Cmatrix installed successfully"
fi

sleep 2

echo "Basic Installation completed successfully"
echo "Thankyou for using my script"
echo "Don't forget to star my repo"
echo "Help in opensource where you can"
sleep 5

