#!/bin/bash

echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    cat << "Q13-1"
    Pregunta 1.3 Escoge la versión de Chrome OS y Brunch Framework que vas a emplear:
    1. Brunch r83 / Chrome OS v83
    2. Brunch r86 / Chrome OS v84, v85, v86
    3. Brunch r87 / Chrome OS v87
    4. Brunch r88 / Chrome OS v88
    5. Brunch r89 / Chrome OS v89
    6. Brunch r90 / Chrome OS v90
    7. Brunch r93 / Chrome OS v92, v93
    8. Brunch r94 / Chrome OS v94
    9. Brunch r97 / Chrome OS v96, v97
    10. Brunch r100 / Chrome OS v98, v99, v100
    11. Brunch r101 / Chrome OS v101

    Ingresa el número de la opción que desees:
Q13-1
#Leer la respuesta del usuario
read -n 2 amd_bristolridge_cros_version
#Limpiar la pantalla
clear
#Si se ingresa la opción 1 (Brunch r83 / Chrome OS v83), comenzar la descarga de archivos necesarios
if [ "$amd_bristolridge_cros_version" == "1" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE CHROME OS: v83"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r83"
    echo "CODENAME DESTINO DEL RECOVERY: grunt"
    echo "Comenzando la descarga de archivos necesarios..."
    # Descargar Brunch Framework y el recovery de Chrome OS con sus respectivos formatos, todo en la carpeta cros_workfolder ubicada en la carpeta raíz del proyecto
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r83-k4.19-stable-20200708/brunch_r83_k4.19_stable_20200708.tar.gz" -O "brunch.tar.gz" -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13020.87.0_grunt_recovery_stable-channel_mp-v5.bin.zip" -O "recovery.zip" -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    # Extraer los archivos descargados en la carpeta cros_workfolder
    tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
    unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando el archivo del recovery a recovery.bin..."
    # Renombrar el archivo del recovery ubicado en la carpeta cros_workfolder a recovery.bin
    mv cros_workfolder/chromeos_13020.87.0_grunt_recovery_stable-channel_mp-v5.bin cros_workfolder/recovery.bin
    echo "Archivo renombrado."
    echo "Comenzando la construcción de la imagen..."
    # Llamar al script de instalación de Chrome OS, ubicado en la raíz de la carpeta cros_workfolder, y proporcionar los argumentos necesarios para indicar donde está el archivo del recovery y a qué carpeta debe ir la imagen de Chrome OS recién creada (en este caso, a la carpeta output del proyecto)
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_bristolridge_cros_version" == "2" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r86"
    cat << "Q14-1"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 3 versiones de Chrome OS al tiempo:
    1. Chrome OS v84
    2. Chrome OS v85
    3. Chrome OS v86
    ¿Cuál de las 3 versiones de Chrome OS deseas usar para crear la imagen?
Q14-1
# Leer la respuesta del usuario
read -n 1 amdbristol_brunch_version_86_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v92), comenzar la descarga de los archivos necesarios
    if [ "$amdbristol_brunch_version_86_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r86"
        echo "VERSIÓN DE CHROME OS: v84"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r86-k5.4-stable-20201201/brunch_r86_k5.4_stable_20201201.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13099.110.0_grunt_recovery_stable-channel_mp-v5.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
        unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_13099.110.0_grunt_recovery_stable-channel_mp-v5.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdbristol_brunch_version_86_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: Intel Core, plataforma Sandy Bridge (2ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r86"
        echo "VERSIÓN DE CHROME OS: v85"
        echo "CODENAME DEL RECOVERY DESTINO: rammus"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r86-k5.4-stable-20201201/brunch_r86_k5.4_stable_20201201.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13310.93.0_grunt_recovery_stable-channel_mp-v5.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
        unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_13310.93.0_grunt_recovery_stable-channel_mp-v5.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdbristol_brunch_version_86_cros_version" == "3" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r86"
        echo "VERSIÓN DE CHROME OS: v86"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r86-k5.4-stable-20201201/brunch_r86_k5.4_stable_20201201.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13505.111.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
        unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_13505.111.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_bristolridge_cros_version" == "3" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r87"
    echo "VERSIÓN DE CHROME OS: v87"
    echo "CODENAME DEL RECOVERY DESTINO: grunt"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r87-stable-20201227/brunch_r87_stable_20201227.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13505.111.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
    unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_13505.111.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_bristolridge_cros_version" == "4" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r88"
    echo "VERSIÓN DE CHROME OS: v88"
    echo "CODENAME DEL RECOVERY DESTINO: grunt"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r88-stable-20210223/brunch_r88_stable_20210223.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13597.105.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
    unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_13597.105.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_bristolridge_cros_version" == "5" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r89"
    echo "VERSIÓN DE CHROME OS: v89"
    echo "CODENAME DEL RECOVERY DESTINO: grunt"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r89-stable-20210403/brunch_r89_stable_20210403.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13729.56.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
    unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_13729.56.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_bristolridge_cros_version" == "6" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r90"
    echo "VERSIÓN DE CHROME OS: v90"
    echo "CODENAME DEL RECOVERY DESTINO: grunt"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r90-stable-20210523/brunch_r90_stable_20210523.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13816.82.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
    unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_13816.82.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_bristolridge_cros_version" == "7" ]; then 
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
    cat << "Q14-2"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v92
    2. Chrome OS v93
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-2
# Leer la respuesta del usuario
read -n 1 amdbristol_brunch_version_93_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v96), comenzar la descarga de los archivos necesarios
    if [ "$amdbristol_brunch_version_93_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
        echo "VERSIÓN DE CHROME OS: v92"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r93-stable-20211002/brunch_r93_stable_20211002.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13982.88.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
        unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_13982.88.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdbristol_brunch_version_93_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
        echo "VERSIÓN DE CHROME OS: v93"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r93-stable-20211002/brunch_r93_stable_20211002.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14092.77.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
        unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14092.77.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_bristolridge_cros_version" == "8" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r94"
    echo "VERSIÓN DE CHROME OS: v94"
    echo "CODENAME DEL RECOVERY DESTINO: grunt"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r94-stable-20211121/brunch_r94_stable_20211127.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14150.87.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C cros_workfolder
    unzip -qq recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv cros_workfolder/chromeos_14150.87.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$amd_bristolridge_cros_version" == "9" ]; then
echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
    cat << "Q14-3"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v96
    2. Chrome OS v97
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-3
# Leer la respuesta del usuario
read -n 1 amdbristol_brunch_version_97_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v96), comenzar la descarga de los archivos necesarios
    if [ "$amdbristol_brunch_version_97_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
        echo "VERSIÓN DE CHROME OS: v96"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r97-stable-20220121/brunch_r97_stable_20220121.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14268.67.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14268.67.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdbristol_brunch_version_97_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
        echo "VERSIÓN DE CHROME OS: v97"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r97-stable-20220121/brunch_r97_stable_20220121.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14324.62.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14324.62.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_bristolridge_cros_version" == "10" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
    cat << "Q14-4"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 3 versiones de Chrome OS al tiempo:
    1. Chrome OS v98
    2. Chrome OS v99
    3. Chrome OS v100
    ¿Cuál de las 3 versiones de Chrome OS deseas usar para crear la imagen?
Q14-4
# Leer la respuesta del usuario
read -n 1 amdbristol_brunch_version_100_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v98), comenzar la descarga de los archivos necesarios
    if [ "$amdbristol_brunch_version_100_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v98"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14388.61.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando el archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14388.61.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
        echo "Archivo renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdbristol_brunch_version_100_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v99"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14469.59.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando el archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14469.59.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
        echo "Archivo renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$amdbristol_brunch_version_100_cros_version" == "3" ]; then
        echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v100"
        echo "CODENAME DEL RECOVERY DESTINO: grunt"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14526.89.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C cros_workfolder
        unzip -qq recovery.zip -d cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando el archivo del recovery a recovery.bin..."
        mv cros_workfolder/chromeos_14526.89.0_grunt_recovery_stable-channel_mp-v6.bin cros_workfolder/recovery.bin
        echo "Archivo renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$amd_bristolridge_cros_version" == "11" ]; then
    echo "PROCESADOR OBJETIVO: AMD Bristol Ridge"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r101"
    echo "VERSIÓN DE CHROME OS: v101"
    echo "CODENAME DEL RECOVERY DESTINO: grunt"
    echo "Descargando archivos necesarios..."
    # Descargar los archivos necesarios en la carpeta de producción (cros_workfolder), ubicada en la carpeta raíz del proyecto
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r101-stable-20220529/brunch_r101_stable_20220529.tar.gz" -O brunch.tar.gz -P /cros_workfolder 
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14588.98.0_grunt_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf cros_workfolder/brunch.tar.gz -C cros_workfolder
    unzip -qq cros_workfolder/recovery.zip -d cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando el archivo del recovery a recovery.bin..."
    mv "cros_workfolder/chromeos_14588.98.0_grunt_recovery_stable-channel_mp-v6.bin" "cros_workfolder/recovery.bin"
    echo "Archivo renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src cros_workfolder/recovery.bin -dst output/chromeos.img"
fi