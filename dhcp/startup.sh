#!/bin/bash

echo "nameserver 10.0.0.253" > /etc/resolv.conf
ifconfig eth0 192.168.0.254
apt-get update -y
apt-get install -y isc-dhcp-server
echo "Aguardando"
sleep 3
echo "Finalizado"
/etc/init.d/isc-dhcp-server restart