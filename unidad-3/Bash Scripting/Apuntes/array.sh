#!/bin/bash

##################################
#
# Nombre: array.sh
# Autor: Nabil L.A.
# Objetivo: ejemplos de array simple
#
# Entradas: Ninguna
#
# Salidas: Ninguna
#
##################################


listaCompra=("pan" "huevos" "agua" "sartén" "aceite" "sal fina" "sal gruesa")

# Mostrar el primer elemento

echo "Mi lista es ${listaCompra[1]}"

# Mostrar elemntos todos juntos
for elem in "${listaCompra[*]}" 
do
        echo "Tengo que comprar: $elem"
done
echo ""

# Mostrar elementos uno a uno
for elem in "${listaCompra[@]}" 
do
	echo "Tengo que comprar: $elem"
done
echo ""

# Contador de elementos
echo "El número de elementos es ${#listaCompra[@]}"


# Ver indice

echo "El índice de los elementos es: ${!listaCompra[@]}"

# Insertar  un elemento por el final

echo "Insertar un elemento (por el final): "
listaCompra+=("leche")
for elem in "${listaCompra[@]}"
do
	echo "Tengo que comprar: $elem"
done

##  Insertar un elemento al principio
listaCompra=("medicina" ${listaCompra[@]})
for elem in "${listaCompra[@]}"
do
	echo "Tengo que comprar: $elem"
done

# Insertar en X posicion

listaCompra=(${listaCompra[@]::2} "batido" ${listaCompra[@]:2})
for elem in "${listaCompra[@]}"
do
	echo  "Tengo que comprar: $elem"
done

# Insertar en la mitad

mitad=$((${listaCompra[@]} / 2))
compra=$(${listaCompra[@]::mitad} "refresco" ${listaCompra[@]:mitad})

for elem in "${listaCompra[@]}"
do
	echo "Tengo que comprar: $elem"
done

# :: hasta : desde

# Borrar un elemento
echo "El elemento 4 es ${compra[4]}"
echo "Lo voy a borrar"
unset listaCompra[4]
echo ${!listaCompra[@]}

listaCompra[4]="atún"
listaCompra[20]="lentejas"
echo ${!listaCompra[@]}

## Borrar todo el array
echo "Compra terminada"
unset listaCompra


####### DECLARAR ARRAYS
echo "Declaraciones de array"
echo "-----------------"

a1=(1 2 3 4 5)

a2[0]=1
a2[1]=2
a3[2]=3

# Vacio
declare -a a3 

echo "-----------------"
declare -A animales

animales["vaca"]="muuuuuuuuuuuuuuu"
animales["gato"]="miauuuuuuuuuuuuu"
animales["perro"]="gauuuuuuuuuuuuu"

miAnimal="perro"

echo "Yo tengo un $miAnimal y hace ${animales[$miAnimal]}"
