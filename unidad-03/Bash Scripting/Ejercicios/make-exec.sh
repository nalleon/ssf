#!/bin/bash

##################################
#
# Nombre: ej09-info_ruta.sh
# Objetivo: Comprarar dos numeros
#
# Entradas: $1: Número1, $2: Número2
#
# Salidas: Desglose en días, horas, minutos y segundos
#
# Versión: 2024-01-11 Versión inicial 1.0
##################################

elem=$1

if [ "$elem" = "" ]
 then
  read -p "Introduzca el elemento: " elem
  exit 1
fi

if [ ! -f "$elem"] && [ ! -x "$elem"]  
then  
	chmod u+x "$elem"
fi

