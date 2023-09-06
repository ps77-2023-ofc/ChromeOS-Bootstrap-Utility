#!/bin/bash

echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
    cat << "Q131-7"
    Pregunta 1.3.1 Estas son todas las versiones de Chrome OS compatibles con Brunch Framework:
    1. Chrome OS v90 (codename volteer)
    2. Chrome OS v91 (codename volteer)
    3. Chrome OS v92/v93 (codename volteer)
    4. Chrome OS v94 (codename volteer)
    5. Chrome OS v98/v99/v100 (codename volteer)
    6. Chrome OS v101 (codename volteer)
    Ingresa el número de la versión de Chrome OS que vas a utilizar:
Q131-7
# Leer la respuesta del usuario
read -n 2 comet_lake_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v86), comenzar la descarga de los archivos necesarios
if [ "$comet_lake_cros_version" == "1" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r90"
    echo "VERSIÓN DE CHROME OS: v90"
    echo "CODENAME DEL RECOVERY DESTINO: volteer"
    echo "Descargando archivos necesarios..."
    # Descargar Brunch Framework y el recovery de Chrome OS con sus respectivos formatos, todo en la carpeta cros_workfolder ubicada en la carpeta raíz del proyecto
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r90-stable-20210523/brunch_r90_stable_20210523.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220419163523mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13816.82.0_volteer_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    # Extraer los archivos descargados en la carpeta cros_workfolder ubicada en la carpeta raíz del proyecto
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    # Renombrar el archivo del recovery ubicado en la carpeta cros_workfolder a recovery.bin
    mv /cros_workfolder/chromeos_13816.82.0_volteer_recovery_stable-channel_mp-v6.bin /cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    # Llamar al script de instalación de Chrome OS (chromeos-install.sh), ubicado en la raíz de la carpeta cros_workfolder (que a su vez está ubicada en la raíz del proyecto)
    # Proporcionar los siguientes argumentos propios del script de instalación: -src (para especificarle al script donde está el archivo del recovery de Chrome OS , en este caso en la carpeta cros_workfolder)
    # Y -dst (para especificarle al script donde debe guardar la imagen de Chrome OS, en este caso en la carpeta output, ubicada en la raíz del proyecto)
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
elif [ "$comet_lake_cros_version" == "2" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r91"
    echo "VERSIÓN DE CHROME OS: v91"
    echo "CODENAME DEL RECOVERY DESTINO: volteer"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r91-stable-20210620/brunch_r91_stable_20210620.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13904.55.0_volteer_recovery_stable-channel_mp-v6.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_13904.55.0_volteer_recovery_stable-channel_mp-v6.bin /cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
elif [ "$comet_lake_cros_version" == "3" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
    cat << "Q14-1"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v92
    2. Chrome OS v93
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-1
# Leer la respuesta del usuario
read -n 1 comet_brunch_version_93_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v92), comenzar la descarga de los archivos necesarios
    if [ "$comet_brunch_version_93_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
        echo "VERSIÓN DE CHROME OS: v92"
        echo "CODENAME DEL RECOVERY DESTINO: volteer"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r93-stable-20211002/brunch_r93_stable_20211002.tar.gz" -O brunch.tar.gz -P /cros_workfolder 
        wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13982.88.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C /cros_workfolder
        unzip -qq recovery.zip -d /cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv /cros_workfolder/chromeos_13982.88.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
    elif [ "$comet_brunch_version_93_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
        echo "VERSIÓN DE CHROME OS: v93"
        echo "CODENAME DEL RECOVERY DESTINO: volteer"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r93-stable-20211002/brunch_r93_stable_20211002.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14092.77.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C /cros_workfolder
        unzip -qq recovery.zip -d /cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv /cros_workfolder/chromeos_14092.77.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
    fi
elif [ "$comet_lake_cros_version" == "4" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r94"
    echo "VERSIÓN DE CHROME OS: v94"
    echo "CODENAME DEL RECOVERY DESTINO: volteer"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r94-stable-20211121/brunch_r94_stable_20211127.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14150.87.0_volteer_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_14150.87.0_volteer_recovery_stable-channel_mp-v8.bin /cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
elif [ "$comet_lake_cros_version" == "5" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
    cat << "Q14-2"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 3 versiones de Chrome OS al tiempo:
    1. Chrome OS v98
    2. Chrome OS v99
    3. Chrome OS v100
    ¿Cuál de las 3 versiones de Chrome OS deseas usar para crear la imagen?
Q14-2
# Leer la respuesta del usuario
read -n 1 comet_brunch_version_100_cros_version
# Limpiar la terminal
clear
    if [ "$comet_brunch_version_100_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v98"
        echo "CODENAME DEL RECOVERY DESTINO: volteer"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14388.61.0_volteer_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C /cros_workfolder
        unzip -qq recovery.zip -d /cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv /cros_workfolder/chromeos_14388.61.0_volteer_recovery_stable-channel_mp-v8.bin /cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
    elif [ "$comet_brunch_version_100_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v99"
        echo "CODENAME DEL RECOVERY DESTINO: volteer"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14469.59.0_volteer_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C /cros_workfolder
        unzip -qq recovery.zip -d /cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv /cros_workfolder/chromeos_14469.59.0_volteer_recovery_stable-channel_mp-v8.bin /cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
    elif [ "$comet_brunch_version_100_cros_version" == "3" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
        echo "VERSIÓN DE CHROME OS: v100"
        echo "CODENAME DEL RECOVERY DESTINO: volteer"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14526.89.0_volteer_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C /cros_workfolder
        unzip -qq recovery.zip -d /cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv /cros_workfolder/chromeos_14526.89.0_volteer_recovery_stable-channel_mp-v8.bin /cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
    fi
elif [ "$comet_lake_cros_version" == "6" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Comet Lake (11ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r101"
    echo "VERSIÓN DE CHROME OS: v101"
    echo "CODENAME DEL RECOVERY DESTINO: volteer"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r101-stable-20220529/brunch_r101_stable_20220529.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220628113403mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14588.98.0_volteer_recovery_stable-channel_mp-v8.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_14588.98.0_volteer_recovery_stable-channel_mp-v8.bin /cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst /output/chromeos.img"
fi
