#!/bin/bash

# Verificar si cgpt y pv están instalados
if ! command -v cgpt &>/dev/null || ! command -v pv &>/dev/null; then
    echo "ERROR: Las dependencias 'cgpt' y 'pv' no están instaladas."
    echo "Por favor, instala estas dependencias antes de ejecutar esta herramienta."
    echo "Saliendo..."
    exit 1
fi

# Mensaje de bienvenida
clear
cat << "EOF"
-------------------------------------------------------------------------------------------
|                                                                                         |
|                                    CHROMEOS BOOTSTRAP UTILITY                           |
|                                              v1.0                                       |
|                                  Developed by Rayden_Berzerk409                         |
-------------------------------------------------------------------------------------------
Bienvenido a la herramienta ChromeOS Bootstrap Utility, una utilidad desarrollada en Bash 
para facilitar el proceso de creación de IMGs arrancables del sistema operativo Chrome OS 
de Google para ser utilizado en PCs que no sean Chromebooks, gracias al proyecto Brunch 
Framework.
El funcionamiento de esta herramienta consta de las siguientes fases:
FASE 1 - DEFINIR EL TIPO DE CPU Y ESCOGER LA VERSIÓN DE CHROME OS
En esta fase, escogerás la versión de Chrome OS que quieras instalar, y también te
serán realizadas algunas preguntas de verificación, para construir la imagen en base
al tipo de PC que tengas, si es compatible con los requisitos (muy importante).
FASE 2 - CONSTRUCCIÓN DE LA IMAGEN DE CHROME OS
Una vez escogida la versión a instalar de Chrome OS, y definido el tipo de PC, esta
utilidad descargará los archivos necesarios y los preparará para comenzar el 
proceso de creación de la imagen arrancable de Chrome OS.
FASE 3 - LISTO PARA INSTALAR
Una vez la imagen esté creada, podrás utilizarla para instalar Chrome OS en tu equipo
siguiendo los 3 métodos de instalación oficiales: disco completo, dual-boot o Live
CD.
Espero que esta utilidad te resulte útil.
-------------------------------------------------------------------------------------------
EOF

# Esperar a que el usuario presione una tecla antes de continuar
read -n 1 -s -r -p "Presiona cualquier tecla para continuar..."

# Limpiar la pantalla
clear

#Definir función para mostrar el cuestionario de la primera parte de la Fase 1 de la utilidad
cat << "Q1"
FASE 1 - PARTE 1 - DEFINICIÓN DEL TIPO DE CPU
PREGUNTA 1: ¿Qué tipo de CPU tienes? (en cuanto a la marca)
- Intel (I)
- AMD (A)

Ingresa I o A dependiendo del CPU que tengas:
Q1

# Leer la respuesta del usuario
read -n 1 cpu_type

clear

if [ "$cpu_type" == "I" ]; then
    # Llamar al script Módulo 2 para Intel, ubicado en la carpeta modules de la carpeta raíz del proyecto
    bash modules/intel/checks_and_build_intel.sh
elif [ "$cpu_type" == "A" ]; then
    # Llamar al script Módulo 2 para AMD, ubicado en la carpeta modules de la carpeta raíz del proyecto
    bash modules/amd/amd_builders/checks_and_build_amd.sh
fi





