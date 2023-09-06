#!/bin/bash

echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    cat << "Q13-1"
    Pregunta 1.3 Escoge la versión de Brunch Framework y de Chrome OS que emplearás:
    1. Brunch r86 / Chrome OS v86
    2. Brunch r87 / Chrome OS v87
    3. Brunch r88 / Chrome OS v88
    4. Brunch r89 / Chrome OS v89
    5. Brunch r90 / Chrome OS v90
    6. Brunch r91 / Chrome OS v91
    7. Brunch r93 / Chrome OS v92 o v93
    8. Brunch r94 / Chrome OS v94
    9. Brunch r97 / Chrome OS v96 o v97
    10. Brunch r100 / Chrome OS v98 (ÚLTIMA DISPONIBLE)
    Respuesta: 
Q13-1
# Leer la respuesta del usuario
read -n 2 baytrail_brunch_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Brunch r86 / Chrome OS v86), comenzar la descarga de los archivos necesarios
if [ "$baytrail_brunch_version" == "1" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r86"
    echo "VERSIÓN DE CHROME OS: v86"
    echo "CODENAME DEL RECOVERY DESTINO: rammus"
    echo "Descargando archivos necesarios..."
    # Descargar Brunch Framework y el recovery de Chrome OS con sus respectivos formatos, todo en la carpeta cros_workfolder ubicada en la carpeta raíz del proyecto
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r86-k5.4-stable-20201201/brunch_r86_k5.4_stable_20201201.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13421.99.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    # Extraer los archivos descargados en la carpeta cros_workfolder ubicada en la carpeta raíz del proyecto
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    # Renombrar el archivo del recovery ubicado en la carpeta cros_workfolder a recovery.bin
    mv /cros_workfolder/chromeos_13421.99.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    # Llamar al script de instalación de Chrome OS (chromeos-install.sh), ubicado en la raíz de la carpeta cros_workfolder (que a su vez está ubicada en la raíz del proyecto)
    # Proporcionar los siguientes argumentos propios del script de instalación: -src (para especificarle al script donde está el archivo del recovery de Chrome OS , en este caso en la carpeta cros_workfolder)
    # Y -dst (para especificarle al script donde debe guardar la imagen de Chrome OS, en este caso en la carpeta output, ubicada en la raíz del proyecto)
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$baytrail_brunch_version" == "2" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r87"
    echo "VERSIÓN DE CHROME OS: v87"
    echo "CODENAME DEL RECOVERY DESTINO: rammus"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r87-stable-20201227/brunch_r87_stable_20201227.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13505.111.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_13505.111.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$baytrail_brunch_version" == "3" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r88"
    echo "VERSIÓN DE CHROME OS: v88"
    echo "CODENAME DEL RECOVERY DESTINO: rammus"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r88-stable-20210131/brunch_r88_stable_20210131.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13729.56.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_13729.56.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$baytrail_brunch_version" == "4" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r89"
    echo "VERSIÓN DE CHROME OS: v89"
    echo "CODENAME DEL RECOVERY DESTINO: rammus"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r89-stable-20210403/brunch_r89_stable_20210403.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13729.56.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_13729.56.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$baytrail_brunch_version" == "5" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r90"
    echo "VERSIÓN DE CHROME OS: v90"
    echo "CODENAME DEL RECOVERY DESTINO: rammus"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r90-stable-20210523/brunch_r90_stable_20210523.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13816.82.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_13816.82.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado." 
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$baytrail_brunch_version" == "6" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r91"
    echo "VERSIÓN DE CHROME OS: v91"
    echo "CODENAME DEL RECOVERY DESTINO: rammus"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r91-stable-20210620/brunch_r91_stable_20210620.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13904.55.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_13904.55.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$baytrail_brunch_version" == "7" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
    cat << "Q14-1"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v92
    2. Chrome OS v93
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-1
# Leer la respuesta del usuario
read -n 1 baytrail_brunch_version_93_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v92), comenzar la descarga de los archivos necesarios
    if [ "$baytrail_brunch_version_93_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
        echo "VERSIÓN DE CHROME OS: v92"
        echo "CODENAME DEL RECOVERY DESTINO: rammus"
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
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$baytrail_brunch_version_93_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r93"
        echo "VERSIÓN DE CHROME OS: v93"
        echo "CODENAME DEL RECOVERY DESTINO: rammus"
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
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$baytrail_brunch_version" == "8" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r94"
    echo "VERSIÓN DE CHROME OS: v94"
    echo "CODENAME DEL RECOVERY DESTINO: rammus"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r94-stable-20211121/brunch_r94_stable_20211127.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14150.74.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_14150.74.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
elif [ "$baytrail_brunch_version" == "9" ]; then 
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
    cat << "Q14-2"
    PREGUNTA 1.4 Esta versión de Brunch Framework soporta 2 versiones de Chrome OS al tiempo:
    1. Chrome OS v96
    2. Chrome OS v97
    ¿Cuál de las 2 versiones de Chrome OS deseas usar para crear la imagen?
Q14-2
# Leer la respuesta del usuario
read -n 1 baytrail_brunch_version_97_cros_version
# Limpiar la terminal
clear
# Si la versión escogida es 1 (Chrome OS v96), comenzar la descarga de los archivos necesarios
    if [ "$baytrail_brunch_version_97_cros_version" == "1" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
        echo "VERSIÓN DE CHROME OS: v96"
        echo "CODENAME DEL RECOVERY DESTINO: rammus"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r97-stable-20220121/brunch_r97_stable_20220121.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14268.67.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C /cros_workfolder
        unzip -qq recovery.zip -d /cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv /cros_workfolder/chromeos_14268.67.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
    elif [ "$baytrail_brunch_version_97_cros_version" == "2" ]; then
        echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
        echo "VERSIÓN DE BRUNCH FRAMEWORK: r97"
        echo "VERSIÓN DE CHROME OS: v97"
        echo "CODENAME DEL RECOVERY DESTINO: rammus"
        echo "Descargando archivos necesarios..."
        wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r97-stable-20220121/brunch_r97_stable_20220121.tar.gz" -O brunch.tar.gz -P /cros_workfolder
        wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14324.62.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
        echo "Archivos descargados."
        echo "Extrayendo archivos..."
        tar -xzf brunch.tar.gz -C /cros_workfolder
        unzip -qq recovery.zip -d /cros_workfolder
        echo "Archivos extraídos."
        echo "Renombrando archivo del recovery a recovery.bin..."
        mv /cros_workfolder/chromeos_14324.62.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
        echo "Archivo del recovery renombrado."
        echo "Comenzando la construcción de la imagen..."
        bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
    fi
elif [ "$baytrail_brunch_version" == "10" ]; then
    echo "PROCESADOR OBJETIVO: Intel Atom, plataforma Baytrail (2ª Gen)"
    echo "VERSIÓN DE BRUNCH FRAMEWORK: r100"
    echo "VERSIÓN DE CHROME OS: v98 (latest)"
    echo "CODENAME DEL RECOVERY DESTINO: rammus"
    echo "Descargando archivos necesarios..."
    wget -q --show-progress "https://github.com/sebanc/brunch/releases/download/r100-stable-20220402/brunch_r100_stable_20220402.tar.gz" -O brunch.tar.gz -P /cros_workfolder
    wget -q --show-progress "https://web.archive.org/web/20220302163230mp_/https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14388.61.0_rammus_recovery_stable-channel_mp-v2.bin.zip" -O recovery.zip -P /cros_workfolder
    echo "Archivos descargados."
    echo "Extrayendo archivos..."
    tar -xzf brunch.tar.gz -C /cros_workfolder
    unzip -qq recovery.zip -d /cros_workfolder
    echo "Archivos extraídos."
    echo "Renombrando archivo del recovery a recovery.bin..."
    mv /cros_workfolder/chromeos_14388.61.0_rammus_recovery_stable-channel_mp-v2.bin /cros_workfolder/recovery.bin
    echo "Archivo del recovery renombrado."
    echo "Comenzando la construcción de la imagen..."
    bash "/cros_workfolder/chromeos-install.sh -src /cros_workfolder/recovery.bin -dst output/chromeos.img"
fi