apt-get update
wget -O w7x64.img https://bit.ly/akuhnetw7X64
apt-get install qemu-system-x86 -y
qemu-system-x86_64 -hda w7x64.img -m 4G -smp cores=4 -vnc:2 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
