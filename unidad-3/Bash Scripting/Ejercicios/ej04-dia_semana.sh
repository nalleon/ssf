#!/bin/bash

##################################
#
# Nombre: ej04-dia_semana.sh
# Objetivo: Obtener el día de la semana para una fecha dada
#
# Entradas: $1: día, $2: mes, $3: año
#
# Salidas: Día de la semana para la fecha indicada
#
##################################

# Verificar si se proporcionan tres argumentos
if [ $# -ne 3 ]; then
    echo "Error: Proporciona tres argumentos (día, mes, año)."
    exit 1
fi

# Obtener la fecha completa en formato "día/mes/año"
fecha="$1/$2/$3"

# Utilizar el comando date para obtener el día de la semana
diaSemana=$(date -d "$fecha" "+%A")

# Mostrar el resultado
echo "El día de la semana de la fecha indicada ($fecha) fue $diaSemana."

