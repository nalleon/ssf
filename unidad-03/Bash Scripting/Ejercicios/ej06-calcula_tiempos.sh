#!/bin/bash

##################################
#
# Nombre: ej06-calcula_tiempos.sh
# Objetivo: Convertir segundos en días, 
#	    horas, minutos y segundos
#
# Entradas: $1: Número de segundos
#
# Salidas: Cantidad de  días, horas,
#	    minutos y segundos
#
##################################

if [ $# -eq 0 ]
 then
  echo "Introduzca un parámetro"
  exit 1
fi

total=$1
segundos=$total

# 60*60*24= 86400
# 60*60 = 3600
dias=$((segundos / (86400)))
segundos=$((segundos % (86400)))
horas=$((segundos / (3600)))
segundos=$((segundos % (3600)))
minutos=$((segundos / 60))
segundos=$((segundos % 60))

echo "$total segundos son $dias días, $horas horas, $minutos minutos y $segundos segundos"

	

