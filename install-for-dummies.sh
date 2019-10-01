#!/bin/bash

#no comments please, garbage code

#arch y antergos
echo "pacman -S git --noconfirm \n"
pacman -S git --noconfirm

#fedora
echo "dnf -y install git \n"
dnf -y install git

#opensuse
echo "zypper --non-interative install git-core \n"
zypper --non-interative install git-core

#debian y derib
echo "apt-get install git -y \n"
apt-get install git -y

#empezamos
rm -rf /tmp/iwlwifi
mkdir /tmp/iwlwifi
cd /tmp/iwlwifi/
echo "Descargando datos del firmware..."
git clone https://github.com/slimbook/iwlwifi
cd /tmp/iwlwifi/iwlwifi/
echo "Ficheros descargados."
#copiando para wifi
cp iwlwifi-*.ucode /lib/firmware/
#copiando para bluetooth
cp intel/* /lib/firmware/intel/

echo "Firmware manualmente actualizado.\n"

echo "Ahora si derivados DEB.\n"

sudo apt install linux-oem-osp1 -y

cd /tmp/

wget https://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.157.21_all.deb
dpkg -i /tmp/linux-firmware_1.157.21_all.deb

wget https://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.157.22_all.deb
dpkg -i /tmp/linux-firmware_1.157.22_all.deb

wget https://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.173.9_all.deb
dpkg -i /tmp/linux-firmware_1.173.9_all.deb

wget https://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.175.6_all.deb
dpkg -i /tmp/linux-firmware_1.175.6_all.deb

wget https://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.178_all.deb
dpkg -i /tmp/linux-firmware_1.178_all.deb 

wget https://mirrors.kernel.org/ubuntu/pool/main/l/linux-firmware/linux-firmware_1.182_all.deb
dpkg -i /tmp/linux-firmware_1.182_all.deb

dpkg --configure -a


echo "Fin derivados DEB.\n"

echo "Gracias por confiar en el Slimbook Team.\n"
