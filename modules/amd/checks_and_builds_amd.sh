#!/bin/bash

#Mostrar AMD como procesador objetivo, y mostrar a AMD Stoney Ridge, AMD Bristol Ridge y a AMD Ryzen como opciones de procesadores compatibles
cat << "Q11"
PROCESADOR OBJETIVO: AMD
PREGUNTA 1.1 ¿A qué línea de procesadores AMD pertenece tu procesador?
- AMD Stoney Ridge (SR)
- AMD Bristol Ridge (BR)
- AMD Ryzen (RZ)

Ingresa la opción adecuada en función de tu caso:
Q11

#Leer la respuesta del usuario
read -n 2 amd_cpu_line
#Limpiar la pantalla
clear
# Si se ingresa a AMD Stoney Ridge como opción (SR), llamar al script Módulo 2 para AMD Stoney Ridge, ubicado en la carpeta modules/amd de la carpeta raíz del proyecto
if [ "$amd_cpu_line" == "SR" ]; then
    bash modules/amd/amd_builders/ridges/amd_stoney_ridge_build.sh
# Si se ingresa a AMD Bristol Ridge como opción (BR), llamar al script Módulo 2 para AMD Bristol Ridge, ubicado en la carpeta modules/amd de la carpeta raíz del proyecto
elif [ "$amd_cpu_line" == "BR" ]; then
    bash modules/amd/amd_builders/ridges/amd_bristol_ridge_build.sh
# Si se ingresa a AMD Ryzen como opción (RZ), llamar al script Módulo 2 para AMD Ryzen, ubicado en la carpeta modules/amd de la carpeta raíz del proyecto
elif [ "$amd_cpu_line" == "RZ" ]; then
    bash modules/amd/amd_builders/ryzen/amd_ryzen_build.sh
fi
