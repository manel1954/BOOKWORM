#!/bin/bash



sed -i "6c Exec=sh -c 'cd /home/pi/BOOKWORM;sh cerrar_solofusion.sh'" /home/pi/Abrir_solofusion.desktop
sed -i "7c Icon=/home/pi/BOOKWORM/ICO_SOLOFUSION_ON.png" /home/pi/Abrir_solofusion.desktop
sed -i "11c Name[es_ES]=Cerrar solo FUSION" /home/pi/Abrir_solofusion.desktop
sed -i "12c SOLOFUSION=ON" /home/pi/status.ini





cd /home/pi/YSFClients/YSFGateway
xterm -geometry 85x12+1215+296 -bg black -fg orange -fa ‘verdana’ -fs 9x -T CONSOLA_YSFGateway -e ./YSFGateway YSFGateway.ini & 
cd /home/pi/MMDVMHost
xterm -geometry 85x12+612+296 -bg black -fg orange -fa ‘verdana’ -fs 9x -T CONSOLA_SOLOFUSION -e sudo ./MMDVMFUSION MMDVMFUSION.ini





