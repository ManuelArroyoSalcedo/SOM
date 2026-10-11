# UT6 Sistemas de archivos y procesos en Linux y Windows

## 6.4. Operaciones con archivos y directorios

Los sistemas operativos proporcionan diferentes herramientas que permiten realizar operaciones sobre los archivos y directorios, como crearlos, copiarlos, moverlos, cambiarles el nombre, eliminarlos o consultar su contenido.

Estas operaciones pueden realizarse mediante una **interfaz gráfica**, utilizando herramientas como el Explorador de archivos de Windows o el gestor de archivos de Linux, o mediante una **interfaz de línea de comandos (CLI)**, introduciendo órdenes en un terminal.

En este apartado estudiaremos las principales operaciones con archivos y directorios, el uso de comodines para trabajar con conjuntos de archivos y directorios, y los comandos que permiten realizar estas operaciones en Linux y Windows.

### 6.4.1. Operaciones básicas con archivos y directorios

Los sistemas de archivos proporcionan un conjunto de operaciones que permiten gestionar los archivos y directorios almacenados en los dispositivos de almacenamiento.

Las principales operaciones sobre archivos son:

- **Crear:** Permite crear un archivo nuevo. Inicialmente puede estar vacío y posteriormente almacenar información introducida por el usuario o por una aplicación.
- **Abrir:** Antes de acceder al contenido de un archivo, las aplicaciones normalmente deben abrirlo para que el sistema operativo pueda gestionar las operaciones que se van a realizar sobre él.
- **Leer:** Permite acceder a la información almacenada en un archivo sin modificar su contenido.
- **Escribir:** Permite introducir o modificar información en un archivo. Su tamaño puede aumentar al añadir nuevos datos.
- **Cerrar:** Finaliza el acceso al archivo por parte de una aplicación y libera los recursos asociados a su apertura.
- **Copiar:** Permite crear una copia de un archivo en otra ubicación o con otro nombre, manteniendo el archivo original.
- **Mover:** Permite trasladar un archivo de una ubicación a otra. Si la operación se realiza dentro del mismo sistema de archivos, normalmente no es necesario copiar físicamente sus datos.
- **Renombrar:** Permite modificar el nombre de un archivo sin alterar su contenido.
- **Eliminar:** Permite borrar un archivo del sistema de archivos, de forma que deja de ser accesible mediante el nombre eliminado.
- **Buscar:** Permite localizar archivos utilizando criterios como su nombre, extensión, ubicación u otras características.

Los sistemas de archivos también permiten realizar operaciones sobre los directorios. Las más habituales son:

- **Crear:** Permite crear nuevos directorios para organizar los archivos y otros subdirectorios.
- **Listar:** Permite consultar los archivos y subdirectorios que contiene un directorio.
- **Cambiar de directorio:** Permite desplazarse por la estructura de directorios y establecer otro directorio como directorio actual.
- **Copiar:** Permite duplicar un directorio y, cuando se indica, su contenido.
- **Mover:** Permite trasladar un directorio a otra ubicación, junto con los archivos y subdirectorios que contiene.
- **Renombrar:** Permite modificar el nombre de un directorio.
- **Eliminar:** Permite borrar un directorio. Dependiendo de la operación utilizada, puede ser necesario que esté vacío o puede eliminarse junto con todo su contenido.
- **Buscar:** Permite localizar directorios utilizando diferentes criterios, como su nombre o ubicación.

Estas operaciones pueden realizarse tanto mediante herramientas gráficas como mediante comandos. Aunque los comandos utilizados son diferentes en Linux y Windows, las operaciones básicas que permiten realizar son similares.

### 6.4.2. Utilización de rutas en los comandos

Para realizar operaciones con archivos y directorios mediante comandos, es necesario indicar la ubicación de los elementos sobre los que queremos actuar.

Como vimos en el apartado 6.2.5, podemos utilizar **rutas absolutas**, que especifican la ubicación completa desde el directorio raíz, o **rutas relativas**, que indican la ubicación respecto al directorio actual.

En comandos como copiar o mover, las rutas permiten identificar tanto el **origen** (archivo o directorio sobre el que se realiza la operación) como el **destino** (ubicación donde se copiará o moverá).

