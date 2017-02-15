#!/bin/bash
cd /srv/vm/qemu
#git remote add qemu git://git.qemu.org/qemu.git
#git fetch qemu
git remote add peter https://github.com/xzpeter/qemu.git
git fetch peter
git checkout vtd-vfio-enablement-v7
./configure --target-list=x86_64-softmmu
# If this file is missing, then make install gives an error
touch trace-events-all
make -j 20
make install
 
