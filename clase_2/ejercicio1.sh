#!/bin/bash
Color_Off='\033[0m' # Text Reset

# Regular Colors
Black='\033[0;30m'  # Black
Red='\033[0;31m'    # Red
Green='\033[0;32m'  # Green
Blue='\033[0;34m'   # Blue

# Background
On_Red='\033[41m'   # Red
On_Green='\033[42m' # Green
On_Blue='\033[44m'  # Blue
On_White='\033[47m' # White

# STAGE 1

echo "\n${Green}Actualizando el sistema ${Color_Off}"
sleep 1
sudo apt update

paquetes=("apache2" "php" "mariadb" "git" "curl")

for paquete in "${paquetes[@]}"
do
    if dpkg -l | grep -q "$paquete"; 
    then
        echo "El paquete $paquete ya está instalado."
    else
        echo "Instalando $paquete..."
        sudo apt install -y "$paquete"
    fi
done


# STAGE 2

echo "${Green}Clonando repo... ${Color_Off}"

if [-d bootcamp-roxs-2023 ] ;
then
    echo "Esto es un directorio"
else
    echo "No existe el directorio"
fi
