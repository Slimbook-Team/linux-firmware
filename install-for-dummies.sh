#!/bin/bash

#no comments please, garbage code

#opensuse
zypper install git-core

#arch y antergos
pacman -S git --noconfirm

#debian y derrib
apt-get install git -y

#empezamos
rm -rf /tmp/iwlwifi
mkdir /tmp/iwlwifi
cd /tmp/iwlwifi/
echo "Descargando datos del firmware..."
git clone https://github.com/slimbook/iwlwifi
cd /tmp/iwlwifi/iwlwifi/
echo "Ficheros descargados."
cp iwlwifi-*.ucode /lib/firmware/

echo "Firmware manualmente actualizado.\n"

echo "Ahora si derivados DEB.\n"

wget http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.149_all.deb
dpkg -i /tmp/linux-firmware_1.149_all.deb

wget http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.157.10_all.deb
dpkg -i /tmp/linux-firmware_1.157.10_all.deb

wget http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.161_all.deb
dpkg -i /tmp/linux-firmware_1.161_all.deb

wget http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.164_all.deb
dpkg -i /tmp/linux-firmware_1.164_all.deb

wget http://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.165_all.deb
dpkg -i /tmp/linux-firmware_1.165_all.deb

dpkg --configure -a


echo "Fin derivados DEB.\n"

echo "Gracias por confiar en el Slimbook Team.\n"
