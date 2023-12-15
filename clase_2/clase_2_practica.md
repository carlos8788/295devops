## Para guardar info

1. Para guardar info en un txt podemos usar **echo** o **printf**
   No, no estás limitado a usar únicamente `echo` para guardar cadenas de texto en un archivo en sistemas tipo Unix (como Linux o macOS). Aunque `echo` es una de las formas más comunes de hacerlo, hay otras herramientas y comandos que también puedes utilizar para escribir texto en archivos. Aquí te presento algunas alternativas:

### 1. `printf`

`printf` es una herramienta similar a `echo`, pero proporciona un control más detallado sobre el formato del texto de salida. Puedes usar `printf` de la siguiente manera:

```bash
printf "Alguna cadena de texto" > archivo.txt
```

Si quieres agregar más texto sin sobrescribir el contenido existente, puedes hacerlo así:

```bash
printf "Más texto" >> archivo.txt
```

### 2. `cat`

`cat` se usa comúnmente para imprimir el contenido de archivos, pero también puedes usarlo para crear un archivo:

```bash
cat > archivo.txt <<EOF
Línea 1
Línea 2
EOF
```

Este método te permite escribir múltiples líneas de texto hasta que escribas `EOF` (End Of File), que puedes reemplazar con cualquier otra palabra clave que elijas.

### 3. Redirección de Comandos

Cualquier comando que genere salida puede ser redirigido a un archivo. Por ejemplo, si tienes un comando que genera la fecha y hora actual (`date`), puedes guardar esta salida en un archivo:

```bash
date > fecha.txt
```

### 4. `tee`

`tee` es útil cuando deseas ver la salida en la consola y al mismo tiempo escribirla en un archivo. Por ejemplo:

```bash
echo "Este es un texto" | tee archivo.txt
```

Usa `tee -a` para anexar al archivo sin sobrescribirlo.

### 5. Editor de Texto

También puedes usar un editor de texto como `vi`, `vim`, `nano`, o `emacs` para escribir texto en un archivo:

```bash
vim archivo.txt
```

Luego escribes tu texto, guardas y cierras el editor.

Cada uno de estos métodos tiene sus propias ventajas y casos de uso, y la elección depende de tus necesidades específicas y de tu entorno de trabajo.

2. Con **cat** leemos el archivo creado

```bash
#!/bin/bash
#script con argumentos

# Declarando variables luego en los valores colocamos anteponiendo el signo $ 
# para que este reconozca el argumento y para el orden que se deben pasar usaremos 
# numeros
# ejemplo

VALOR1=$1
VALOR2=$2

echo "este es mi scprit recibiendo argumentos -> primer arg: $VALOR1"

echo "fin del script, segundo argumento: $VALOR2"
```

```bash
#!/bin/bash
#estructura de controles






VALOR1=$1
VALOR2=$2

echo "este es mi scprit recibiendo argumentos -> primer arg: $VALOR1"

echo "fin del script, segundo argumento: $VALOR2"
```
