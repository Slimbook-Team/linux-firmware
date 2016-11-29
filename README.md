# linux-firmware
Firmware oficial kernel.org no disponible en algunas distros (ficheros wifi, red, bt, etc)

NOTA: Para instalar este firmware en su ordenador mire cual es la última versión y remplace en los siguientes comandos las X por el nombre correcto del fichero:

- Comandos de consola de linux:

cd /tmp

wget https://github.com/slimbook/linux-firmware/raw/master/linux-firmware_1.161_all.deb

sudo dpkg -i linux-firmware*.deb

shutdown -r now

- Fin 


Más datos en: http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/
