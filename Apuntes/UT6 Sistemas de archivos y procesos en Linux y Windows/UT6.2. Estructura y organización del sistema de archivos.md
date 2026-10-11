# UT6 Sistemas de archivos y procesos en Linux y Windows

## 6.2. Estructura y organización del sistema de archivos

Los sistemas de archivos necesitan una estructura que permita organizar y localizar la información almacenada en los dispositivos de almacenamiento, facilitando su gestión y el acceso por parte de los usuarios y las aplicaciones.

Para comprender cómo se organiza esta información, estudiaremos la organización física y lógica del sistema de archivos, su estructura jerárquica y las principales características de la organización de directorios en Windows y Linux. También veremos cómo se utilizan las rutas de acceso para localizar archivos y directorios.

### 6.2.1. Organización física y lógica

Se suele diferenciar entre la organización de los discos a nivel físico (hardware) y lógico (software).

La **organización física** hace referencia a cómo se almacenan los datos físicamente en el dispositivo de almacenamiento. En los discos duros magnéticos (HDD), la información se organiza en pistas, sectores, cilindros y platos. Esta organización depende de las características del hardware y funciona a muy bajo nivel.

Los sistemas de archivos deben proporcionar una capa de abstracción que oculte los detalles puramente hardware al usuario y le permita utilizar el medio de almacenamiento de una forma intuitiva y cómoda, más cercana a los hábitos humanos de organización de la información.

A esto se le llama **organización lógica del sistema de archivos**, que es la forma en que se presenta y organiza la información para que los usuarios y las aplicaciones puedan acceder a ella.

La organización lógica de los sistemas de archivos actuales se basa generalmente en el almacenamiento de la información en archivos y su organización mediante carpetas o directorios.

### 6.2.2. Organización jerárquica de archivos y directorios

Los sistemas de archivos utilizan una estructura jerárquica para organizar la información almacenada en los dispositivos de almacenamiento. Esta organización se basa en el uso de archivos y directorios, también denominados carpetas.

Los **directorios** permiten organizar los archivos y otros subdirectorios, facilitando su clasificación y localización dentro del sistema de archivos.

La organización jerárquica tiene forma de **árbol invertido**, que comienza en un directorio principal denominado **directorio raíz**, del que parten otros directorios que, a su vez, pueden contener archivos y subdirectorios.

```
/
├── home/
│   ├── usuario1/
│   │   ├── documentos
│   │   └── imagenes
│   └── usuario2/
├── etc/
├── usr/
└── var/
```

Cada directorio puede tener un directorio superior, denominado **directorio padre**, y contener otros directorios, denominados **subdirectorios** o **directorios hijos**.

Esta estructura permite organizar la información en diferentes niveles, agrupando los archivos según su contenido, función o cualquier otro criterio establecido por el usuario o el sistema operativo.

Aunque Windows y Linux utilizan una estructura jerárquica, existen diferencias en su organización:

- **Linux:** Todos los archivos y directorios se organizan a partir de un único directorio raíz, representado por el símbolo `/`. Los diferentes dispositivos y particiones se integran en esta estructura mediante puntos de montaje.
- **Windows:** Habitualmente, cada unidad de almacenamiento o partición tiene asignada una letra de unidad, como `C:` o `D:`, y dispone de su propio directorio raíz. Windows también permite montar volúmenes en carpetas.

### 6.2.3. Estructura de directorios en Linux

La estructura del sistema de archivos en Linux sigue una jerarquía organizada y estandarizada. Todos los archivos y directorios parten de un único directorio raíz, representado por el símbolo `/`.

En Linux, los directorios del sistema cumplen funciones específicas. Por ejemplo, el directorio `/home` se utiliza para almacenar los directorios personales de los usuarios, mientras que el directorio `/etc` contiene los archivos de configuración del sistema operativo y de las aplicaciones.

Esta organización sigue el estándar **FHS (Filesystem Hierarchy Standard)**, que establece la estructura y finalidad de los principales directorios de los sistemas Linux. Aunque pueden existir diferencias entre distribuciones, la estructura general es similar.

A continuación, se muestran los principales directorios de Linux y sus funciones:

