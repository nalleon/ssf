!/bin/bash
#####################################
# NOMBRE: ej19-calcula_cambio.sh
# AUTOR: Nabil León Álvarez
#
# OBJETIVO: simular deposito de banco para calcular
#           euros ganados
#
#
# VERSION: 2024-01-22 versión 1.0
######################################

# Verificar que se proporciona un arg
if [ "$#" -ne 1 ]; then
    echo "Error: Debes proporcionar el precio del artículo como único argumento."
    exit 100
fi

# Precio articulo
precioArt=$1

# Solicitar la cantidad de dinero pagado
read -p "Indique el dinero pagado: " dineroEntr

# Calcular cambio
cambio=$(($dineroEntr-$precioArt))

# Mostrar informacion de la transacción
echo "Se ha comprado un artículo de $precioArt euros y ha pagado $dineroEntr euros."
echo "El cambio son $cambio euro(s), debe de entregar:"

# Definicion de array para los billetes
billetes=(500 200 100 50 20 10 5 2 1)

# Bucle para calcular el cambio en billetes
for billete in "${billetes[@]}"; do
    cantidad=$(($cambio / $billete))
    if [ $cantidad -gt 0 ]; then
        echo "$cantidad billete(s) de $billete euro(s)"
        cambio=$(($cambio % $billete))
    fi
done
