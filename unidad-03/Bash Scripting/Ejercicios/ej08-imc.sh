#!/bin/bash
##################################
#
# Nombre: ej08-imc.sh
# Objetivo: Calcula y clasifica el imc
# 	    introducido por el usuario
#
# Entradas: $1: altura, $2: peso
#
# Salidas: Valor y clasificación imc
#
# Versión: 2024-01-16 Versión inicial 1.0
##################################



# Verificación de dos parámetros
if [ "$#" -ne 2 ]; then
    echo "Error: Debes proporcionar la altura (en centímetros) y el peso (en Kg)."
    exit 1
fi

# Obtener los valores de altura y peso
altura=$1
peso=$2

# Calculo del IMC
imc=$((10000 * peso / (altura ** 2)))

# Mostrar el valor del IMC
echo "El IMC es: $imc"

# Clasificación según la tabla de la OMS
if [ "$imc" -le 17 ]; then
    echo "Clasificación: Delgadez severa"
elif [ "$imc" -le 19 ]; then
    echo "Clasificación: Delgadez moderada"
elif [ "$imc" -le 23 ]; then
    echo "Clasificación: Delgadez leve"
elif [ "$imc" -le 27 ]; then
    echo "Clasificación: Normal"
elif [ "$imc" -le 29 ]; then
    echo "Clasificación: Sobrepeso"
elif [ "$imc" -le 34 ]; then
    echo "Clasificación: Obesidad leve"
elif [ "$imc" -le 39 ]; then
    echo "Clasificación: Obesidad media"
elif [ "$imc" -le 44 ]; then
    echo "Clasificación: Obesidad mórbida"
else
    echo "Clasificación: Obesidad extrema"
fi
