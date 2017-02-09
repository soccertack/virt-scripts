#!/bin/bash
ls /sys/bus/pci/devices/0000\:08\:00.0/driver/unbind
echo "Unbind device"
echo 0000:08:00.0 | sudo tee /sys/bus/pci/devices/0000\:08\:00.0/driver/unbind
echo "Bind to vfio-pci"
echo 15b3 1003 | tee /sys/bus/pci/drivers/vfio-pci/new_id
echo "Check"
ls /dev/vfio
