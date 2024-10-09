#!/bin/bash

# Harcodeado el nombre del disco = "/dev/sdc"
# Obtengo el DISCO = sudo fdisk -l |grep "10GiB" | awk '{print $2}' | awk -F ':' '{print $1}

DISCO=$(sudo fdisk -l |grep "10 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')
RTA=$(grep -c $DISCO /etc/fstab)

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

echo
echo "Formateo particiones: "

sudo mkfs.ext4 ${DISCO}1
sudo mkfs.ext4 ${DISCO}5
echo

echo "Montaje PERSISTENTE"

if [[$RTA == 0]]; then
	echo "${DISCO}1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
	echo "${DISCO}1 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

fi

sudo mount -a
