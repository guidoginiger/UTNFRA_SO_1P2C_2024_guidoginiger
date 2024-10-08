#!/bin/bash

# Harcodeado el nombre del disco = "/dev/sdc"
# Obtengo el DISCO = sudo fdisk -l |grep "10GiB" | awk '{print $2}' | awk -F ':' '{print $1}

DISCO=$(sudo fdisk -l |grep "10 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')

echo "Particion del disco: $DISCO"
echo

sudo fdisk $DISCO << EOF
n
p
1

+1G
n
e
2


n

+900M
w
EOF
echo

echo "Muestro como quedo: "
sudo fdisk -l $DISCO



