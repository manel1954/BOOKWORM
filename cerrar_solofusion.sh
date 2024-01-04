#!/bin/bash
sudo killall MMDVMFUSION
sudo killall YSFGateway



sed -i "6c Exec=sh -c 'cd /home/pi/BOOKWORM/;sh ejecutar_solofusion.sh'" /home/pi/Abrir_solofusion.desktop
sed -i "7c Icon=/home/pi/BOOKWORM/ICO_SOLOFUSION_OFF.png" /home/pi/Abrir_solofusion.desktop
sed -i "11c Name[es_ES]=Abrir solo FUSION" /home/pi/Abrir_solofusion.desktop
sed -i "12c SOLOFUSION=OFF" /home/pi/status.ini






