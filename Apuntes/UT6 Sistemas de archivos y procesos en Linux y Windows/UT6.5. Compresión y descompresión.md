# UT6 Sistemas de archivos y procesos en Linux y Windows

## 6.5. Compresión y descompresión

La **compresión de archivos** permite reducir el espacio de almacenamiento que ocupan los datos. Esto puede resultar útil para ahorrar espacio en disco y facilitar su transferencia a través de una red.

Además de comprimir, podemos **empaquetar** varios archivos y directorios para reunirlos en un único archivo. Aunque ambos procedimientos suelen utilizarse juntos, no significan lo mismo:

- **Empaquetar:** reunir varios archivos y/o directorios en un solo archivo, sin reducir necesariamente su tamaño.
- **Comprimir:** aplicar un procedimiento que reduce el tamaño de los datos, de modo que ocupen menos espacio de almacenamiento.
- **Descomprimir:** recuperar los datos originales a partir de un archivo comprimido.
- **Desempaquetar:** extraer los archivos y directorios contenidos en un paquete.

Por ejemplo, un archivo `.tar` reúne archivos y directorios, mientras que un archivo `.tar.gz` es un paquete TAR que, además, se ha comprimido mediante GZIP.

### 6.5.1. Conceptos de compresión y empaquetado

La compresión puede realizarse mediante diferentes formatos y herramientas. Entre los formatos habituales encontramos **ZIP** y **GZIP**.

En Windows se utiliza frecuentemente el formato ZIP, que permite reunir y comprimir archivos y directorios. En Linux también se utilizan archivos ZIP, aunque es muy habitual combinar el empaquetado con `tar` y la compresión con `gzip`.

**Nota:** La reducción de tamaño depende del contenido de los archivos. Algunos formatos, como muchas imágenes JPEG o vídeos MP4, ya utilizan compresión y es posible que apenas reduzcan su tamaño al volver a comprimirlos.

### 6.5.2. Compresión y descompresión en Linux

En Linux estudiaremos los comandos `tar`, `gzip` y `gunzip`, presentes en los apuntes de esta unidad.

#### Empaquetar y desempaquetar: `tar`

El comando `tar` permite **empaquetar y desempaquetar archivos y directorios**. Su función principal consiste en reunir varios elementos en un único archivo. También puede utilizar programas de compresión como GZIP para crear paquetes comprimidos.

**Sintaxis:**

```bash
tar [opciones] <archivo_tar> [archivos/directorios]
```

- **Opciones:** indican la operación que se desea realizar, como crear, extraer o listar el contenido de un paquete.
- **Archivo TAR:** nombre del paquete que se creará o utilizará.
- **Archivos/directorios:** elementos que se incluirán en el paquete. Para extraer todo el contenido no es necesario indicarlos.

**Opciones principales:**

| Opción | Función |
|---|---|
| `-c` | Crea un paquete TAR. |
| `-x` | Extrae los archivos de un paquete. |
| `-r` | Añade archivos a un paquete TAR sin comprimir. |
| `-t` | Muestra el contenido de un paquete sin extraerlo. |
| `-v` | Muestra información detallada de las operaciones realizadas. |
| `-f` | Indica el archivo TAR que se va a crear o utilizar. |
| `-z` | Utiliza GZIP para comprimir o descomprimir el paquete. |
| `-j` | Utiliza BZIP2 para comprimir o descomprimir el paquete. |

**Ejemplos:**

Crear un paquete con tres archivos, sin comprimirlos:

```bash
tar -cf paquete.tar arch1.txt arch2.txt arch3.txt
```

Extraer el contenido del paquete:

```bash
tar -xf paquete.tar
```

Añadir otro archivo a un paquete TAR sin comprimir:

```bash
tar -rf paquete.tar otro_archivo.txt
```

Mostrar el contenido del paquete sin extraerlo:

```bash
tar -tf paquete.tar
```

Crear un paquete que incluya un directorio completo y comprimirlo mediante GZIP:

```bash
tar -czf documentos.tar.gz documentos/
```

Extraer un paquete comprimido mediante GZIP:

```bash
tar -xzf documentos.tar.gz
```

También se pueden crear paquetes comprimidos mediante BZIP2 utilizando la opción `-j`:

```bash
tar -cjf documentos.tar.bz2 documentos/
```

**Importante:** Un archivo `.tar` está empaquetado, pero no necesariamente comprimido. Al utilizar `-z` con `tar`, el resultado habitual es un archivo `.tar.gz`.

#### Comprimir archivos: `gzip`

El comando `gzip` permite **comprimir archivos** para reducir el espacio que ocupan. De forma predeterminada, sustituye el archivo original por otro con el mismo nombre y la extensión `.gz`.

**Sintaxis:**

```bash
gzip [opciones] <archivo>
```

**Opciones principales:**

| Opción | Función |
|---|---|
| `-l`, `--list` | Muestra información sobre el archivo comprimido, como sus tamaños original y comprimido. |
| `-f`, `--force` | Fuerza la operación, incluso cuando ya existe un archivo de destino. |
| `-r`, `--recursive` | Recorre un directorio y comprime individualmente los archivos que contiene, incluidos los de sus subdirectorios. |
| `-d`, `--decompress` | Descomprime un archivo GZIP. |

**Ejemplos:**

```bash
gzip documento.txt
```

Comprime `documento.txt` y lo sustituye por `documento.txt.gz`.

```bash
gzip -r documentos/
```

Comprime por separado los archivos contenidos en `documentos/` y sus subdirectorios. **No crea un único paquete** con todo el directorio.

**Nota:** Para agrupar varios archivos en un solo archivo comprimido, utilizaremos `tar` junto con `gzip`, como en el ejemplo `tar -czf documentos.tar.gz documentos/`.

#### Descomprimir archivos: `gunzip`

El comando `gunzip` permite **descomprimir archivos creados con GZIP**. Equivale a utilizar `gzip` con la opción `-d`.

**Sintaxis:**

```bash
gunzip <archivo.gz>
```

**Ejemplo:**

```bash
gunzip documento.txt.gz
```

Descomprime el archivo y recupera `documento.txt`. De forma predeterminada, elimina el archivo `.gz` una vez completada correctamente la operación.

También podemos utilizar:

```bash
gzip -d documento.txt.gz
```

### 6.5.3. Compresión y descompresión en Windows

Windows permite comprimir y descomprimir archivos y carpetas mediante el **Explorador de archivos**, sin necesidad de utilizar comandos.

Una forma habitual es utilizar el formato **ZIP**, que reúne y comprime archivos y directorios en un único archivo con extensión `.zip`.

**Crear un archivo ZIP:**

1. Seleccionar los archivos o carpetas que queremos comprimir.
2. Abrir el menú contextual con el botón derecho del ratón.
3. Elegir la opción para **comprimir en archivo ZIP**. El nombre y la ubicación exacta de la opción pueden variar según la versión de Windows.
4. Asignar un nombre al archivo ZIP creado.

**Extraer el contenido de un archivo ZIP:**

1. Seleccionar el archivo `.zip`.
2. Abrir el menú contextual con el botón derecho del ratón.
3. Seleccionar **Extraer todo...** o la opción equivalente disponible.
4. Elegir la ubicación de destino y confirmar la extracción.

**Nota:** También pueden utilizarse aplicaciones como 7-Zip para trabajar con archivos comprimidos y otros formatos, pero para las prácticas básicas es suficiente utilizar las herramientas gráficas disponibles en Windows.
