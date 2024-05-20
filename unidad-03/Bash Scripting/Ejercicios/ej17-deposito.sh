#!/bin/bash
#####################################
# NOMBRE: ej17-deposito.sh
# AUTOR: Nabil León Álvarez
#
# OBJETIVO: simular deposito de banco para calcular
#           euros ganados
#
#
# VERSION: 2024-01-22 versión 1.0
######################################

# Verificar que se proporcionen 3 argumentos
if [ "$#" -ne 3 ]; then
    echo "Error: Se debe de proporcionar la cantidad del depósito, el %TAE del interés y la cantidad de años."
    exit 100
fi

# Valores de depósito, %TAE e años
cantidadDeposito=$1
porcentajeTAE=$2
aniosDeposito=$3

# Mostrar información inicial
echo "Mostrando los datos para un depósito de $cantidadDeposito euros con interés $porcentajeTAE% a $aniosDeposito años:"

# Calculo
for ((i = 1; i <= aniosDeposito; i++)); do
    interes=$(echo "$cantidadDeposito * $porcentajeTAE / 100" | bc)
    cantidadDeposito=$(echo "$cantidadDeposito + $interes" | bc)
    gananciaTotal=$(echo "$cantidadDeposito - $1" | bc)

    echo "Año $i: $cantidadDeposito euros (en total has ganado $gananciaTotal euros)"
done
