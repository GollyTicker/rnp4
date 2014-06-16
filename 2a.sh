#!/bin/bash
bash reset.sh


# Alte Regeln Löschen
# sudo /usr/sbin/iptables -D INPUT -s 172.16.1.0/24 -j ACCEPT
# sudo /usr/sbin/iptables -D OUTPUT -d 172.16.1.0/24 -j ACCEPT

# Sperre Zugriff
sudo /usr/sbin/iptables -I INPUT -s 172.16.1.0/24 -j DROP
sudo /usr/sbin/iptables -I OUTPUT -d 172.16.1.0/24 -j DROP

# Der zugang zu diesem Rechner ist nun gesperrt.
# Beim telnet connection blockiert das Programm nach dem Trying 172.16.....