| Directorio        | Función                                                      |
| ----------------- | ------------------------------------------------------------ |
| `/`               | **Directorio raíz:** Es el punto de partida de toda la estructura de directorios de Linux. |
| `/bin`            | **Binarios:** Contiene programas ejecutables esenciales que pueden utilizar todos los usuarios del sistema. En distribuciones actuales suele ser un enlace a `/usr/bin`. |
| `/boot`           | **Arranque:** Almacena los archivos necesarios para el arranque del sistema operativo, como el núcleo (kernel). |
| `/dev`            | **Dispositivos:** Contiene archivos especiales que representan dispositivos de hardware y permiten interactuar con ellos. |
| `/etc`            | **Configuración:** Almacena archivos de configuración del sistema operativo y de las aplicaciones. |
| `/home`           | **Directorios personales:** Contiene los directorios personales de los usuarios del sistema. |
| `/lib` y `/lib64` | **Bibliotecas:** Contienen bibliotecas compartidas necesarias para el funcionamiento de programas esenciales. En distribuciones actuales suelen ser enlaces a directorios dentro de `/usr`. |
| `/media`          | **Montaje:** Se utiliza habitualmente para montar automáticamente dispositivos extraíbles, como memorias USB. |
| `/mnt`            | **Montaje temporal:** Se utiliza para montar manualmente sistemas de archivos de forma temporal. |
| `/opt`            | **Software opcional:** Se utiliza para instalar aplicaciones adicionales que no forman parte de la distribución principal. |
| `/proc`           | **Información de procesos:** Sistema de archivos virtual que proporciona información sobre los procesos y el núcleo del sistema operativo. |
| `/root`           | **Directorio personal de root:** Es el directorio personal del superusuario o administrador del sistema. |
| `/sbin`           | **Binarios del sistema:** Contiene programas ejecutables utilizados principalmente para tareas de administración del sistema. En distribuciones actuales suele ser un enlace a `/usr/sbin`. |
| `/srv`            | **Servicios:** Contiene datos utilizados por determinados servicios que ofrece el sistema, como servidores web o FTP. |
| `/sys`            | **Información del sistema:** Sistema de archivos virtual que proporciona información sobre el hardware y el núcleo del sistema operativo. |
| `/tmp`            | **Archivos temporales:** Almacena archivos temporales utilizados por el sistema y las aplicaciones. Su contenido puede eliminarse automáticamente. |
| `/usr`            | **Programas y recursos:** Contiene aplicaciones, bibliotecas y otros archivos utilizados por el sistema y los usuarios. |
| `/var`            | **Datos variables:** Contiene archivos cuyo contenido cambia durante el funcionamiento del sistema, como registros de actividad (logs), cachés y otros datos. |

Una característica importante de Linux es que los diferentes dispositivos de almacenamiento y particiones se integran dentro de esta única estructura de directorios mediante **puntos de montaje**.

Un punto de montaje es un directorio a través del cual se puede acceder al contenido de un sistema de archivos situado en una partición o dispositivo de almacenamiento.

Por ejemplo, una memoria USB puede montarse en un directorio dentro de `/media`, de forma que podremos acceder a sus archivos a través de dicho directorio, sin necesidad de asignarle una letra de unidad como ocurre habitualmente en Windows.

### 6.2.4. Estructura de directorios en Windows

Al igual que Linux, Windows utiliza una estructura jerárquica de archivos y directorios. Sin embargo, existen diferencias en la forma en que se organizan las unidades de almacenamiento y se accede a su contenido.

En Windows, las unidades de almacenamiento y particiones suelen identificarse mediante una **letra de unidad**, seguida de dos puntos (`:`). Por ejemplo, `C:`, `D:` o `E:`.

