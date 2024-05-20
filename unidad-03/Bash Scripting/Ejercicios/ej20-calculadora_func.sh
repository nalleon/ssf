#!/bin/bash
#####################################
# NOMBRE: ej20-calculadora_func.sh
# AUTOR: Nabil León Álvarez
#
# OBJETIVO:
#
#
# VERSION: 2024-01-22 versión 1.0
#####################################

# Función para operar la suma
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
multiplica() {
    result=$((num1 * num2))
    echo "Resultado de la multiplicación: $result"
}

# Función para realizar la división
divide() {
    if [ "$num2" -eq 0 ]; then
        echo "Error: No se puede dividir por cero."
    else
        result=$((num1 / num2))
        echo "Resultado de la división: $result"
    fi
}

# Pedir los números si NO se proporcionan
if [ "$#" -lt 2 ]; then
    read -p "Introduce el primer número: " num1
    read -p "Introduce el segundo número: " num2
else
    num1=$1
    num2=$2
fi

# Menu para operaciones
select operacion in "suma" "resta" "multiplica" "divide"; do
    case $operacion in
        "suma")
            suma
            ;;
        "resta")
            resta
            ;;
        "multiplica")
            multiplica
            ;;
        "divide")
            divide
            ;;
        *)
            echo "Opción no válida. Por favor, selecciona una opción válida."
            ;;
    esac
    break
done
