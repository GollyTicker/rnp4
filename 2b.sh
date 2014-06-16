#!/bin/bash
bash reset.sh

sudo /usr/sbin/iptables -A INPUT -p tcp --sport 51000 -s 172.16.1.0/24 -j ACCEPT 
sudo /usr/sbin/iptables -A INPUT -s 172.16.1.0/24 -j DROP
sudo /usr/sbin/iptables -A OUTPUT -p tcp --dport 51000 -d 172.16.1.0/24 -j ACCEPT
sudo /usr/sbin/iptables -A OUTPUT -d 172.16.1.0/24 -j DROP

# mit
# telnet 172.16.1.18 51000
# Es solte "Connection refused" zurückkommen
# überprüfen

# Bei anderen Ports sollte keine Response zurückkommen