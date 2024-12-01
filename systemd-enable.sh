#!/usr/bin/sh

## run this as root: from root account, with sudo or, if polkit already installed - as user (the latter will ask for password several times)

# general
systemctl enable fstrim.timer paccache.timer reflector.timer haveged.service systemd-timesyncd.service avahi-daemon.service NetworkManager.service bluetooth.service

# snapper
systemctl enable snapper-boot.timer snapper-cleanup.timer snapper-timeline.timer

# mullvad vpn
systemctl enable mullvad-daemon.service mullvad-early-boot-blocking.service

# nvidia
systemctl enable nvidia-persistenced.service nvidia-resume.service nvidia-suspend.service nvidia-hibernate.service

# tlp
# we mask rfkill before enabling tlp, because tlp readme requires us to do so
systemctl mask systemd-rfkill.service systemd-rfkill.socket
systemctl enable tlp.service
