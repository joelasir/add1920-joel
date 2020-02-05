# Salt-stack

Antes de comenzar la práctica crearemos dos máquinas virtuales OpenSuse, una llamada Máster y otra Minion.

Comenzamos instalando salt-master en la máquina Máster.

![1](./img/1.png)

Una vez instalado iremos al archivo */etc/salt/master* e añadimos las siguientes líneas.

![2](./img/2.png)

![3](./img/3.png)

Habilitamos el servicio en el sistema y lo arrancamos.

![4](./img/4.png)

Ejecutamos el comando *salt-key -L* para ver los Minions aceptados por nuestro Máster. Comprobamos que aún no tenemos ninguna solicitud.

![5](./img/5.png)

Ahora iremos a la máquina Minion e instalamos el servicio *salt-minion*

![6](./img/6.png)

Modificaremos el archivo */etc/salt/minion* añadiendo la siguiente línea.

![7](./img/7.png)

Habilitamos el servicio y lo arrancamos.

![8](./img/8.png)

![9](./img/9.png)

Luego comprobamos que no tenemos instalado apache2 en nuestro sistema.

![10](./img/10.png)

Volvemos a la máquina Máster y comprobamos que tenemos ya una petición del Minion.

![11](./img/11.png)

Y la aceptamos con el siguiente comando.

![12](./img/12.png)

Ahora haremos pruebas de conectividad entre el Máster y el Minion.

![13](./img/13.png)

En el Máster crearemos los dos siguientes directorios.

![14](./img/14.png)

Y también creamos el archivo *roots.conf* en la ruta */etc/salt/master* con las siguientes líneas.

![15](./img/15.png)

Reiniciamos el servicio y comprobamos que esté corriendo.

![16](./img/16.png)

Para crear un nuevo estado crearemos el fichero */srv/salt/base/apache/init.sls* con el siguiente código.

![17](./img/17.png)

Y para asociar el estado anterior al Minion creamos el siguiente archivo en la ruta */srv/salt/base*.

![18](./img/18.png)

Comprobamos que el nuevo estado se ha añadido correctamente.

![19](./img/19.png)

Ahora lo que haremos será aplicar este estado al Minion empezando por comprobar los estados en detalles.

![20](./img/20.png)

![21](./img/21.png)

Y por último aplicando el estado.

![22](./img/22.png)

![23](./img/23.png)

Ahora crearemos un nuevo estado que cree el grupo *Mazinger Z* junto a los usuarios *Koji08* y *Drinfierno08*.

![24](./img/24.png)

Añadimos el estado al fichero *top.sls*.

![25](./img/25.png)

Y aplicamos al Minion.

![26](./img/26.png)

Por último crearemos otro estado que nos cree unas carpetas en el *Home* del usuario *Koji08*.

![27](./img/27.png)

Añadimos al fichero como hicimos anteriormente para los demás estados.

![28](./img/28.png)

Y aplicamos.

![29](./img/29.png)

El último punto de la práctica consiste en instalar salt-minion en Windows y asociarlo al Máster.
Empezamos instalando el salt-minion.

![30](./img/30.png)

Pondremos la ip del Máster y nuestro nombre como Minion.

![31](./img/31.png)

Iremos al Máster y comprobamos que tenemos la petición del Minion de Windows y la aceptamos.

![32](./img/32.png)
