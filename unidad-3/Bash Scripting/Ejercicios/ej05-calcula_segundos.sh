#!/bin/bash


##################################
#
# Nombre: ej05-calcula_segundos.sh
# Objetivo: Calcular el total de segundos
#	    a partir de días, horas, minutos 
#	    y segundos proporcionados
#
# Entradas: $1: días, $2: horas, $3: minutos, $4: segundos
#
# Salidas: Total de segundos del tiempo
#
##################################

dias=$1
horas=$2
minutos=$3
segundos=$4

totalSegundos=$((dias * 24 * 60 * 60 + horas * 60 * 60 + minutos * 60 + segundos))

echo "$dias días, $horas horas, $minutos minutos y $segundos segundos son $totalSegundos segundos."

