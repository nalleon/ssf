#!/bin/bash

##################################
#
# Nombre: ej01-resta.sh
# Objetivo: Realizar la resta de dos numeros
#
# Entradas: $num1: primer numero,
#           $num2: segundo numero
#
# Salidas: Resta de ambos numeros
# 
#
##################################

num1=$1
num2=$2

resultado=$((num1-num2))

echo "El resultado de la resta es $resultado"
 
