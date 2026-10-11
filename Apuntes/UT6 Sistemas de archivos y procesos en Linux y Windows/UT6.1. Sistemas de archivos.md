# UT6 Sistemas de archivos y procesos en Linux y Windows

## 6.1. Sistemas de archivos

### 6.1.1. Concepto de sistema de archivos

Un **sistema de archivos** es una estructura organizativa y un componente del software del sistema operativo que proporciona una jerarquía y una metodología para almacenar, gestionar y recuperar datos y archivos en dispositivos de almacenamiento, como discos duros, unidades SSD o memorias USB.

El sistema de archivos permite realizar operaciones con archivos y directorios, como crear, copiar, mover, modificar, eliminar o buscar. Además, incorpora mecanismos de protección y seguridad para controlar el acceso a la información almacenada.

Los sistemas operativos pueden utilizar diferentes sistemas de archivos, aunque cada uno suele tener uno o varios sistemas de archivos propios o predeterminados. Además, pueden admitir sistemas de archivos utilizados habitualmente por otros sistemas operativos. Independientemente del sistema de archivos utilizado, las operaciones básicas que se pueden realizar sobre los archivos y directorios son bastante similares.

Los objetivos más importantes en la implementación de un sistema de archivos son:

- **Optimizar el rendimiento mediante un acceso rápido para recuperar la información contenida en archivos:** El sistema de archivos debe gestionar eficientemente los dispositivos de almacenamiento para evitar que el acceso a la información ralentice el funcionamiento del sistema.
- **Fácil actualización:** Los cambios (añadir, borrar y modificar archivos) no deben suponer una tarea complicada para el usuario y las aplicaciones.
- **Economía de almacenamiento:** Intentar que los archivos desperdicien la menor cantidad de espacio posible en los dispositivos de almacenamiento. Es importante aprovechar eficientemente el espacio disponible y reducir la fragmentación.
- **Mantenimiento sencillo:** Evitar las operaciones complicadas a usuarios y programas, ocultando los detalles de funcionamiento y proporcionando un acceso estandarizado a los archivos.
- **Fiabilidad para asegurar la confianza en los datos:** Deben proporcionar mecanismos que aseguren que los datos escritos o leídos (entradas/salidas) sean correctos y fiables. También se debe minimizar la posibilidad de pérdida o destrucción de datos.
- **Incorporar mecanismos de seguridad y permisos:** Esto es especialmente importante en sistemas operativos multiusuario. Se debe poder proteger los archivos de un usuario del acceso de los demás usuarios, por ejemplo, estableciendo permisos de lectura, escritura o ejecución.
- **Control de concurrencia:** Se debe controlar y asegurar el acceso correcto a los archivos por parte de varios usuarios o procesos al mismo tiempo, evitando conflictos cuando se realizan operaciones simultáneas sobre un mismo archivo.

### 6.1.2. Tipos de sistemas de archivos

Existen diferentes sistemas de archivos que presentan características y limitaciones propias, como el tamaño máximo de los archivos, la longitud máxima de sus nombres, los permisos de acceso, la gestión de metadatos y otras propiedades específicas.

Por ejemplo, podemos observar algunas diferencias entre FAT16, FAT32 y NTFS:

| Sistema de archivos | Longitud máxima del nombre                             | Tamaño máximo de archivo | Tamaño máximo del volumen |
| ------------------- | ------------------------------------------------------ | ------------------------ | ------------------------- |
| **FAT16**           | 8 caracteres + 3 de extensión (255 con nombres largos) | 2 GB*                    | 2 GB*                     |
| **FAT32**           | 255 caracteres                                         | 4 GiB - 1 byte           | 2 TiB*                    |
| **NTFS**            | 255 caracteres                                         | 16 TiB*                  | 16 TiB*                   |

**Nota:** Los valores marcados con * son referencias habituales y pueden variar según la implementación, el sistema operativo y el tamaño de bloque. En NTFS, los 16 TiB corresponden a una configuración con bloques de 4 KiB y se admiten capacidades superiores con otras configuraciones.

**Bloque:** Es una unidad de almacenamiento formada por uno o varios sectores del disco. Su tamaño depende del sistema de archivos y de su configuración.


