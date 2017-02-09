#!/bin/bash
cd /srv/vm/qemu
git remote add qemu git://git.qemu.org/qemu.git
git remote add peter https://github.com/xzpeter/qemu.git
git fetch qemu
git fetch peter
git checkout vtd-vfio-enablement-v7
./configure --target-list=x86_64-softmmu
# If this file is missing, then make install gives an error
touch trace-events-all
make -j 20
make install
 
# Just install qemu for now
exit
cd ~
git clone https://github.com/libvirt/libvirt.git -b v3.0.0
apt-get update
apt-get -y install autopoint xsltproc libnl-dev libxml2-dev libyajl-dev libdevmapper-dev libpciaccess-dev
cd libvirt
./autogen.sh --system
make -j20
make install
reboot now