Cada unidad identificada mediante una letra dispone de su propio **directorio raíz**, representado mediante una barra invertida (`\`). Por ejemplo, `C:\` representa el directorio raíz de la unidad C.

Habitualmente, Windows se instala en la unidad `C:`, aunque puede instalarse en otra unidad. Durante la instalación, el sistema operativo crea una serie de directorios destinados a almacenar los archivos del sistema, las aplicaciones instaladas y los datos de los usuarios.

A continuación, se muestran los principales directorios de Windows y sus funciones:

| Directorio                       | Función                                                      |
| -------------------------------- | ------------------------------------------------------------ |
| `C:\`                            | **Directorio raíz:** Es el punto de partida de la estructura de directorios de la unidad C. |
| `C:\Windows`                     | **Sistema operativo:** Contiene los archivos necesarios para el funcionamiento de Windows, incluyendo componentes del sistema, bibliotecas y archivos de configuración. |
| `C:\Windows\System32`            | **Archivos del sistema:** Contiene numerosos archivos ejecutables, bibliotecas y herramientas esenciales para el funcionamiento y administración de Windows. |
| `C:\Windows\Temp`                | **Archivos temporales:** Almacena archivos temporales utilizados por Windows y determinadas aplicaciones. |
| `C:\Program Files`               | **Archivos de programa:** Directorio donde se instalan habitualmente las aplicaciones de 64 bits en Windows de 64 bits. |
| `C:\Program Files (x86)`         | **Programas de 32 bits:** Directorio donde se instalan habitualmente las aplicaciones de 32 bits en Windows de 64 bits. |
| `C:\ProgramData`                 | **Datos de aplicaciones:** Contiene archivos de configuración y otros datos de las aplicaciones que pueden ser compartidos por diferentes usuarios del equipo. |
| `C:\Users`                       | **Usuarios:** Contiene los directorios personales de los usuarios del sistema. |
| `C:\Users\NombreUsuario`         | **Directorio personal:** Almacena los archivos y carpetas personales de un usuario, como Documentos, Descargas, Imágenes o Escritorio. |
| `C:\Users\NombreUsuario\AppData` | **Datos de aplicaciones del usuario:** Contiene archivos de configuración y otros datos utilizados por las aplicaciones para un usuario concreto. |
| `C:\Users\Public`                | **Carpeta pública:** Contiene archivos y carpetas destinados a ser compartidos entre los usuarios del equipo. |

**Nota:** Algunas carpetas, como `ProgramData` y `AppData`, están ocultas de forma predeterminada en el Explorador de archivos de Windows. Además, las rutas indicadas son las habituales, pero determinadas carpetas pueden encontrarse en ubicaciones diferentes según la configuración del sistema.

A diferencia de Linux, donde los dispositivos de almacenamiento se integran en una única estructura de directorios mediante puntos de montaje, en Windows lo habitual es que cada partición o unidad de almacenamiento tenga asignada una letra de unidad.

Por ejemplo, si un ordenador dispone de dos particiones y una memoria USB, estas podrían identificarse como:

- `C:` Unidad donde está instalado Windows.
- `D:` Partición destinada al almacenamiento de datos.
- `E:` Memoria USB conectada al ordenador.

No obstante, Windows también permite montar particiones o volúmenes en directorios de una unidad NTFS, sin necesidad de asignarles una letra de unidad.

### 6.2.5. Rutas de acceso absolutas y relativas

En el contexto de los sistemas operativos, una **ruta de acceso** especifica la ubicación de un archivo o directorio en la estructura del sistema de archivos.

La ruta describe la secuencia de directorios y subdirectorios que deben seguirse para llegar al archivo o directorio deseado. Las rutas son utilizadas para localizar y acceder a archivos y directorios, entre otras operaciones.

Dependiendo del sistema operativo con el que se trabaje, cambiará la forma de establecer la ruta de acceso. Por ejemplo, en Windows se utiliza la barra invertida `\` para separar los directorios, mientras que en Linux se utiliza la barra `/`.

Existen dos tipos de rutas de acceso: **absolutas y relativas**.

#### Ruta de acceso absoluta

Una **ruta absoluta** especifica la ubicación completa de un archivo o directorio desde el directorio raíz. Por tanto, permite localizar el archivo o directorio independientemente del directorio en el que nos encontremos.

Por ejemplo:

- **Linux:** `/home/usuario/documentos/apuntes.txt`
- **Windows:** `C:\Users\usuario\Documents\apuntes.txt`

En Linux, una ruta absoluta comienza con el símbolo `/`, que representa el directorio raíz.

En Windows, las rutas absolutas habituales comienzan con una letra de unidad, seguida de dos puntos y una barra invertida, como `C:\`.

#### Ruta de acceso relativa

Una **ruta relativa** especifica la ubicación de un archivo o directorio con respecto al **directorio actual**, también denominado directorio de trabajo o directorio activo.

Por tanto, para interpretar una ruta relativa es necesario conocer el directorio en el que nos encontramos.

Por ejemplo, supongamos que nuestro directorio actual es:

- **Linux:** `/home/usuario`
- **Windows:** `C:\Users\usuario`

Si queremos acceder al archivo `apuntes.txt`, situado dentro del subdirectorio `documentos`, podemos utilizar las siguientes rutas relativas:

- **Linux:** `documentos/apuntes.txt`
- **Windows:** `documentos\apuntes.txt`

En ambos casos, la ruta parte del directorio actual y no es necesario indicar toda la estructura desde el directorio raíz.

#### Directorios especiales en las rutas de acceso

Para facilitar la navegación por la estructura de directorios, los sistemas operativos permiten utilizar ciertos símbolos especiales.

| Símbolo | Significado                                                  |
| ------- | ------------------------------------------------------------ |
| `.`     | Hace referencia al directorio actual.                        |
| `..`    | Hace referencia al directorio padre o directorio superior.   |
| `~`     | En Linux, hace referencia al directorio personal del usuario cuando lo interpreta el intérprete de comandos. |

Por ejemplo, si nos encontramos en el directorio `/home/usuario/documentos` de Linux:

- `.` representa el directorio `/home/usuario/documentos`.
- `..` representa el directorio `/home/usuario`.
- `../imagenes/foto.jpg` permite acceder al archivo `foto.jpg`, situado en el directorio `/home/usuario/imagenes`.

En Windows también podemos utilizar `.` y `..` para hacer referencia al directorio actual y al directorio padre, respectivamente.

Por ejemplo, si nos encontramos en `C:\Users\usuario\Documents`, podemos utilizar la ruta relativa `..\Pictures\foto.jpg` para acceder a un archivo situado en la carpeta `Pictures` del usuario.

