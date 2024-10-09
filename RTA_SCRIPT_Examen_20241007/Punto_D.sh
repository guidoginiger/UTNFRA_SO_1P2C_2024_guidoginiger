#!/bin/bash

# Estructura Asimetrica
mkdir -p ~/Estructura_Asimetrica/correo ~/Estructura_Asimetrica/cliente

# touch
touch ~/Estructura_Asimetrica/correo/cartas_{1..100}
touch ~/Estructura_Asimetrica/clientes/cartas_{1..100}
touch ~/Estructura_Asimetrica/correo/carteros_{1..10}

# Validacion
tree ~/Estructura_Asimetrica/ --noreport | pr -T5 -W80 --column=4
