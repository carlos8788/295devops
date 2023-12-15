# Comandos linux

1) alias --> Con alias podemos guardar en una variable un comando extenso
   alias NAME='VALUE'

2) pwd --> devuelve la ruta `pwd`

3) cp --> para copiar un archivo => `cp file_original.txt file_copy.txt` o si es una carpeta y tiene contenido `cp -r folder folder_copy`
   
4) rm --> eliminar archivos => `rm file_original.txt`, si es una carpeta vacía `rm -r folder_original` y si tiene contenido `rm -rf folder_original`
   
5) mv --> mover archivos => `mv mi_archivo.txt ruta/` o si está en un directorio diferente `mv mi_archivo.txt /home/usuario/Documentos/`
   
6) mkdir --> crear subcarpeta con "-p" y sin esa flag crear una carpeta `mkdir -p Proyecto/Docs Proyecto/Imagenes Proyecto/Codigo`
   
7) touch -- para crear un archivo => `touch Proyecto/Docs/notas.txt`
   
8) Combinando mkdir y touch -> `mkdir -p Proyecto/Docs Proyecto/Imagenes Proyecto/Codigo && touch Proyecto/Docs/notas.txt`

9) 
El comando `chmod` en sistemas operativos tipo Unix (como Linux y macOS) se utiliza para cambiar los permisos de acceso a archivos y directorios. Los permisos determinan quién puede leer, escribir o ejecutar un archivo o directorio. Aquí te doy un ejemplo de cómo usar el comando `chmod`:

### Cambiar Permisos Usando Notación Simbólica

Supongamos que tienes un archivo llamado `script.sh` y quieres cambiar sus permisos para que el propietario del archivo pueda leer, escribir y ejecutarlo, mientras que el grupo y otros usuarios solo pueden leerlo. Puedes hacerlo con el siguiente comando:

```bash
chmod u=rwx,g=r,o=r script.sh
```

En este comando:

- `u=rwx` establece que el propietario (`u` de user) tiene permisos de lectura (`r`), escritura (`w`) y ejecución (`x`).
- `g=r` establece que el grupo (`g`) solo tiene permisos de lectura.
- `o=r` establece que otros usuarios (`o` de others) solo tienen permisos de lectura.

### Cambiar Permisos Usando Notación Octal

También puedes cambiar permisos usando la notación octal, que es una forma más concisa. Por ejemplo, para lograr lo mismo que en el ejemplo anterior, usarías:

```bash
chmod 744 script.sh
```

En la notación octal:

- El primer dígito (7) representa los permisos del propietario: lectura (4) + escritura (2) + ejecución (1) = 7.
- El segundo dígito (4) representa los permisos del grupo: solo lectura (4).
- El tercer dígito (4) representa los permisos de otros usuarios: solo lectura (4).

### Ejemplos Adicionales

1. **Dar permisos de ejecución a todos**:
   ```bash
   chmod a+x script.sh
   ```
   Esto añade (`+`) permisos de ejecución (`x`) para todos (`a` de all).

2. **Quitar permisos de escritura para el grupo y otros**:
   ```bash
   chmod go-w script.sh
   ```
   Esto quita (`-`) los permisos de escritura (`w`) para el grupo (`g`) y otros usuarios (`o`).

3. **Establecer permisos exactos para propietario, grupo y otros**:
   ```bash
   chmod 755 script.sh
   ```
   Esto otorga lectura, escritura y ejecución para el propietario, y solo lectura y ejecución para el grupo y otros.

Recuerda que el uso de `chmod` puede afectar la seguridad y el acceso a archivos y directorios, por lo que siempre debes usarlo con precaución.

10) 
Tu salida de comando indica que actualmente tienes instalado Nginx en tu sistema Kali Linux, específicamente la versión `1.24.0-2`. La etiqueta `[installed,automatic]` sugiere que Nginx fue instalado automáticamente como dependencia de otro paquete, o como parte de un grupo de paquetes, en lugar de haber sido instalado explícitamente por un comando de instalación directa.

Si necesitas más información o quieres realizar alguna operación específica con Nginx, aquí hay algunas opciones comunes que podrías considerar:

### Verificar el Estado de Nginx

Para verificar si el servicio Nginx está funcionando, puedes usar:

```bash
sudo systemctl status nginx
```

### Iniciar o Detener Nginx

Para iniciar Nginx:

```bash
sudo systemctl start nginx
```

Para detener Nginx:

```bash
sudo systemctl stop nginx
```

### Reiniciar o Recargar Nginx

Para reiniciar Nginx (útil cuando has realizado cambios en la configuración):

```bash
sudo systemctl restart nginx
```

Para recargar la configuración de Nginx sin detener el servidor:

```bash
sudo systemctl reload nginx
```

### Configuración de Nginx

Los archivos de configuración de Nginx se encuentran generalmente en `/etc/nginx`. El archivo principal suele ser `/etc/nginx/nginx.conf`, y las configuraciones específicas del sitio se almacenan en `/etc/nginx/sites-available` y se enlazan simbólicamente a `/etc/nginx/sites-enabled`.

### Instalar o Eliminar Nginx

Si por alguna razón necesitas instalar o desinstalar Nginx, puedes usar los siguientes comandos:

Para instalar Nginx:

```bash
sudo apt install nginx
```

Para eliminar Nginx:

```bash
sudo apt remove nginx
```

### Verificar la Versión de Nginx

Para verificar la versión de Nginx instalada:

```bash
nginx -v
```

Espero que esta información sea útil para lo que necesitas hacer con Nginx. Si tienes alguna pregunta específica o necesitas ayuda con algo más, ¡házmelo saber!

11) curl
    un post --> curl -H "Content-Type: application/json" -X POST -d '{"clave1":"valor1", "clave2":"valor2"}' http://example.com/api

    un get --> curl http://example.com




