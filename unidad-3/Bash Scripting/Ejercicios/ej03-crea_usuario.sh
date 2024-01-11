#!/bin/bash

##################################
#
# Nombre: ej02-crea_usuario.sh
# Objetivo: Crear un mensaje de bienvenida y mostrar datos del usuario
#
# Entradas: $1: nombre, $2: apellidos, $3: usuario
#
# Salidas: Mensaje de bienvenida y datos del usuario
#
##################################

nombre=$1
apellidos=$2
usuario=$3

aleatorio=$((RANDOM % 1000 + 1000))

echo "Bienvenido, $nombre"
echo "Tus datos son: $nombre $apellidos"
echo "Vamos a crear tu usuario: $usuario"
echo "Tu nueva ID es $aleatorio"

