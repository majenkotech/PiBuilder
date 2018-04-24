[system]
variant=minbase
version=stretch
mirror=http://archive.raspbian.org/raspbian
hostname=raspberrypi
log=test.log

[image]
name=test.img
size=2G
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

[packages.tools]
vim=install
sudo=install

[user.root]
password=root

[user.pi]
password=raspberry
shell=/bin/bash
home=/home/pi
group[]=sudo

[directories]

[files]

[post]

[services]
ssh=enable

[wifi]
ssid=YourSSID
psk=YourPSK

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

[config]
