#!/bin/bash

grep MemTotal /proc/meminfo > repogit/UTNFRA_SO_1P2C_2024_guidoginiger/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

# Cuando lo quiero ejecutar me aparece permiso denegado.
dmidecode -t chassis | grep "Manufacturer" >> repogit/UTNFRA_SO_1P2C_2024_guidoginiger/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt 

cat repogit/UTNFRA_SO_1P2C_2024_guidoginiger/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt
