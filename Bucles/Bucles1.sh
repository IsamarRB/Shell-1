#!/bin/bash

# Obtener el PID del script actual
pid_del_script=$$

# Inicializar el contador de intentos
intentos=0

echo "Intenta adivinar el PID del script."

# Bucle para adivinar el PID
while true; do
    # Pedir al usuario que adivine
    read -p "Ingresa un número: " numero_ingresado

    # Incrementar el contador de intentos
    ((intentos++))

    # Comprobar si el número ingresado es correcto
    if [[ $numero_ingresado -eq $pid_del_script ]]; then
        echo "¡Correcto! El PID del script es $pid_del_script."
        echo "Número de intentos: $intentos"
        break
    elif [[ $numero_ingresado -lt $pid_del_script ]]; then
        echo "El número ingresado es menor que el PID del script."
    else
        echo "El número ingresado es mayor que el PID del script."
    fi
done

