#!/bin/bash

#Copia las roms
nombre_raspberry=$USER

cp -r "/home/$nombre_raspberry/ProyectoFinalSistemasEmbebidos/roms" "/home/$nombre_raspberry/Desktop"

#Actualizar lista de paquetes
sudo apt-get update

#Instalamos las bibliotecas de Python
sudo apt-get install -y python3-pip
sudo pip3 install pygame
sudo pip install pyudev

#Instalamos el software para la emulación

sudo apt install libsdl2-dev libgtkmm-3.0-dev libepoxy-dev meson alsa-oss 
portaudio19-dev libminizip-dev
sudo apt install mame
sudo apt-get install joystick

#Configuramos autostart

autostart_file="/etc/xdg/lxsession/LXDE-pi/autostart"
video_command="@vlc /home/$nombre_raspberry/ProyectoFinalSistemasEmbebidos/intro.mp4"
python_command="@python3 /home/$nombre_raspberry/ProyectoFinalSistemasEmbebidos/main.py"
# Agregar líneas al archivo autostart
sudo bash -c "echo 'video_command' >> 'autostart_file'"
sudo bash -c "echo '$python_command' >> '$autostart_file'"


#Configuramos xorg.conf

xorg_conf_file="/etc/X11/xorg.conf"
lines_to_add="Section \"InputClass\"\n\
Identifier \"disable-keyboard\"\n\
MatchIsKeyboard \"on\"\n\
Option \"Ignore\" \"true\"\n\
EndSection"
echo -e "$lines_to_add" | sudo tee -a "$xorg_conf_file" > /dev/null



#Configurar raspi-config
sudo raspi-config nonint do_expand_rootfs
sudo raspi-config nonint do_memory_split 16
sudo raspi-config nonint do_boot_behaviour B1

#Habilitar autologin en la consola
sudo sed -i '/^autologin-user=/s/.*/autologin-user=pi/' /etc/lightdm/lightdm.conf
sudo sed -i '/^#autologin-user-timeout=/s/.*/autologin-user-timeout=0/' /etc/lightdm/lightdm.conf

echo "Configuración completada. Reiniciando..."

# Reiniciar Raspberry Pi
sudo reboot
