# linux-firmware
Firmware oficial kernel.org no disponible en algunas distros (ficheros wifi, red, bt, etc)

Para instalar este firmware en su ordenador mire cual es la última versión y remplace en los siguientes comandos las X por el nombre correcto del fichero:

Comandos de consola de linux:

cd /tmp

wget https://github.com/slimbook/linux-firmware/raw/master/linux-firmware_X.XXX_all.deb

sudo dpkg -i linux-firmware*.deb

reboot

- Fin -


Más datos en: http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/
