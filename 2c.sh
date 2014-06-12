#!/bin/bash
bash reset.sh

sudo /usr/sbin/iptables -A INPUT -p tcp -s 172.16.1.0/24 -j DROP
sudo /usr/sbin/iptables -A INPUT -s 172.16.1.0/24 -j ACCEPT

sudo /usr/sbin/iptables -A OUTPUT -p tcp -d 172.16.1.0/24 -j DROP
sudo /usr/sbin/iptables -A OUTPUT -d 172.16.1.0/24 -j ACCEPT

# einfach DROP und ACCEPT vertauschen

# mit
# telnet 172.16.1.18 51000
# und
# socat - udp-connect:172.16.1.18:51000
# überprüfen