La elección de un sistema de archivos depende de las necesidades del usuario y del entorno en el que se va a utilizar, ya que cada sistema de archivos puede ofrecer determinadas ventajas y limitaciones.

#### Sistemas de archivos transaccionales (journaling)

Una de las características que pueden incorporar los sistemas de archivos es el *journaling*, también conocido como registro por diario o registro de transacciones.

El **journaling** es una técnica que consiste en registrar determinadas operaciones que se van a realizar sobre el sistema de archivos antes de aplicar los cambios definitivamente. Este registro se almacena en una zona especial denominada *journal* o diario.

Su finalidad es facilitar la recuperación del sistema de archivos cuando se produce un fallo inesperado, como un corte del suministro eléctrico o un bloqueo del sistema operativo.

**Funcionamiento del journaling**

De forma simplificada, cuando se realiza una operación que modifica el sistema de archivos, se llevan a cabo los siguientes pasos:

1. Se registra en el diario la información necesaria sobre los cambios que se van a realizar.
2. Cuando el registro de la transacción se ha completado, se marca como confirmada.
3. Se aplican los cambios correspondientes en las estructuras principales del sistema de archivos.

Si se produce un fallo durante este proceso, el sistema puede consultar el diario durante la recuperación para identificar las transacciones confirmadas y recuperar la coherencia del sistema de archivos.

**Ventajas del journaling**

- **Mayor fiabilidad:** Reduce el riesgo de que el sistema de archivos quede dañado después de un fallo inesperado.
- **Recuperación más rápida:** Permite recuperar la coherencia del sistema de archivos sin necesidad de comprobar todos sus archivos y directorios.
- **Integridad del sistema de archivos:** Ayuda a evitar inconsistencias en las estructuras utilizadas para organizar y localizar los archivos.

**Nota:** El journaling no es un sistema infalible. Aunque permite recuperar la coherencia del sistema de archivos después de un fallo, no garantiza que se conserven todos los datos que se estaban escribiendo en ese momento. Por ejemplo, si se produce un corte de suministro eléctrico mientras se guarda un documento, es posible que se pierdan los últimos cambios realizados. Por tanto, el journaling no sustituye a las copias de seguridad.

**Inconvenientes del journaling**

- **Mayor número de escrituras:** Las operaciones registradas en el diario generan escrituras adicionales en el dispositivo de almacenamiento.
- **Consumo de espacio:** Es necesario reservar espacio para almacenar el diario.
- **Impacto en el rendimiento:** En determinadas situaciones puede reducir ligeramente el rendimiento debido al trabajo adicional de registrar las operaciones.



#### Principales sistemas de archivos

Entre los sistemas de archivos más conocidos podemos destacar los siguientes:

| Sistema de archivos | Sistema operativo      | Características principales                                  |
| ------------------- | ---------------------- | ------------------------------------------------------------ |
| **FAT32**           | Windows, Linux y otros | Muy compatible con diferentes sistemas operativos y dispositivos. No permite almacenar archivos de 4 GiB o más. No incorpora journaling. |
| **exFAT**           | Windows, Linux y macOS | Diseñado principalmente para unidades de almacenamiento extraíbles. Permite almacenar archivos de gran tamaño. No incorpora journaling. |
| **NTFS**            | Windows                | Sistema de archivos habitual de Windows. Incorpora permisos de acceso, compresión, cifrado y journaling. |
| **ext3**            | Linux                  | Evolución de ext2 que incorpora journaling para facilitar la recuperación del sistema de archivos ante fallos. |
| **ext4**            | Linux                  | Evolución de ext3. Ofrece mejoras de rendimiento, capacidad de almacenamiento y fiabilidad. Incorpora journaling. |
| **Btrfs**           | Linux                  | Sistema de archivos moderno que incorpora características avanzadas como instantáneas (snapshots), compresión y mecanismos de protección de datos. Utiliza técnicas Copy-on-Write (CoW) en lugar de un journaling tradicional. |
| **XFS**             | Linux                  | Sistema de archivos de alto rendimiento, especialmente adecuado para gestionar archivos grandes y grandes volúmenes de datos. Incorpora journaling. |
