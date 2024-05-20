#!/bin/bash

##################################
#
# Nombre: ej01-resta.sh
# Objetivo: Realizar la resta de dos numeros
#
# Entradas: ejemplos de bucles for
#
# Salidas: Resta de ambos numeros
# 
#
##################################


echo "Itero sobre elementos del disco (ficheros, directorios, etc)"
for elem in *.??
do
	echo $(stat -c "%A %a %n" $elem)
done
echo ""

echo "Iterar sobre el resultado de comandos: "
for result in "$(ls)"
do
	echo "Un resultado fue '$result'"
done
