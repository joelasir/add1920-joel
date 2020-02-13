# Docker.

Primero comenzamos activando el ip_forward para permitir que nuestros contenedores tengan conexión a la red exterior.

![1](./img/1.a.png)

Instalamos Docker, lo arrancamos y comprobamos.

![1](./img/2.png)

![1](./img/3.png)

Mostramos las imágenes descargadas hasta ahora. No nos saldrá nada porque aún no tenemos descargada ninguna.

![1](./img/4.png)

Descargaremos una imagen llamada *hello-world*. Se creará el contenedor.

Al final la borraremos con 'docker rm *IDContenedor*'

![1](./img/5.png)

![1](./img/6.png)

Ahora buscaremos la imagen de Debian.

![1](./img/7.png)

Y descargaremos la imagen de Debian 10.

![1](./img/8.png)

Creamos el contenedor a partir de la imagen descargada y ejecutaremos el programa '*/bin/bash*'.

![1](./img/9.png)

Ahora dentro del contenedor instalamos Nginx y el editor VI.

![1](./img/10.png)

![1](./img/11.png)

Inicializamos Nginx.

![1](./img/12.png)

Creamos un fichero html llamado 'holamundo'.

![1](./img/13.png)

También instalaremos el comando 'ps' para ver el estado de los procesos.

![1](./img/13_2.png)

![1](./img/13_3.png)

Crearemos un script que hará que el servicio Nginx se mantenga activo en un bluce.
Tendrá el siguiente contenido:

![1](./img/15.png)

Le damos permisos de ejecución.

![1](./img/16.png)

Comprobamos el contenedor y su estado.

![1](./img/17.png)

A partir de IDContenedor crearemos la siguiente imagen.

![1](./img/18.png)

Ahora iniciaremos el contenedor a partir de la imagen anterior.

![1](./img/19.png)

Comprobamos el contenedor y el puerto por donde corre.

![1](./img/20.png)

Abrimos un navegador y accedemos al localhost por el puerto del contenedor.

![1](./img/21.png)

Comprobamos el acceso a 'holamundo.html'.

![1](./img/22.png)

Ahora haremos un contenedor similar al anterior pero usando un fichero de configuración llamado 'Dockerfile'. Empezamos creando el directorio donde lo almacenaremos.

![1](./img/23.png)

El fichero Dockerfile tendrá el siguiente contenido.

![1](./img/24.png)

Construimos la nueva imagen a partir del Dockerfile.

![1](./img/25.png)

Y ahora crearemos el contenedor partiendo de la imagen creada anteriormente.

![1](./img/26.png)

Comprobamos el estado del contenedor y el puerto en el que se está ejecutando.

![1](./img/27.puerto.png)

Comprobamos el acceso desde un navegador.

![1](./img/29.png)

![1](./img/28.png)

Ahora exportaremos la imagen para usarla en otra máquina.

![1](./img/31.png)

![1](./img/30.png)

Importamos la imagen en otra máquina y comprobamos.

![1](./img/33.png)

Por último paramos y borramos los contenedores.

![1](./img/34.png)
