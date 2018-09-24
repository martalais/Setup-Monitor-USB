#!/bin/bash
# Setup das máquinas HP PROLiant para o monitor USB.
# Marta Laís, 2018. GASiS3

FGRED=`echo "\033[31m"`
FGCYAN=`echo "\033[36m"`
FGBLUE=`echo "\033[35m"`
NORMAL=`echo "\033{m"`
bold=$(tput bold) 
normal=$(tput sgr0)

echo "${FGBLUE} ${bold} Upgrade... ${normal} ${NORMAL}"
sleep 3
sudo apt upgrade
sleep 3
echo "${FGCYAN} ${bold} Done! ${normal} ${NORMAL}"
sleep 3

echo "${FGBLUE} ${bold} Update... ${normal} ${NORMAL}"
sleep 3
sudo apt update
sleep 3
echo "${FGCYAN} ${bold} Done! ${normal} ${NORMAL}"
sleep 3

rm -R ~/Drive
mkdir ~/Drive
cd ~/Drive 

echo "${FGBLUE} ${bold} Downloading curl... ${normal} ${NORMAL}"
sleep 3
sudo apt install curl
sleep 3
echo "${FGCYAN} ${bold} Done! ${normal} ${NORMAL}"
sleep 3

echo "${FGBLUE} ${bold} Downloading dependencies... ${normal} ${NORMAL}"
sleep 3
sudo apt-get install dkms
sleep 3

echo "${FGBLUE} ${bold} Downloading the driver... ${normal} ${NORMAL}"
sleep 3
curl -L -o DisplayLink_USB_Graphics_Software_for_Ubuntu_4.1.zip 'https://drive.google.com/uc?export=download&id=1EP6WbxTiIp4qpGyIbn4n4kRn_aVyI0h9'
sleep 3
echo "${FGCYAN} ${bold} Done! ${normal} ${NORMAL}"
sleep 3

echo "${FGBLUE} ${bold} Unzip the driver file... ${normal} ${NORMAL}"
sleep 3
unzip ~/Drive/DisplayLink_USB_Graphics_Software_for_Ubuntu_4.1.zip
sleep 3
echo "${FGCYAN} ${bold} Done! ${normal} ${NORMAL}"
sleep 3

echo "${FGBLUE} ${bold} Executando driver. ${normal} ${NORMAL}"
sleep 3
sudo ./displaylink-driver-4.1.9.run

