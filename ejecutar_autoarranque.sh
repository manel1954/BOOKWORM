#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_autoarranque.desktop /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sudo sh cerrar_autoarranque.sh'" /home/pi/Abrir_autoarranque.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/SOLO_YSF_ON.png" /home/pi/Abrir_autoarranque.desktop
sed -i "11c Name[es_ES]=Cerrar solo FUSION" /home/pi/Abrir_solofusion.desktop
sed -i "12c SOLOFUSION=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_autoarranque.desktop /home/pi/Desktop
sudo rm /home/pi/Abrir_autoarranque.desktop

cd /home/pi/BOOKWORM
 ./qt_autoarranque




