# FAC Retro Realm

Se crea una consola de videojuegos retro con la capacidad de ejecutar 15 juegos precargados de la SNES y maquinas recreativas con el uso de los emuladores Snes9X y MAME. Además de ser capaz de leer el contenido de una memoria USB y copiar el contenido de esta a la biblioteca. El sistema únicamente trabaja con control de Xbox

## Integrantes del equipo

- **Crisantos Martinez Diego Jair**
- **Fernández Quiroz Félix Fernando**
- **Angeles Estrada Ricardo**

## Enlaces

- **Youtube:** https://youtu.be/mkrBqoRAv2M
- **Repositorio GitHub:** https://github.com/KongouFer/ProyectoFinalSistemasEmbebidos

## Copiar repositorio

- Se crea una cuenta de GitHub para poder descargar el repositorio. 
- Luego, en la cabecera del repositorio, dar clic a Fork para copiar el repositorio.
- Se instala en el escritorio GitHub Desktop desde la página oficial e inicie sesión.
- Estando dentro de GitHub Desktop, en la parte superior del programa, abrir File y seleccione Clone Repository.
- Seleccione el repositorio que copio, seleccione donde copiara el repositorio y dar clic a Clone.
- Una vez clonado el repositorio, seleccione la opción "For my own purposes".

## Instalación en la Raspberry Pi
- Instalar Git en la terminal usando "sudo apt-get install git"
- Clonar el repositorio "git clone https://github.com/KongouFer/ProyectoFinalSistemasEmbebidos"
- Hecho esto, procedemos a dirigirnos al directorio en donde esta nuestro proyecto y abrir el archivo main.py
- En main.py, modificar en la línea 223 y 225. en la parte de "/media/fac/KINGSTON" y "/home/fac/Desktop/Proyecto/roms", modificar respectivamente a "/media/nombre_de_usuario/KINGSTON" y "/home/nombre_de_usuario/Desktop/roms".
- Hecho esto, ejecutamos el script "script_instalacion.sh" dando permisos con "chmod +x mi_script.sh" y ejecutando ./script_instalacion.sh

## Uso

Conecte la Raspberry Pi a un monitor, conecte un control de Xbox y después a la corriente para encenderla. Una vez hecho esto, puede realizar las siguientes acciones:

**Navegación de la interfaz**
- Joystick izquierda (Arriba/Abajo): Seleccionar titulo a jugar
**Modificación de la libreria**
- A: Abrir juego
- Y: Borrar juego
**Opciones del sistema**
- LB: Cierra el juego
- X: Apaga la consola



