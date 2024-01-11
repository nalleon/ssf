#!/bin/bash

##################################
#
# Nombre: ej07-compara.sh
# Objetivo: Comprarar dos numeros
#
# Entradas: $1: Número1, $2: Número2
#
# Salidas: Desglose en días, horas, minutos y segundos
#
# Versión: 2024-01-11 Versión inicial 1.0
##################################

if [ $# -eq 0 ]
 then
  echo "Introduzca un parámetro"
  exit 1
fi
