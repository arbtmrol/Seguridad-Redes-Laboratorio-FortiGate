scripts_linux.sh

# WEB-SERVER (VLAN 20)
ip addr flush dev eth0
ip link set eth0 down
ip link set eth0 up
ip addr add 192.168.33.2/28 dev eth0
ip route add default via 192.168.33.1

# DB-SERVER (VLAN 30)
ip addr flush dev eth0
ip link set eth0 down
ip link set eth0 up
ip addr add 192.168.25.2/28 dev eth0
ip route add default via 192.168.25.1