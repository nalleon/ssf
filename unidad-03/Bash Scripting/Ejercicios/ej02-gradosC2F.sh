  GNU nano 6.2                                        ej01-resta.sh                                                  
#!/bin/bash

##################################
#
# Nombre: ej02-gradosC2F.sh
# Objetivo: Realizar conversion de grados celsius
#	    a Fahrenheit (f=c*1.8+32)
#
# Entradas: $c: grados celsius a convertir,
#
# Salidas: conversión a Fahrenheit
# 
#
##################################

c=$1

resultado=$(echo "c*1.8+32"|bc)

echo "El resultado de la conversion es de $resultado F"
 

