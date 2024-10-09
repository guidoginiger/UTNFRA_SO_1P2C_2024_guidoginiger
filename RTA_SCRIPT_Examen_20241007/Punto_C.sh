#!/bin/bash

#HASH=$(sudo grep -i $USUARIO_HASH /etc/shadow | awk -F ':' '{print $2}')

#echo "Creo Grupos"
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

#echo "Creo Usuarios"
sudo useradd -m -s /bin/bash -p sudo grep -i p1c2_2024_gAlumno p1c2_2024_A1 /etc/shadow | awk -F ':' '{print $2} -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores p1c2_2024_P1