Por ejemplo, supongamos que queremos copiar el archivo `apuntes.txt` al subdirectorio `documentos`, encontrándonos en el directorio personal del usuario.

**En Linux:**

Utilizando rutas relativas:

```bash
cp apuntes.txt documentos/
```

Utilizando rutas absolutas:

```bash
cp /home/alumno/apuntes.txt /home/alumno/documentos/
```

**En Windows (CMD):**

Utilizando rutas relativas:

```cmd
copy apuntes.txt documentos\
```

Utilizando rutas absolutas:

```cmd
copy C:\Users\alumno\apuntes.txt C:\Users\alumno\documentos\
```

En los cuatro ejemplos se realiza la misma operación: copiar el archivo `apuntes.txt` al directorio `documentos`. La diferencia está en cómo indicamos las ubicaciones y en el comando utilizado por cada sistema operativo.

También es posible combinar rutas absolutas y relativas en un mismo comando. Por ejemplo, podemos indicar el origen mediante una ruta relativa y el destino mediante una ruta absoluta.

**Importante:** Al utilizar rutas relativas, debemos tener en cuenta el directorio actual, ya que el resultado de la operación dependerá de la ubicación desde la que ejecutemos el comando.

### 6.4.3. Comandos de archivos y directorios en Linux

Linux permite realizar operaciones sobre archivos y directorios mediante comandos introducidos en un terminal. Estos comandos permiten desplazarse por la estructura de directorios, consultar su contenido, crear archivos y directorios, copiarlos, moverlos, cambiarles el nombre o eliminarlos.

A continuación, estudiaremos las principales operaciones y los comandos utilizados para realizarlas.

#### Mostrar el directorio actual

El comando `pwd` (*print working directory*) muestra la ruta absoluta del directorio en el que nos encontramos.

**Sintaxis:**

`pwd`

**Ejemplo:**

```bash
pwd
```

Si estamos situados en el directorio personal del usuario, podría mostrar:

```text
/home/alumno
```

#### Cambiar de directorio

El comando `cd` (*change directory*) permite cambiar el directorio actual.

**Sintaxis:**

`cd <directorio>`

**Ejemplos:**

```bash
cd /home/alumno/documentos
```

Cambia al directorio indicado mediante una ruta absoluta.

```bash
cd documentos
```

Accede al subdirectorio `documentos` del directorio actual.

```bash
cd ..
```

Cambia al directorio padre.

```bash
cd
```

Sin parámetros, cambia al directorio personal del usuario.

#### Listar archivos y directorios

El comando `ls` permite mostrar el contenido de un directorio, incluyendo los nombres de sus archivos y subdirectorios.

**Sintaxis:**

`ls [opciones] [directorio]`

**Opciones principales:**

| Opción | Función                                                      |
| ------ | ------------------------------------------------------------ |
| `-l`   | Muestra información detallada de los archivos y directorios. |
| `-a`   | Incluye los archivos y directorios ocultos.                  |
| `-la`  | Combina las opciones anteriores.                             |

**Ejemplos:**

```bash
ls
```

Muestra el contenido del directorio actual.

```bash
ls -l
```

Muestra información detallada de los archivos y directorios.

```bash
ls -la /home/alumno
```

Muestra todos los elementos del directorio indicado, incluidos los ocultos, con información detallada.

#### Crear directorios

El comando `mkdir` (*make directory*) permite crear uno o varios directorios.

**Sintaxis:**

`mkdir [-p] <directorio> [directorio2...]`

La opción `-p` permite crear también los directorios intermedios que no existan.

**Ejemplos:**

```bash
mkdir documentos
```

Crea el directorio `documentos` dentro del directorio actual.

```bash
mkdir imagenes videos
```

Crea dos directorios: `imagenes` y `videos`.

```bash
mkdir -p trabajos/tema1/ejercicios
```

Crea la estructura de directorios indicada, incluyendo los directorios intermedios que no existan.

#### Crear archivos vacíos

El comando `touch` permite crear un archivo vacío si no existe. Si ya existe, actualiza sus marcas de tiempo.

**Sintaxis:**

`touch <archivo> [archivo2...]`

**Ejemplos:**

```bash
touch apuntes.txt
```

Crea un archivo vacío denominado `apuntes.txt`.

```bash
touch tema1.txt tema2.txt
```

Crea dos archivos vacíos.

