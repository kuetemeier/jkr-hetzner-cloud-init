#!/bin/bash

# packages

apt-get -y update
apt-get -y upgrade

# secure sshd

sed -i 's/[#]*PermitRootLogin yes/PermitRootLogin without-password/g' /etc/ssh/sshd_config
sed -i 's/[#]*PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config

systemctl restart sshd

# activate firewall

ufw allow proto tcp from any to any port 22,80,443
ufw -f default deny incoming
ufw -f default allow outgoing

ufw -f enable

# time sync

timedatectl set-ntp on

# fail2ban

apt-get install -y fail2ban
