#!/bin/bash

#no comments, please

cd /tmp/

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
