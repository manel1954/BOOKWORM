#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
cd /home/pi/Desktop
sudo cp Abrir_autoarranques.desktop /home/pi
sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sudo sh cerrar_autoarranque.sh'" /home/pi/Abrir_autoarranques.desktop
sed -i "7c Icon=/home/pi/$SCRIPTS_version/ICO_AUTOARRANQUE.png" /home/pi/Abrir_autoarranques.desktop
sed -i "11c Name[es_ES]=Cerrar AUTOARRANQUE" /home/pi/Abrir_autoarranques.desktop
sed -i "12c SOLOFUSION=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_autoarranques.desktop /home/pi/Desktop
sudo rm /home/pi/Abrir_autoarranques.desktop

cd /home/pi/BOOKWORM/qt
 ./qt_autoarranque




