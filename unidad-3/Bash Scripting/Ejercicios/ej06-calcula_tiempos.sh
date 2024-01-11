#!/bin/bash

##################################
#
# Nombre: ej06-calcula_tiempos.sh
# Objetivo: Convertir segundos en días, horas, minutos y segundos
#
# Entradas: $1: Número de segundos
#
# Salidas: Desglose en días, horas, minutos y segundos
#
##################################

if [ $# -eq 0 ]
 then
  echo "Introduzca un parámetro"
  exit 1
fi

total=$1
segundos=$total

dias=$(($segundos / (60 * 60 * 24)))
segundos=$(($segundos % (60 * 60 * 24)))
horas=$((segundos / (60 * 60)))
segundos=$((segundos % (60 * 60)))
minutos=$((segundos / 60))
segundos=$((segundos % 60))

echo "$total segundos son $dias días, $horas horas, $minutos minutos y $segundos segundos"

	

