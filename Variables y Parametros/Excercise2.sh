#!/bin/bash

read -p "Introduce tu actividad favorita: " actividad
read -p "Introduce tu comida favorita: " comida

echo "Mi actividad favorita es $actividad. Mi comida favorita es $comida."

nombreFichero="Excercise2.sh"

actividad=$actividad
comida=$comida


echo "En el fichero $nombreFichero existen $# parámetros"

# uno=$1
# dos=$2
# echo "Parámetros: $#"