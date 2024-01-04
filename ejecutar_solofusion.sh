#!/bin/bash

SCRIPTS_version=$(awk "NR==3" /home/pi/version-fecha-actualizacion)
cd /home/pi/Desktop
sudo cp Abrir_solofusion.desktop /home/pi
sudo sed -i "6c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sh cerrar_solofusion.sh'" /home/pi/Abrir_solofusion.desktop
sudo sed -i "7c Icon=/home/pi/$SCRIPTS_version/ICO_SOLOFUSION_ON.png" /home/pi/Abrir_solofusion.desktop
sudo sed -i "11c Name[es_ES]=Cerrar solo FUSION" /home/pi/Abrir_solofusion.desktop
sudo sed -i "12c SOLOFUSION=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_solofusion.desktop /home/pi/Desktop

sudo rm /home/pi/Abrir_solofusion.desktop

cd /home/pi/YSFClients/YSFGateway
xterm -geometry 85x12+1215+296 -bg black -fg orange -fa ‘verdana’ -fs 9x -T CONSOLA_YSFGateway -e ./YSFGateway YSFGateway.ini & 
cd /home/pi/MMDVMHost
xterm -geometry 85x12+612+296 -bg black -fg orange -fa ‘verdana’ -fs 9x -T CONSOLA_SOLOFUSION -e sudo ./MMDVMFUSION MMDVMFUSION.ini