#### Crear archivos con contenido

También podemos crear archivos que contengan información utilizando el **redireccionamiento de salida**.

El operador `>` permite enviar la salida de un comando a un archivo. Si el archivo no existe, se crea; si existe, se sustituye su contenido.

El operador `>>` permite añadir información al final de un archivo, sin eliminar su contenido anterior.

**Sintaxis:**

`<comando> > <archivo>`

`<comando> >> <archivo>`

**Ejemplos:**

```bash
echo "Hola mundo" > saludo.txt
```

Crea el archivo `saludo.txt` con el texto `Hola mundo`. Si el archivo ya existe, reemplaza su contenido.

```bash
echo "Segunda línea" >> saludo.txt
```

Añade una nueva línea al final del archivo, conservando el contenido anterior.

#### Visualizar el contenido de archivos

El comando `cat` permite mostrar el contenido de uno o varios archivos de texto en el terminal.

**Sintaxis:**

`cat <archivo> [archivo2...]`

**Ejemplo:**

```bash
cat saludo.txt
```

Muestra el contenido del archivo `saludo.txt`.

#### Copiar archivos y directorios

El comando `cp` (*copy*) permite copiar archivos y directorios.

Para copiar directorios y su contenido se utiliza la opción `-r`, que realiza una copia recursiva.

**Sintaxis:**

`cp <archivo_origen> <destino>`

`cp -r <directorio_origen> <destino>`

**Ejemplos:**

```bash
cp apuntes.txt copia.txt
```

Crea una copia del archivo `apuntes.txt` con el nombre `copia.txt`.

```bash
cp apuntes.txt documentos/
```

Copia el archivo `apuntes.txt` al directorio `documentos`.

```bash
cp -r documentos/ copia_documentos/
```

Copia el directorio `documentos` y todo su contenido en un nuevo directorio denominado `copia_documentos`.

#### Mover archivos y directorios

El comando `mv` (*move*) permite mover archivos y directorios de una ubicación a otra.

**Sintaxis:**

`mv <origen> <destino>`

**Ejemplos:**

```bash
mv apuntes.txt documentos/
```

Mueve el archivo `apuntes.txt` al directorio `documentos`.

```bash
mv imagenes/ documentos/
```

Mueve el directorio `imagenes`, junto con todo su contenido, dentro del directorio `documentos`.

A diferencia de `cp`, el comando `mv` no necesita una opción especial para mover directorios con su contenido.

#### Cambiar el nombre de archivos y directorios

El comando `mv` también permite cambiar el nombre de un archivo o directorio.

**Sintaxis:**

`mv <nombre_actual> <nombre_nuevo>`

**Ejemplos:**

```bash
mv apuntes.txt apuntes_som.txt
```

Cambia el nombre del archivo `apuntes.txt` por `apuntes_som.txt`.

```bash
mv trabajos/ ejercicios/
```

Cambia el nombre del directorio `trabajos` por `ejercicios`, siempre que no exista previamente un directorio de destino con ese nombre.

#### Eliminar archivos

El comando `rm` (*remove*) permite eliminar archivos.

**Sintaxis:**

`rm <archivo> [archivo2...]`

**Ejemplos:**

```bash
rm apuntes.txt
```

Elimina el archivo `apuntes.txt`.

```bash
rm tema1.txt tema2.txt
```

Elimina los dos archivos indicados.

**Importante:** Los archivos eliminados mediante `rm` normalmente no se envían a la papelera, por lo que debemos utilizar este comando con precaución.

#### Eliminar directorios

Para eliminar un directorio vacío se utiliza el comando `rmdir`.

**Sintaxis:**

`rmdir <directorio> [directorio2...]`

**Ejemplo:**

```bash
rmdir documentos
```

Elimina el directorio `documentos` si está vacío.

Para eliminar un directorio que contiene archivos o subdirectorios se utiliza `rm` con la opción `-r`.

**Sintaxis:**

`rm -r <directorio> [directorio2...]`

**Ejemplo:**

```bash
rm -r trabajos/
```

Elimina el directorio `trabajos` y todo su contenido, incluidos sus archivos y subdirectorios.

**Importante:** La eliminación recursiva puede provocar la pérdida de numerosos archivos. Antes de ejecutar el comando debemos comprobar cuidadosamente la ruta del directorio que queremos eliminar.

