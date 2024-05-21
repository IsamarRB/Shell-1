#!/bin/bash

# Pedir al usuario que ingrese su fecha de nacimiento
read -p "Por favor, introduce tu fecha de nacimiento (dd/mm/aaaa): " fecha_nacimiento

# Invocar a Python para calcular la edad
python - <<END
from datetime import datetime
import sys

fecha_nacimiento = sys.argv[1]
fecha_nacimiento = datetime.strptime(fecha_nacimiento, "%d/%m/%Y")
fecha_actual = datetime.now()
edad = fecha_actual.year - fecha_nacimiento.year

if (fecha_actual.month, fecha_actual.day) < (fecha_nacimiento.month, fecha_nacimiento.day):
    edad -= 1

print(f"Tienes {edad} años.")
END "$fecha_nacimiento"
