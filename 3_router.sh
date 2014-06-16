#Source
sudo /sbin/route add -net 192.168.18.0/24 gw 192.168.17.2 dev eth1

#Target
sudo /sbin/route add -net 192.168.17.0/24 gw 192.168.18.2 dev eth1

#Source
# ping -s 1000 -c 4 192.168.x.x -W 1
#Target
# ping -s 1000 -c 4 192.168.x.x -W 1