### 6.4.4. Comandos de archivos y directorios en Windows (CMD)

Windows permite realizar operaciones sobre archivos y directorios mediante comandos introducidos en la consola de comandos **CMD (Símbolo del sistema)**.

Estos comandos permiten desplazarse por los directorios, consultar su contenido, crear archivos y carpetas, copiar, mover, renombrar o eliminar elementos del sistema de archivos.

A continuación, estudiaremos las mismas operaciones que hemos visto en Linux, utilizando los comandos correspondientes de Windows.

#### Mostrar y cambiar el directorio actual

El comando `cd` (*change directory*) permite mostrar el directorio actual y cambiar a otro directorio.

**Sintaxis:**

`cd [directorio]`

**Ejemplos:**

```cmd
cd
```

Sin parámetros, muestra la ruta del directorio actual.

```cmd
cd C:\Users\alumno\Documents
```

Cambia al directorio indicado.

```cmd
cd ..
```

Cambia al directorio padre.

```cmd
cd \ 
```

Cambia al directorio raíz de la unidad actual.

**Nota:** Para cambiar de unidad y directorio al mismo tiempo se utiliza `cd /d`. Por ejemplo, `cd /d D:\Documentos`.

#### Listar archivos y directorios

El comando `dir` permite mostrar los archivos y subdirectorios de un directorio.

**Sintaxis:**

`dir [directorio] [opciones]`

**Opciones principales:**

| Opción | Función                                                      |
| ------ | ------------------------------------------------------------ |
| `/w`   | Muestra el contenido en formato ancho, con varios nombres por línea. |
| `/a`   | Muestra los elementos con cualquier atributo, incluidos los ocultos. |
| `/ah`  | Muestra únicamente los elementos que tienen el atributo oculto. |
| `/ad`  | Muestra únicamente los directorios.                          |
| `/s`   | Muestra el contenido del directorio indicado y de todos sus subdirectorios. |

**Ejemplos:**

```cmd
dir
```

Muestra el contenido del directorio actual.

```cmd
dir /w
```

Muestra el contenido en formato ancho.

```cmd
dir /a
```

Incluye los archivos y directorios ocultos.

```cmd
dir C:\Users\alumno\Documents /s
```

Muestra el contenido del directorio `Documents` y de sus subdirectorios.

#### Crear directorios

Los comandos `mkdir` (*make directory*) y `md` permiten crear uno o varios directorios.

**Sintaxis:**

`mkdir <directorio> [directorio2...]`

**Ejemplos:**

```cmd
mkdir documentos
```

Crea el directorio `documentos` dentro del directorio actual.

```cmd
mkdir imagenes videos
```

Crea dos directorios llamados `imagenes` y `videos`.

```cmd
mkdir trabajos\tema1\ejercicios
```

Crea la estructura de directorios indicada, incluyendo los directorios intermedios que no existan, cuando están habilitadas las extensiones de comandos habituales de CMD.

#### Crear archivos con contenido

En CMD podemos crear archivos con contenido mediante el **redireccionamiento de salida**.

El operador `>` permite enviar la salida de un comando a un archivo. Si no existe, se crea; si ya existe, se sustituye su contenido.

El operador `>>` permite añadir información al final de un archivo sin eliminar el contenido anterior.

**Sintaxis:**

`<comando> > <archivo>`

`<comando> >> <archivo>`

**Ejemplos:**

```cmd
echo Hola mundo > saludo.txt
```

Crea el archivo `saludo.txt` con el texto `Hola mundo`.

```cmd
echo Segunda linea >> saludo.txt
```

Añade una nueva línea al final del archivo conservando la información anterior.

Para crear un archivo vacío también podemos utilizar:

```cmd
type nul > vacio.txt
```

Crea el archivo `vacio.txt` si no existe. Si ya existe, lo deja vacío.

#### Visualizar el contenido de archivos

El comando `type` permite mostrar en la consola el contenido de archivos de texto.

**Sintaxis:**

`type <archivo>`

**Ejemplo:**

```cmd
type saludo.txt
```

Muestra el contenido del archivo `saludo.txt`.

El comando `more` permite visualizar el contenido de forma paginada, lo que resulta útil cuando el archivo contiene muchas líneas.

