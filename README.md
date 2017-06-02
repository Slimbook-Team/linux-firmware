# linux-firmware
Firmware oficial kernel.org no disponible en algunas distros (ficheros wifi, red, bt, etc)


Puedes usar el script para dummies:

- Comandos de consola de linux:

cd /tmp
wget https://raw.githubusercontent.com/slimbook/linux-firmware/master/install-for-dummies.sh
sudo sh ./install-for-dummies.sh
shutdown -r now

O mirar cual es la última versión y remplazar en los siguientes comandos las X por el nombre correcto del fichero:

- Comandos de consola de linux:

cd /tmp
wget https://github.com/slimbook/linux-firmware/raw/master/linux-firmware_1.164_all.deb
sudo dpkg -i linux-firmware*.deb
shutdown -r now

- Fin 


Más datos en: http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/
