#!/bin/bash

# Función para agregar un archivo
agregar_archivo() {
    read -p "Introduce el nombre del archivo a agregar: " nombre_archivo
    touch "$nombre_archivo"
    echo "Archivo '$nombre_archivo' agregado con éxito."
}

# Función para mostrar la lista de archivos
mostrar_archivos() {
    echo "Espera 3 segundos para obtener la lista de archivos..."
    sleep 3
    echo "Lista de archivos actual:"
    ls -l
}

# Función para borrar un archivo
borrar_archivo() {
    read -p "¿Deseas borrar un archivo? (s/n): " respuesta
    if [[ $respuesta == "s" ]]; then
        read -p "Introduce el nombre del archivo a borrar: " nombre_archivo
        read -p "Introduce el formato del archivo: " formato_archivo
        archivo_completo="${nombre_archivo}.${formato_archivo}"
        if [[ -f $archivo_completo ]]; then
            rm "$archivo_completo"
            echo "Archivo '$archivo_completo' encontrado y borrado."
        else
            echo "El archivo '$archivo_completo' no existe."
        fi
    else
        echo "Ok, no borraremos ningún archivo."
    fi
}

# Ejecutar las funciones
agregar_archivo
mostrar_archivos
borrar_archivo

