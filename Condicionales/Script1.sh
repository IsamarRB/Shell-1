#!/bin/bash

# Verificar si el ID del usuario (UID) es 0, que corresponde al usuario root
if [ "$(id -u)" -ne 0 ]; then
    echo "No tiene acceso como root"
    exit 1
fi
