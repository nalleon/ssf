#!/bin/bash

##################################
#
# Nombre: ej10-menu_sistema.sh
# Objetivo: Creacion de un menu 
#	    interactivo con el usuario
#
# Entradas: Opcion elegida por el usuario
#           
#
# Salidas: Resultado de la opcion elegida por el usuario
# 
#
##################################

echo "Seleccione una opción (1-8):"
echo "1) Porcentaje espacio libre"
echo "2) Espacio libre partición raíz"
echo "3) Usuario actual"
echo "4) Nombre de la máquina"
echo "5) Número de usuarios en el sistema"
echo "6) Total espacio usado"
echo "7) Posición actual"
echo "8) Salir"

read -p "Opción: " opcion

case $opcion in
	# Mostrar porcentaje de espacio libre
        1)
            porcentajeLibre=$(df --output=pcent / | tail -n 1)
            echo "Porcentaje de espacio libre en la partición raíz: '$porcentajeLibre'"
            ;;
	# Mostrar esapacio total libre
         2)
            tamanioLibre=$(df --output=avail / | tail -n 1)
            echo "Espacio libre en partición raíz: '$tamanioLibre'"
            ;;
	# Mostrar el usuario actual
         3)
            usuarioActual=$(whoami)
            echo "Usuario actual: '$usuario_actual'"
            ;;
	# Mostrar el nombre de la maquina
         4)
            nombreMaquina=$(hostname)
            echo "Nombre de la máquina: '$nombre_maquina'"
            ;;
	# Mostrar el numero de usuarios en el sistema
         5)
            numUsuarios=$(who | wc -l)
            echo "Número de usuarios del sistema: '$numUsuarios'"
            ;;
	# Mostrar el espacio total usado
         6)
            espacioTotalUsado=$(du -sh ~ | cut -f1)
            echo "Total de espacio usado en todos los directorios personales: '$espacio_usado'"
            ;;
	# Mostrar posicion actual
	 7)
	posActual=$(pwd)
	echo "Posicion actual: '$posActual'"
	    ;;
	# Salor del script
	 8)
            echo "Saliendo del script."
            break
            ;;
	# Default 
        *)
            echo "Opción no válida. Por favor, selecciona una opción válida."
            ;;
	esac
