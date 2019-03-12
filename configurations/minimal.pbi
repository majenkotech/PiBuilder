[system]
variant=minbase
version=stretch
mirror=http://archive.raspbian.org/raspbian
hostname=pi
log=minimal.log

[image]
name=minimal.img
size=1G
boot=64M

[debconf]
debconf[]="console-common         console-data/keymap/policy     select  Select keymap from full list"
debconf[]="console-common         console-data/keymap/full       select  de-latin1-nodeadkeys"
debconf[]="keyboard-configuration keyboard-configuration/variant select  English (US)"

[modules]
vchiq=install
snd_bcm2835=install

[packages.system]
systemd-sysv=install

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
openssh-server=install
wireless-tools=install
iw=install

; Comment out this section when the system is finished
[packages.development]
vim=install
sudo=install

[user.root]
password=root

[user.pi]
password=raspberry
shell=/bin/bash
home=/home/pi
group[]=sudo

[post]

[services]
ssh=enable

[wifi]

[repo.raspbian]
url=http://mirrordirector.raspbian.org/raspbian
release=stretch
group[]=main
group[]=contrib
group[]=non-free
group[]=rpi

[repo.rasberrypi]
url=http://archive.raspberrypi.org/debian
release=stretch
group[]=main
group[]=ui

[packages.early]
debian-keyring=install
debian-archive-keyring=install
raspberrypi-archive-keyring=install
curl=install
binutils=install
apt-utils=install
ucommon-utils=install

