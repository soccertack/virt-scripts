#!/bin/bash

# This is to create a VM with q35 machine type
virt-install --machine=q35 --virt-type=kvm --name guest50 --ram 1024 --vcpus=4 --os-type=linux --os-variant ubuntutrusty --disk=path=/srv/vm/ubuntu-14.04.2-server-amd64.iso,device=cdrom,bus=scsi --disk=/temp-space/guest50.img,size=10,bus=scsi --network user --force --network bridge=br0
