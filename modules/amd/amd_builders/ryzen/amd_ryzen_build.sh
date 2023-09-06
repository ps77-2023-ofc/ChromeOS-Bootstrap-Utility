#!/bin/bash

echo "PROCESADOR OBJETIVO: AMD Ryzen"
    cat << "Q13-1"
    Pregunta 1.3 Escoge la versión de Chrome OS y Brunch Framework que vas a emplear:
    1. Brunch r87 / Chrome OS v87 (codename zork)
    2. Brunch r88 / Chrome OS v88 (codename zork)
    3. Brunch r89 / Chrome OS v89 (codename zork)
    4. Brunch r90 / Chrome OS v90 (codename zork)
    5. Brunch r93 / Chrome OS v92, v93 (codename zork)
    6. Brunch r94 / Chrome OS v94 (codename zork)
    7. Brunch r97 / Chrome OS v96, v97 (codename zork)
    8. Brunch r100 / Chrome OS v98, v99, v100 (codename zork)
    9. Brunch r101 / Chrome OS v101 (codename zork)
    10. Brunch r107 / Chrome OS v106, v107 (codename gumboz)
    11. Brunch r109 / Chrome OS v108, v109 (codename gumboz)
    12. Brunch r110 / Chrome OS v110 (codename gumboz)
    13. Brunch r111 / Chrome OS v111 (codename gumboz)
    14. Brunch r113 / Chrome OS v112, v113 (codename gumboz)
    15. Brunch r114 / Chrome OS v114 (codename gumboz)
    16. Brunch r115 / Chrome OS v115 (codename gumboz)

    Ingresa el número de la opción que desees:
