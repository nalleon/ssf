#!/bin/bash
#####################################
# NOMBRE: ej15-rectangulo.sh
# AUTOR: Nabil León Álvarez
#
# OBJETIVO: pintar un rectangulo y 
#	    calcular su area
#
#
# VERSION: 2024-01-22 versión 1.0
######################################

base=7
altura=4

# Comprobar que se pasen los datos

if [ "$#" -eq 1 ]; then
    base=$1
elif [ "$#" -ge 2 ]; then
    base=$1
    altura=$2
fi

# Calculo del area

area=$((base * altura))

# Mostrar información

echo "Vamos a pintar un rectángulo de base: $base, altura: $altura y área: $area"

# Imprimir triangulo

for ((i = 1; i <= altura; i++)); do
    [ $((i % 2)) -eq 0 ] && continue 
	printf "%${base}s\n" | tr ' ' '#'
done
