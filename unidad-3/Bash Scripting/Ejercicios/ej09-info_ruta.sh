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
if [ -e "$elem" ]
 then 
	echo "$elem Existe"
else
	echo "Lo siento, '$elem' NO existe"
	exit 
fi

if [ -f "$elem" ]
then 
	echo "$elem es un FICHERO"
elif [ -d "$elem" ]
then
	echo "$elem es un DIRECTORIO"
elif [ -h "$elem" ]
then
	echo "$elem es un ENLACE"
else 
	echo "$elem es de otro tipo"
fi

echo "PERMISOS"
if  [ -r "$elem" ]
then 
	echo "$elem tiene permiso de LECTURA"
else 	
	echo "$elem NO tiene permiso de LECTURA"
fi
if  [ -w "$elem" ]
then 
        echo "$elem tiene permiso de ESCRITURA"
else    
        echo "$elem NO tiene permiso de ESCRITURA"
fi
if  [ -x "$elem" ]
then 
        echo "$elem tiene permiso de EJECUCIÓN/ACCESO"
else    
        echo "$elem NO tiene permiso de EJECUCIÓN/ACCESO"
fi

if [ -s "$elem" ]
then 
	echo "$elem NO está VACÍO"
else 
	echo "$elem está VACÍO"
fi
