#!/bin/bash
cd ~
git clone https://github.com/libvirt/libvirt.git -b v3.0.0
apt-get update
apt-get -y install autopoint xsltproc libnl-dev libxml2-dev libyajl-dev libdevmapper-dev libpciaccess-dev
cd libvirt
./autogen.sh --system
make -j20
make install
reboot now
