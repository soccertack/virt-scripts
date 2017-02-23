sudo qemu-system-x86_64 \
-device intel-iommu,intremap=on,eim=off,caching-mode=on \
-M q35,accel=kvm,kernel-irqchip=split \
-m 12G \
-drive file=/mydata/guest0.img,format=raw --nographic -cpu host \
-smp 4,sockets=4,cores=1,threads=1 \
-device vfio-pci,host=08:00.0 
