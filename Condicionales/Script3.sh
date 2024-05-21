#!/bin/bash

# Solicitar al usuario que introduzca un número
read -p "Introduce un número: " valor

# Verificar si el número es divisible por 2
if [ $((valor % 2)) -eq 0 ]; then
    echo "El valor ingresado es divisible por 2."
else
    echo "El valor ingresado no es divisible por 2."
fi

