#!/bin/bash

LISTA=$1
USUARIO_HASH=$2
HASH=$(sudo grep -i $USUARIO_HASH /etc/shadow | awk -F ':' '{print $2}')

ANT_IFS=$IFS
IFS=$'\n'

for LINEA in `cat $LISTA | grep -v ^#`
do

	USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
	GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')

	if [$(grep $GRUPO -c /etc/group) == 0]; then
		sudo groupadd $GRUPO
		sudo useradd -m -s /bin/bash -p "$HASH" -G $GRUPO $USUARIO
		echo "--------------------------------"
		echo
	fi

done

IFS=$ANT_IFS


#echo "Creo Grupos"
#sudo groupadd p1c2_2024_gAlumno
#sudo groupadd p1c2_2024_gProfesores

#echo "Creo Usuarios"
#sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A1
#sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A2
#sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A3
#sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores p1c2_2024_P1