**Sintaxis:**

`more <archivo>`

**Ejemplo:**

```cmd
more apuntes.txt
```

Muestra el contenido del archivo por pantallas.

#### Copiar archivos

El comando `copy` permite copiar uno o varios archivos.

**Sintaxis:**

`copy <archivo_origen> <destino>`

**Ejemplos:**

```cmd
copy apuntes.txt copia.txt
```

Crea una copia del archivo `apuntes.txt` denominada `copia.txt`.

```cmd
copy apuntes.txt documentos\
```

Copia el archivo `apuntes.txt` al directorio `documentos`.

#### Copiar directorios

El comando `xcopy` permite copiar archivos y estructuras de directorios.

**Sintaxis:**

`xcopy <origen> <destino> [opciones]`

**Opciones principales:**

| Opción | Función                                                      |
| ------ | ------------------------------------------------------------ |
| `/i`   | Si el destino no existe y se copian varios archivos o un directorio, supone que el destino es un directorio. |
| `/e`   | Copia los subdirectorios, incluidos los vacíos.              |
| `/s`   | Copia los subdirectorios, excepto los vacíos.                |

**Ejemplos:**

```cmd
xcopy documentos\ copia_documentos\ /e /i
```

Copia los archivos y subdirectorios de `documentos` en `copia_documentos`, incluidos los directorios vacíos.

```cmd
xcopy trabajos\ copia_trabajos\ /s /i
```

Copia los archivos y subdirectorios de `trabajos`, excepto los directorios vacíos.

**Nota:** Windows dispone también de herramientas más modernas para copiar directorios, como `robocopy`, pero en este apartado utilizaremos `xcopy`, que es el comando recogido en nuestros materiales.

#### Mover archivos y directorios

El comando `move` permite trasladar archivos y directorios a otra ubicación.

**Sintaxis:**

`move <origen> <destino>`

**Ejemplos:**

```cmd
move apuntes.txt documentos\
```

Mueve el archivo `apuntes.txt` al directorio `documentos`.

```cmd
move imagenes documentos\
```

Mueve el directorio `imagenes`, junto con su contenido, dentro de `documentos`, siempre que el destino exista y la operación sea válida.

#### Cambiar el nombre de archivos y directorios

Los comandos `rename` y `ren` permiten cambiar el nombre de archivos y directorios.

**Sintaxis:**

`rename <nombre_actual> <nombre_nuevo>`

**Ejemplos:**

```cmd
rename apuntes.txt apuntes_som.txt
```

Cambia el nombre del archivo `apuntes.txt` por `apuntes_som.txt`.

```cmd
ren trabajos ejercicios
```

Cambia el nombre del directorio `trabajos` por `ejercicios`.

**Nota:** A diferencia de Linux, donde `mv` permite mover y renombrar, en CMD utilizaremos `move` para trasladar elementos y `rename` para cambiarles el nombre.

#### Eliminar archivos

Los comandos `del` y `erase` permiten eliminar archivos.

**Sintaxis:**

`del <archivo> [archivo2...]`

**Ejemplos:**

```cmd
del apuntes.txt
```

Elimina el archivo `apuntes.txt`.

```cmd
del tema1.txt tema2.txt
```

Elimina los archivos indicados.

**Importante:** Los archivos eliminados mediante `del` normalmente no se envían a la papelera, por lo que debemos utilizar este comando con precaución.

#### Eliminar directorios

Los comandos `rmdir` y `rd` permiten eliminar directorios.

Para eliminar un directorio vacío utilizamos:

**Sintaxis:**

`rmdir <directorio>`

**Ejemplo:**

```cmd
rmdir documentos
```

Elimina el directorio `documentos` si está vacío.

Para eliminar un directorio junto con todos sus archivos y subdirectorios se utiliza la opción `/s`.

**Sintaxis:**

`rmdir /s <directorio>`

**Ejemplo:**

```cmd
rmdir /s trabajos
```

Elimina el directorio `trabajos` y todo su contenido. CMD solicita confirmación antes de realizar la operación.

**Importante:** La eliminación de un directorio con `/s` puede provocar la pérdida de numerosos archivos. Debemos comprobar cuidadosamente la ruta antes de ejecutar el comando.

### 6.4.5. Comodines o metacaracteres

