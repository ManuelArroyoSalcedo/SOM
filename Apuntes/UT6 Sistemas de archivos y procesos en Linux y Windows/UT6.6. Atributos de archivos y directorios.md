# UT6 Sistemas de archivos y procesos en Linux y Windows

## 6.6. Atributos de archivos y directorios

Los sistemas de archivos almacenan información sobre los archivos y directorios que permite identificarlos, gestionarlos y establecer determinadas características de su funcionamiento. Parte de esta información puede consultarse o modificarse mediante herramientas del sistema operativo.

### 6.6.1. Concepto de atributo

Los **atributos** son propiedades asociadas a los archivos y directorios que permiten al sistema operativo conocer sus características y determinar cómo deben tratarse.

Entre la información asociada a un archivo o directorio podemos encontrar su tamaño, propietario, fechas de creación o modificación y permisos de acceso. Estos datos forman parte de sus **metadatos**, como vimos al estudiar los inodos.

Además, algunos sistemas de archivos permiten establecer **atributos especiales** que modifican su comportamiento, por ejemplo, marcar un archivo como oculto, de solo lectura o impedir determinadas modificaciones.

Los atributos disponibles y la forma de gestionarlos dependen del sistema operativo y del sistema de archivos utilizado. A continuación estudiaremos los principales atributos especiales en Windows y Linux.

### 6.6.2. Atributos de archivos y directorios en Windows

En Windows, los atributos son marcas (*flags*) que indican al sistema operativo cómo debe tratar un archivo o directorio.

Los principales atributos que vamos a estudiar son:

| Atributo | Nombre | Función |
|---|---|---|
| **R** | *Read-only* (solo lectura) | Indica que un archivo está marcado como de solo lectura y dificulta su modificación o sobrescritura accidental. |
| **H** | *Hidden* (oculto) | Hace que un archivo o directorio no se muestre normalmente en el Explorador de archivos. |
| **S** | *System* (sistema) | Identifica archivos o directorios utilizados por el sistema operativo. Suele emplearse junto con otros mecanismos de protección u ocultación. |
| **A** | *Archive* (archivo modificado) | Señala que un archivo debe tenerse en cuenta para determinados procedimientos de copia de seguridad. |

**Nota:** El atributo **R** no equivale a establecer permisos de seguridad. Los permisos de acceso de NTFS se estudiarán en el apartado 6.7.

El atributo **A** se utiliza tradicionalmente en las copias de seguridad incrementales: puede activarse cuando se crea o modifica un archivo, y los programas de copia de seguridad que utilizan este mecanismo pueden desactivarlo después de copiarlo. No todos los programas de copia de seguridad se basan en este atributo.

#### Consultar y modificar atributos mediante `attrib`

En la consola de Windows (**CMD**) podemos utilizar el comando `attrib` para consultar, establecer o quitar atributos de archivos y directorios.

**Sintaxis básica:**

```cmd
attrib [opciones] <archivo>
```

Para **consultar** los atributos de un archivo:

```cmd
attrib archivo.txt
```

Para **establecer** un atributo, se utiliza el signo `+` seguido de su letra:

```cmd
attrib +r archivo.txt
attrib +h archivo.txt
attrib +s archivo.txt
attrib +a archivo.txt
```

Para **quitar** un atributo, se utiliza el signo `-`:

```cmd
attrib -r archivo.txt
attrib -h archivo.txt
```

También podemos establecer o quitar varios atributos en una misma operación. Por ejemplo:

```cmd
attrib +r +h archivo.txt
attrib -r -h archivo.txt
```

**Importante:** Los atributos no sustituyen a los permisos de acceso. Marcar un archivo como oculto no impide que un usuario pueda acceder a él si conoce su ubicación y tiene los permisos necesarios.

### 6.6.3. Atributos de archivos y directorios en Linux

En Linux, los archivos y directorios también poseen metadatos, como propietario, tamaño, fechas y permisos. En sistemas de archivos como **ext4** pueden utilizarse, además, determinados **atributos especiales** para controlar su comportamiento.

Entre los atributos especiales que podemos encontrar están:

| Atributo | Significado | Función |
|---|---|---|
| **i** | *Immutable* (inmutable) | Impide modificar, eliminar o cambiar el nombre del archivo mientras el atributo esté activo. |
| **a** | *Append only* (solo añadir) | Permite añadir datos al final de un archivo, pero restringe la modificación o eliminación del contenido existente. |

Estos atributos pueden ser útiles para proteger determinados archivos frente a modificaciones accidentales o no autorizadas. Su uso depende del sistema de archivos y, normalmente, se necesitan privilegios de administrador para establecerlos o quitarlos.

#### Consultar atributos mediante `lsattr`

El comando `lsattr` permite mostrar los atributos especiales de archivos y directorios en sistemas de archivos compatibles.

**Sintaxis:**

```bash
lsattr <archivo>
```

**Ejemplo:**

```bash
lsattr documento.txt
```

Muestra los atributos especiales asociados al archivo `documento.txt`.

#### Modificar atributos mediante `chattr`

El comando `chattr` permite modificar determinados atributos especiales.

**Sintaxis:**

```bash
chattr [+|-] <atributo> <archivo>
```

Por ejemplo, para establecer el atributo de inmutabilidad:

```bash
sudo chattr +i documento.txt
```

Mientras esté activo, el archivo no podrá modificarse ni eliminarse mediante las operaciones habituales, incluso aunque sus permisos permitan la escritura.

Para quitar este atributo:

```bash
sudo chattr -i documento.txt
```

**Nota:** En Linux, un archivo cuyo nombre comienza por un punto, como `.bashrc`, suele considerarse oculto en las herramientas de visualización. Esto es una **convención de nombres**, no un atributo especial equivalente al atributo **H** de Windows.

Los **permisos de lectura, escritura y ejecución** de Linux no deben confundirse con estos atributos especiales. Los permisos se estudiarán en el apartado 6.7.
