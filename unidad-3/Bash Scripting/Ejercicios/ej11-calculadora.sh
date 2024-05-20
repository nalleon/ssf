#!/bin/bash

##################################
#
# Nombre: ej11-calculadora.sh
# Objetivo: Creacion de una calculadora de
# 	    de operaciones basicas
#
# Entradas: Opcion elegida por el usuario
#	   (suma, resta, division, multipl)
#           
# Salidas: Resultado de la opcion elegida por el usuario
#
##################################

echo "Seleccione una opción (1-8):"
echo "1) Suma"
echo "2) Resta"
echo "3) Multiplicacion"
echo "4) Division"

# Pedir los números
if [ "$#" -lt 2 ]; then
    read -p "Introduce el primer número: " num1
    read -p "Introduce el segundo número: " num2
else
    num1=$1
    num2=$2
fi


# Función para realizar la suma
suma() {
    result=$((num1 + num2))
    echo "Resultado de la suma: $result"
}

# Función para realizar la resta
resta() {
    result=$((num1 - num2))
    echo "Resultado de la resta: $result"
}

# Función para realizar la multiplicación
multiplicacion() {
    result=$((num1 * num2))
    echo "Resultado de la multiplicación: $result"
}

# Función para realizar la división
division() {
    if [ "$num2" -eq 0 ]; then
        echo "Error: No se puede dividir por cero."
    else
        result=$((num1 / num2))
        echo "Resultado de la división: $result"
    fi
}


# Salida de operaciones
select operacion in "suma" "resta" "multiplica" "divide"; do
    case $operacion in
        "suma") suma ;;
        "resta") resta ;;
        "multiplicacion") multiplicacion ;;
        "division") division ;;
        *)
            echo "Opción no válida. Por favor, selecciona una opción válida."
            ;;
    esac
    break
done
