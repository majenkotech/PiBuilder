[system]
variant=minbase
version=stretch
mirror=http://archive.raspbian.org/raspbian
hostname=pkprog
log=test.log

[image]
name=test.img
size=1G
boot=64M

[modules]
vchiq=install
snd_bcm2835=install

[packages.firmware]
firmware-atheros=install
firmware-brcm80211=install
firmware-libertas=install
firmware-misc-nonfree=install
firmware-realtek=install

[packages.network]
wpasupplicant=install
net-tools=install
isc-dhcp-client=install
iputils-ping=install
bind9-host=install
traceroute=install
iproute2=install
ifupdown=install
ifupdown-extra=install

[packages.user]
avrdude=install
systemd-sysv=install
openssh-server=install

[users]
root=root
pk=pk

[files]

[services]
ssh=enable

[wifi]
ssid=JencorpIntersplice
psk=peripateticmonkeys