Los **comodines o metacaracteres** son caracteres especiales que permiten hacer referencia a varios archivos o directorios mediante un patrón, sin necesidad de escribir sus nombres individualmente.

Son especialmente útiles cuando queremos realizar una misma operación sobre varios archivos, como listarlos, copiarlos, moverlos o eliminarlos.

Por ejemplo, si tenemos los archivos `tema1.txt`, `tema2.txt`, `tema3.txt` y `apuntes.pdf`, podemos utilizar el patrón `*.txt` para seleccionar los archivos cuyos nombres terminan en `.txt`.

Aunque Linux y Windows permiten utilizar comodines, existen diferencias en los caracteres admitidos y en su funcionamiento.

#### Comodines en Linux (Bash)

En Linux, cuando trabajamos con el intérprete de comandos Bash, podemos utilizar los siguientes comodines:

| Comodín | Significado                                                  | Ejemplo            |
| ------- | ------------------------------------------------------------ | ------------------ |
| `*`     | Representa cero o más caracteres.                            | `*.txt`            |
| `?`     | Representa exactamente un carácter.                          | `tema?.txt`        |
| `[abc]` | Representa uno de los caracteres indicados entre los corchetes. | `tema[123].txt`    |
| `[a-z]` | Representa un carácter dentro del rango indicado.            | `archivo[a-c].txt` |

**Ejemplos:**

Supongamos que tenemos los siguientes archivos:

`tema1.txt`, `tema2.txt`, `tema10.txt`, `apuntes.txt`, `foto.jpg`

**1. Comodín `*`**

```bash
ls *.txt
```

Muestra todos los archivos que terminan en `.txt`, independientemente del número de caracteres que tengan antes de la extensión.

**2. Comodín `?`**

```bash
ls tema?.txt
```

Muestra `tema1.txt` y `tema2.txt`, pero no `tema10.txt`, porque `?` representa exactamente un carácter.

**3. Comodín `[abc]`**

```bash
ls tema[12].txt
```

Muestra `tema1.txt` y `tema2.txt`, porque el carácter situado entre `tema` y `.txt` debe ser `1` o `2`.

**4. Comodín de rango `[a-z]`**

```bash
ls archivo[a-c].txt
```

Selecciona los archivos `archivoa.txt`, `archivob.txt` y `archivoc.txt`, si existen.

Los comodines también pueden utilizarse con otros comandos:

```bash
cp *.txt documentos/
```

Copia todos los archivos del directorio actual cuyos nombres terminan en `.txt` al directorio `documentos`.

```bash
mv foto*.jpg imagenes/
```

Mueve al directorio `imagenes` los archivos JPG cuyos nombres comienzan por `foto`.

```bash
rm *.tmp
```

Elimina los archivos cuyos nombres terminan en `.tmp`.

**Importante:** Debemos tener especial cuidado al utilizar comodines con comandos de eliminación, ya que un patrón puede seleccionar más archivos de los que pretendíamos borrar.

**Nota:** En Bash, los patrones anteriores no incluyen normalmente los archivos ocultos cuyos nombres comienzan por un punto (`.`), salvo que el patrón o la configuración del intérprete permita seleccionarlos.

#### Comodines en Windows (CMD)

En Windows CMD también podemos utilizar comodines para seleccionar varios archivos o directorios, aunque su funcionamiento presenta algunas diferencias respecto a Linux.

Los principales comodines son:

| Comodín | Significado                                                  | Ejemplo     |
| ------- | ------------------------------------------------------------ | ----------- |
| `*`     | Representa cero o más caracteres.                            | `*.txt`     |
| `?`     | Permite sustituir un carácter en un patrón, aunque presenta particularidades respecto a Bash. | `tema?.txt` |

**Ejemplos:**

```cmd
dir *.txt
```

Muestra los archivos cuyos nombres terminan en `.txt`.

```cmd
dir tema?.txt
```

Busca archivos cuyos nombres coinciden con el patrón indicado. En CMD, `?` puede presentar diferencias respecto a Bash, por lo que no siempre debe interpretarse como exactamente un carácter.

```cmd
copy *.txt documentos\
```

Copia los archivos que terminan en `.txt` al directorio `documentos`.

```cmd
del *.tmp
```

Elimina los archivos que coinciden con el patrón `*.tmp`.

