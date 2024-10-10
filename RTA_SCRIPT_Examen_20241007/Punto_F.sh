#!/bin/bash

HASH=$(sudo grep -E $(whoami) /etc/shadow | awk -F ':' '{print $2}')

# Da ERROR
sudo su -c echo "Mi IP Publica es: $(curl -s ifconfig.me)" > repogit/UTNFRA_SO_1P2C_2024_guidoginiger/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt

echo "Mi usuario es: $(whoami)" >> repogit/UTNFRA_SO_1P2C_2024_guidoginiger/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt

echo "El Hash de mi Usuario es: "$HASH" " >> repogit/UTNFRA_SO_1P2C_2024_guidoginiger/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt

#Da ERROR
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> repogit/UTNFRA_SO_1P2C_2024_guidoginiger/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
echo