Q13-1
#Leer la respuesta del usuario
read -n 2 amd_ryzen_cros_version
#Limpiar la pantalla
clear
#Si se ingresa la opción 1 (Brunch r83 / Chrome OS v83), comenzar la descarga de archivos necesarios
if [ "$amd_ryzen_cros_version" == "1" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE CHROME OS: v87"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r87"
    echo "CODENAME DESTINO DEL RECOVERY: zork"
    echo "Comenzando la descarga de archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r87-stable-20201227/brunch_r87_stable_20201227.tar.gz" -O "brunch.tar.gz" -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13505.111.0_zork_recovery_stable-channel_mp-v4.bin.zip" -O "recovery.zip" -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf "brunch.tar.gz" -C cros_workfolder
    unzip -qq "recovery.zip" -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando el archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_13505.111.0_zork_recovery_stable-channel_mp-v4.bin cros_workfolder/recovery.bin
    echo "Archivo renombrado."
    echo "Comenzando la construcción de la imagen..."
    # Llamar al script de instalación de Chrome OS, ubicado en la raíz de la carpeta cros_workfolder, y proporcionar los argumentos necesarios para indicar donde está el archivo del recovery y a qué carpeta debe ir la imagen de Chrome OS recién creada (en este caso, a la carpeta output del proyecto)
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_ryzen_cros_version" == "2" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r88"
    echo "VERSIÓN DE CHROME OS: v88"
    echo "CODENAME DEL RECOVERY DESTINO: zork"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r88-stable-20210131/brunch_r88_stable_20210131.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13597.105.0_zork_recovery_stable-channel_mp-v4.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_13597.105.0_zork_recovery_stable-channel_mp-v4.bin cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_ryzen_cros_version" == "3" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r89"
    echo "VERSIÓN DE CHROME OS: v89"
    echo "CODENAME DEL RECOVERY DESTINO: zork"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r86-k5.4-stable-20201201/brunch_r86_k5.4_stable_20201201.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13505.111.0_zork_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_13505.111.0_zork_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
fi
elif [ "$amd_ryzen_cros_version" == "4" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r90"
    echo "VERSIÓN DE CHROME OS: v90"
    echo "CODENAME DEL RECOVERY DESTINO: zork"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r87-stable-20201227/brunch_r87_stable_20201227.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13505.111.0_zork_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_13505.111.0_zork_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_ryzen_cros_version" == "5" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
    cat << "Q14-1"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v92
    2. Chrome OS v93
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-1
# Leer la respuesta del usuario
read -n 1 amdryzen_brunch_version_93_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v96), comenzar la descarga de los archivos necesarios
    if [ "$amdryzen_brunch_version_93_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
        echo "VERSIÓN DE CHROME OS: v92"
        echo "CODENAME DEL RECOVERY DESTINO: zork"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r93-stable-20211002/brunch_r93_stable_20211002.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13982.88.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_13982.88.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdryzen_brunch_version_93_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
        echo "VERSIÓN DE CHROME OS: v93"
        echo "CODENAME DEL RECOVERY DESTINO: zork"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r93-stable-20211002/brunch_r93_stable_20211002.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14092.77.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14092.77.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_ryzen_cros_version" == "6" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r94"
    echo "VERSIÓN DE CHROME OS: v94"
    echo "CODENAME DEL RECOVERY DESTINO: zork"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r94-stable-20211121/brunch_r94_stable_20211127.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14150.87.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_14150.87.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_ryzen_cros_version" == "7" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
    cat << "Q14-2"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v96
    2. Chrome OS v97
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-2
# Leer la respuesta del usuario
read -n 1 amdryzen_brunch_version_97_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v96), comenzar la descarga de los archivos necesarios
    if [ "$amdryzen_brunch_version_97_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
        echo "VERSIÓN DE CHROME OS: v96"
        echo "CODENAME DEL RECOVERY DESTINO: zork"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r97-stable-20220121/brunch_r97_stable_20220121.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14268.67.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14268.67.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdryzen_brunch_version_97_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
        echo "VERSIÓN DE CHROME OS: v97"
        echo "CODENAME DEL RECOVERY DESTINO: zork"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r97-stable-20220121/brunch_r97_stable_20220121.tar.gz" -O brunch.tar.gz -P /cros_workfolder 
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14324.62.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14324.62.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_ryzen_cros_version" == "8" ]; then 
echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
    cat << "Q14-3"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 3 versiones de Chrome OS al tiempo:
    1. Chrome OS v98
    2. Chrome OS v99
    3. Chrome OS v100
    ¿Cuál de las 3 versiones de Chrome OS deseas usar para crear la imagen?
Q14-3
# Leer la respuesta del usuario
read -n 1 amdryzen_brunch_version_100_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v96), comenzar la descarga de los archivos necesarios
    if [ "$amdryzen_brunch_version_100_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v98"
        echo "CODENAME DEL RECOVERY DESTINO: zork"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14388.61.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14388.61.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdryzen_brunch_version_100_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v99"
        echo "CODENAME DEL RECOVERY DESTINO: zork"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14526.69.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14526.69.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdryzen_brunch_version_100_cros_version" == "3" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v100"
        echo "CODENAME DEL RECOVERY DESTINO: zork"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14526.69.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando el archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14526.69.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_ryzen_cros_version" == "9" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r101"
    echo "VERSIÓN DE CHROME OS: v101"
    echo "CODENAME DEL RECOVERY DESTINO: zork"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r101-stable-20220529/brunch_r101_stable_20220529.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14588.98.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_14588.98.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_ryzen_cros_version" == "10" ]; then
echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r107"
    cat << "Q14-4"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v106
    2. Chrome OS v107
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-4
# Leer la respuesta del usuario
read -n 1 amdryzen_brunch_version_107_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v96), comenzar la descarga de los archivos necesarios
    if [ "$amdryzen_brunch_version_107_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r107"
        echo "VERSIÓN DE CHROME OS: v106"
        echo "BOARD DESTINO DEL RECOVERY: zork"
        echo "CODENAME DEL RECOVERY DESTINO: gumboz"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r107-stable-20221029/brunch_r107_stable_20221029.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15054.98.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_15054.98.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdryzen_brunch_version_107_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r107"
        echo "VERSIÓN DE CHROME OS: v107"
        echo "BOARD DESTINO DEL RECOVERY: zork"
        echo "CODENAME DEL RECOVERY DESTINO: gumboz"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r107-stable-20221029/brunch_r107_stable_20221029.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15117.112.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_15117.112.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_ryzen_cros_version" == "11" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r109"
    cat << "Q14-5"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v108
    2. Chrome OS v109
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-5
# Leer la respuesta del usuario
read -n 1 amdryzen_brunch_version_109_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v98), comenzar la descarga de los archivos necesarios
    if [ "$amdryzen_brunch_version_109_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r109"
        echo "VERSIÓN DE CHROME OS: v108"
        echo "BOARD DESTINO DEL RECOVERY: zork"
        echo "CODENAME DEL RECOVERY DESTINO: gumboz"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r109-stable-20230201/brunch_r109_stable_20230201.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15183.78.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando el archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_15183.78.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdryzen_brunch_version_109_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r109"
        echo "VERSIÓN DE CHROME OS: v109"
        echo "BOARD DESTINO DEL RECOVERY: zork"
        echo "CODENAME DEL RECOVERY DESTINO: gumboz"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r109-stable-20230201/brunch_r109_stable_20230201.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15236.80.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando el archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_15236.80.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
        echo "Archivo renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_ryzen_cros_version" == "12" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r110"
    echo "VERSIÓN DE CHROME OS: v110"
    echo "BOARD DESTINO DEL RECOVERY: zork"
    echo "CODENAME DEL RECOVERY DESTINO: gumboz"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r110-stable-20230305/brunch_r110_stable_20230305.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15278.72.0_zork_recovery_stable-channel_mp-v7.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando el archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_15278.72.0_zork_recovery_stable-channel_mp-v7.bin cros_workfolder/recovery.bin
    echo "Archivo renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_ryzen_cros_version" == "13" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r111"
    echo "VERSIÓN DE CHROME OS: v111"
    echo "BOARD DESTINO DEL RECOVERY: zork"
    echo "CODENAME DEL RECOVERY DESTINO: gumboz"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r111-stable-20230414/brunch_r111_stable_20230414.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15329.59.0_zork_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando el archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_15329.59.0_zork_recovery_stable-channel_mp-v8.bin cros_workfolder/recovery.bin
    echo "Archivo renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_ryzen_cros_version" == "14" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r113"
    cat << "Q14-6"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v112
    2. Chrome OS v113
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-6
# Leer la respuesta del usuario
read -n 1 amdryzen_brunch_version_113_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v112), comenzar la descarga de los archivos necesarios
    if [ "$amdryzen_brunch_version_113_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r113"
        echo "VERSIÓN DE CHROME OS: v112"
        echo "BOARD DESTINO DEL RECOVERY: zork"
        echo "CODENAME DEL RECOVERY DESTINO: gumboz"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r113-stable-20230603/brunch_r113_stable_20230603.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15359.58.0_zork_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando el archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_15359.58.0_zork_recovery_stable-channel_mp-v8.bin cros_workfolder/recovery.bin
        echo "Archivo renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdryzen_brunch_version_113_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Ryzen"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r113"
        echo "VERSIÓN DE CHROME OS: v113"
        echo "BOARD DESTINO DEL RECOVERY: zork"
        echo "CODENAME DEL RECOVERY DESTINO: gumboz"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r113-stable-20230603/brunch_r113_stable_20230603.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15393.58.0_zork_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando el archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_15393.58.0_zork_recovery_stable-channel_mp-v8.bin cros_workfolder/recovery.bin
        echo "Archivo renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_ryzen_cros_version" == "15" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r114"
    echo "VERSIÓN DE CHROME OS: v114"
    echo "BOARD DESTINO DEL RECOVERY: zork"
    echo "CODENAME DEL RECOVERY DESTINO: gumboz"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r114-stable-20230716/brunch_r114_stable_20230716.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15437.63.0_zork_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando el archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_15437.63.0_zork_recovery_stable-channel_mp-v8.bin cros_workfolder/recovery.bin
    echo "Archivo renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_ryzen_cros_version" == "16" ]; then
    echo "PROCESADOR OBJETIVO: AMD Ryzen"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r115"
    echo "VERSIÓN DE CHROME OS: v115"
    echo "BOARD DESTINO DEL RECOVERY: zork"
    echo "CODENAME DEL RECOVERY DESTINO: gumboz"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r115-stable-20230814/brunch_r115_stable_20230814.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_15474.84.0_zork_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando el archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_15474.84.0_zork_recovery_stable-channel_mp-v8.bin cros_workfolder/recovery.bin
    echo "Archivo renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
fi