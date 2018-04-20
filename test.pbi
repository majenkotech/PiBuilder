[system]
variant=minbase
version=stretch
mirror=http://ftp.debian.org/debian
hostname=pkprog
log=test.log

[image]
name=test.img
size=2G
boot=64M

[modules]
vchiq=install
snd_bcm2835=install

[packages]
avrdude=install
systemd-sysv=install
openssh-server=install

[users]
root=root
pk=pk

[files]
