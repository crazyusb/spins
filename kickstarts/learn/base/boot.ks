selinux --enforcing
firewall --enabled --service=mdns
xconfig --startxonboot
zerombr
clearpart --all
part / --size 8192 --fstype ext4
services --enabled=NetworkManager,ModemManager --disabled=systemd-networkd,chrony-wait,NetworkManager-wait-online
network --bootproto=dhcp --device=link --activate
rootpw --lock --iscrypted locked
shutdown
