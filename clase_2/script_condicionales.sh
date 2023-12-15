#!/bin/bash

# Condicionales 
# con -d podemos verificar si el directorio 
# es decir, que donde se ejecute el script
# va a verificar si la carpeta prueba existe
if [-d prueba ] ;
then
    echo "Esto es un directorio"
else
    echo "No existe el directorio"
fi

# con -f se validan archivos
# ejemplo: if [ -f archivo.txt ]; 