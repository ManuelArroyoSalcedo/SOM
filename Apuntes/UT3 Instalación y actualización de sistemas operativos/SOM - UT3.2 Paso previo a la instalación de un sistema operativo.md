

# UT3. Instalación y actualización de sistemas operativos

## 3.2. Paso previo a la instalación de un sistema operativo

En este bloque se van a explicar los pasos previos a la instalación de cualquier sistema operativo y, para ello, vamos a empezar explicando los tipos de instalación.

### 3.2.1. Tipos de instalación

Se entiende por **instalación de un sistema operativo** el proceso mediante el cual se copian los archivos esenciales del sistema y se configura el equipo para que pueda funcionar correctamente.

Existen diferentes formas de realizar este proceso según el grado de intervención del usuario o el método empleado para copiar el sistema operativo.

#### Instalación y clonación

En una instalación tradicional, el sistema operativo se copia desde sus archivos originales —por ejemplo, desde un DVD, una memoria USB o un recurso compartido en red— y durante el proceso se configura el equipo paso a paso, ya sea de forma manual o automatizada.

En cambio, en una **clonación o despliegue** no se instalan los archivos del sistema desde cero, sino que se copia una imagen completa de otro equipo que ya tiene el sistema operativo instalado y configurado. Este método permite tener varios equipos funcionando de forma idéntica, sin repetir la instalación.

La instalación en red puede realizarse mediante diferentes procedimientos. En algunos casos se distribuye una imagen de un sistema previamente instalado y configurado, mientras que en otros los equipos realizan una instalación del sistema operativo utilizando los archivos proporcionados por un servidor.

#### Tipos de instalación

##### Instalación atendida

En una **instalación atendida** (*Attended Installation*), el usuario o administrador debe estar presente y tomar decisiones durante todo el proceso de instalación.

La instalación se realiza con la interacción activa del usuario, quien responde a preguntas y configura opciones según sea necesario.

##### Instalación desatendida

En una **instalación desatendida** (*Unattended Installation*), el proceso de instalación se automatiza al máximo y el usuario tiene una interacción mínima o nula.

Se utilizan scripts o archivos de respuesta predefinidos para proporcionar respuestas a las preguntas que normalmente se harían durante una instalación manual.

```text
La distinción entre estos dos tipos se basa en el grado de participación del usuario durante el proceso de instalación. Mientras que en una instalación atendida el usuario toma decisiones y realiza configuraciones en tiempo real, en una instalación desatendida estas decisiones y configuraciones se han definido previamente en los archivos de respuesta, lo que permite una instalación automatizada sin intervención constante del usuario.
```

Además de estos métodos, existen otras formas de instalación que se emplean principalmente en entornos profesionales o educativos cuando se trabaja con varios equipos en red.

##### Instalación en red por imágenes

Este tipo de instalación consiste en clonar una imagen del disco de un sistema previamente instalado y configurado para distribuirla al resto de los equipos a través de la red local.

Se realiza una única instalación maestra y se crea una imagen del sistema operativo mediante herramientas especializadas, como Clonezilla, Norton Ghost o Acronis.

Posteriormente, esa imagen se copia en los demás equipos mediante la red.

Este método es ideal para aulas de informática o empresas, ya que todos los equipos quedan idénticos y la instalación se completa en poco tiempo.

Requiere, eso sí, que los equipos tengan hardware similar y una conexión de red rápida.

##### Instalación en red por servidores

En este caso, la instalación del sistema operativo se realiza directamente desde un servidor de red, sin utilizar medios locales como DVDs o memorias USB.

Los equipos cliente arrancan desde la red mediante el protocolo **PXE** (*Preboot Execution Environment*) y reciben los archivos de instalación desde un servidor de despliegue, que puede estar configurado con servicios DHCP, TFTP y NFS en Linux o mediante Windows Deployment Services (WDS) en sistemas Microsoft.

Este tipo de instalación permite desplegar o reinstalar múltiples equipos de forma centralizada y automatizada, siendo muy utilizada en redes empresariales y centros educativos.

Su principal ventaja es que no requiere soportes físicos en los equipos cliente, aunque su configuración inicial es más compleja y exige disponer de un servidor preparado.

### 3.2.2. Comprobación de requisitos técnicos

Antes de proceder a instalar un sistema operativo en un ordenador es necesario realizar un estudio de compatibilidad y de requisitos, ya que el ordenador puede tener un hardware que no funcione con el sistema operativo o que no cumpla con los requisitos mínimos para su instalación y funcionamiento.

Cuando vamos a instalar un software, independientemente de si se trata de un sistema operativo o una aplicación, el fabricante del software suele especificar los **requisitos mínimos y recomendados** que debe tener el ordenador para que su software funcione.

Los **requisitos mínimos** indican las características mínimas que debe tener el equipo para poder instalar y ejecutar el software correctamente. Los **requisitos recomendados** indican unas características superiores que permiten obtener un mejor rendimiento y una experiencia de uso más satisfactoria.

Por ejemplo, pensemos en los videojuegos de PC. Con los requisitos mínimos el videojuego va a funcionar de forma correcta; sin embargo, si nuestro ordenador cumple con los requisitos recomendados, el videojuego se ejecutará de forma más eficiente, obteniendo un mayor rendimiento, lo que se puede traducir en mejor calidad de gráficos, tiempos de respuesta, etc., con lo que obtendremos una mejor experiencia y satisfacción.

En caso de que no sepamos las características de nuestro ordenador, podemos probar lo siguiente:

- **Abrir el ordenador y ver qué componentes tiene.** Esta debe ser la última opción, ya que ver qué procesador tenemos en el ordenador implica desmontar el sistema de refrigeración y eso es algo que debemos evitar. Con la memoria RAM no hay tanto problema.

- **Utilizar el sistema operativo instalado para consultar las especificaciones del ordenador.** En Windows 10 podemos utilizar el Administrador de tareas. En la pestaña **Rendimiento** podremos ver qué procesador tenemos, la memoria RAM o la tarjeta gráfica pulsando en el panel izquierdo según corresponda.

- **Utilizar comandos del sistema.** En Linux podemos ejecutar el siguiente comando en el terminal:

  `lshw -C cpu,memory`

- **Instalar una aplicación de diagnóstico hardware**, como CPU-Z o AIDA64.

- Si el ordenador no dispone de sistema operativo, podemos arrancar el ordenador con un sistema operativo basado en Linux, como Ubuntu, ya sea desde CD, DVD o memoria USB, y utilizarlo para obtener la información.

Para conocer los **requisitos hardware de los sistemas operativos** podemos consultar la página web de los fabricantes.

### 3.2.3. Planificación de la instalación

La **planificación de la instalación de un sistema operativo** es un proceso esencial antes de implementar un sistema operativo en un ordenador o servidor.

Implica la identificación de requisitos, decisiones estratégicas y la preparación necesaria para asegurar una instalación exitosa.

Los elementos clave que componen la planificación de la instalación de un sistema operativo incluyen:

1. **Requisitos del sistema:** determinar los requisitos mínimos y recomendados del sistema operativo, como la capacidad de CPU, RAM, espacio en disco y otros recursos necesarios para el funcionamiento del sistema.

2. **Elección del sistema operativo:** seleccionar el sistema operativo adecuado para el propósito y las necesidades específicas del sistema. Esto puede incluir la elección entre sistemas operativos como Windows, Linux, macOS, entre otros.

3. **Compatibilidad de hardware:** verificar la compatibilidad del hardware existente con el sistema operativo elegido. Asegurarse de que los controladores necesarios estén disponibles y de que el hardware cumpla con los requisitos del sistema.

4. **Respaldo de datos:** realizar copias de seguridad de todos los datos importantes en el sistema antes de la instalación del sistema operativo. Esto garantiza que los datos críticos estén a salvo y se puedan restaurar si es necesario.

5. **Particionado y almacenamiento:** planificar la estructura de particiones del disco duro, incluyendo la partición raíz, la partición de intercambio (*swap*) y cualquier otra partición necesaria. Esto puede variar según el sistema operativo y la configuración específica.

6. **Método de instalación:** decidir si la instalación se realizará desde un medio de instalación físico, como un DVD o una unidad USB, o si se utilizará una instalación en red. También se debe considerar si se utilizará una imagen de disco (ISO) o una imagen personalizada.

7. **Configuración de red:** definir la configuración de red necesaria, como direcciones IP, configuración de DNS y configuración de firewall. Esto es especialmente importante en sistemas que estarán en una red local o en línea.

8. **Opciones de instalación:** elegir las opciones de instalación, como configuraciones de idioma, zona horaria, configuración de teclado y otros ajustes específicos del sistema operativo.

9. **Gestión de contraseñas:** establecer contraseñas seguras para cuentas de usuario y administrador. La seguridad de las contraseñas es fundamental para proteger el sistema contra accesos no autorizados.

10. **Actualizaciones y parches:** planificar la instalación de actualizaciones y parches del sistema operativo después de la instalación inicial. Mantener el sistema actualizado es crucial para la seguridad y el rendimiento a largo plazo.

11. **Documentación y procedimientos:** documentar todos los pasos de instalación y configuración. Esto es útil para futuras referencias y puede ayudar a otros administradores o usuarios en el futuro.

12. **Pruebas y verificación:** realizar pruebas en el sistema después de la instalación para asegurarse de que todo funcione como se esperaba y que no haya problemas o incompatibilidades.

La planificación adecuada de la instalación de un sistema operativo es esencial para garantizar una implementación exitosa y sin problemas y para evitar problemas posteriores. Cada uno de los elementos mencionados anteriormente juega un papel importante en este proceso.

### 3.2.4. Licencias y condiciones de uso del sistema operativo

Antes de instalar un sistema operativo es necesario comprobar las **condiciones de la licencia** bajo la que se distribuye.

Una licencia de software establece los derechos y las limitaciones que tiene el usuario sobre un programa. Entre otros aspectos, puede determinar:

- En cuántos equipos puede instalarse el software.
- Si la licencia está asociada a un equipo o a un usuario.
- Si puede transferirse a otro ordenador.
- Si es necesario activar el producto.
- Si se permite realizar copias.
- Si el software puede modificarse o redistribuirse.

Por tanto, disponer de los archivos de instalación de un sistema operativo no significa necesariamente que pueda instalarse libremente en cualquier equipo.

#### Licencias de Windows

Microsoft Windows es un sistema operativo propietario y su utilización está sujeta a una licencia.

Para instalar y utilizar Windows legalmente es necesario disponer de una licencia válida que corresponda a la edición instalada.

Entre las formas de licencia más habituales se encuentran:

- **OEM:** normalmente se suministra junto con un equipo nuevo y queda vinculada al dispositivo para el que fue adquirida.
- **Retail:** se adquiere de forma independiente y está destinada a un usuario. Dependiendo de las condiciones de la licencia, puede transferirse de un equipo a otro, siempre que no se utilice simultáneamente en varios equipos.
- **Licencias por volumen:** destinadas principalmente a organizaciones, empresas o centros educativos que necesitan utilizar Windows en numerosos equipos.

Durante la instalación o posteriormente, Windows puede solicitar una **clave de producto** o utilizar una **licencia digital** para comprobar que el sistema dispone de una licencia válida.

La edición instalada debe corresponder con la licencia disponible. Por ejemplo, una licencia de Windows Home no permite utilizar Windows Pro como si se dispusiera de una licencia para dicha edición.

#### Licencias en GNU/Linux

Las distribuciones GNU/Linux utilizan principalmente software distribuido mediante **licencias libres**.

Estas licencias permiten generalmente utilizar, copiar y redistribuir el software y, en muchos casos, modificarlo, siempre respetando las condiciones establecidas por cada licencia.

El núcleo Linux, por ejemplo, se distribuye bajo la licencia **GNU GPL**.

Esto permite que distribuciones como Ubuntu, Debian o Linux Mint puedan descargarse e instalarse legalmente en múltiples equipos sin necesidad de adquirir una licencia individual para cada uno.

Sin embargo, que una distribución GNU/Linux pueda utilizarse gratuitamente no significa que todo el software que contiene o que pueda instalarse posteriormente tenga necesariamente las mismas condiciones de licencia. Algunos programas, controladores o componentes pueden utilizar licencias diferentes.

#### Respeto de las condiciones de licencia durante la instalación

Antes de realizar la instalación de un sistema operativo se debe comprobar:

- Que se dispone de una licencia válida cuando sea necesaria.
- Que la licencia permite instalar el sistema en ese equipo.
- Que se utiliza la edición del sistema operativo correspondiente a la licencia disponible.
- Que no se supera el número de instalaciones permitidas.
- Que se respetan las condiciones de copia, modificación y distribución establecidas por la licencia.
- Que cualquier software adicional instalado también dispone de una licencia adecuada.

Durante muchos procesos de instalación se muestra además un **contrato o acuerdo de licencia**, cuyos términos deben aceptarse para continuar con la instalación.

Respetar las condiciones de utilización del software permite realizar instalaciones legales y evitar el uso de copias no autorizadas o el incumplimiento de las condiciones establecidas por el propietario o desarrollador del software.

### 3.2.5. Selección del sistema operativo: Windows y Linux

#### Introducción

Antes de proceder a instalar un sistema operativo es necesario seleccionar cuál se va a utilizar, teniendo en cuenta las características del equipo, el uso que se le va a dar, la compatibilidad con el hardware y el tipo de usuario.

Hoy en día, los dos sistemas operativos más comunes en los ordenadores personales son **Microsoft Windows** y **GNU/Linux**.

Ambos permiten realizar tareas similares —como navegar por Internet, crear documentos o reproducir multimedia—, pero presentan diferencias significativas en su filosofía, estructura, gestión del software y mantenimiento.

La elección entre uno u otro no depende únicamente del gusto personal, sino también de criterios técnicos, económicos y de uso profesional.

#### Distribuciones Linux

Linux no es un sistema operativo único, sino un conjunto de sistemas derivados del núcleo Linux que comparten una misma base, pero difieren en su diseño, programas incluidos y enfoque de usuario. A cada una de estas variantes se la conoce como **distribución**.

Cada distribución combina el kernel de Linux con un conjunto de herramientas, entorno de escritorio y gestor de paquetes que determinan su aspecto y funcionamiento.

Algunas características generales de las distribuciones Linux son:

- **Código abierto y software libre:** gran parte del software incluido en las distribuciones GNU/Linux utiliza licencias libres y de código abierto. Muchas distribuciones pueden descargarse y utilizarse gratuitamente.

- **Gran variedad de distribuciones adaptadas a distintos perfiles:**
  - Ubuntu, Linux Mint o Zorin OS: pensadas para usuarios principiantes.
  - Debian o Fedora: distribuciones ampliamente utilizadas tanto por usuarios avanzados como en entornos profesionales.
  - Kali Linux o Parrot OS: especializadas en seguridad informática.
  - CentOS Stream o AlmaLinux: diseñadas para servidores.

- **Seguridad y estabilidad:** los sistemas GNU/Linux disponen de mecanismos de usuarios, permisos y control de acceso que permiten proteger los recursos del sistema.

- **Gestores de paquetes:** cada distribución utiliza un sistema propio para instalar y actualizar software, por ejemplo, `apt` en Ubuntu, `dnf` en Fedora o `pacman` en Arch.

- **Flexibilidad y personalización:** permiten elegir entre diferentes entornos de escritorio, como GNOME, KDE, XFCE, etc., y configuraciones adaptadas al hardware disponible.

Algunas distribuciones, como Ubuntu, ofrecen diferentes tipos de versiones. Entre ellas destacan las versiones **LTS** (*Long Term Support*), que reciben actualizaciones de mantenimiento y seguridad durante un periodo prolongado y son especialmente adecuadas cuando se busca estabilidad a largo plazo.

#### Versiones y ediciones de Windows

Microsoft Windows es un sistema operativo propietario desarrollado y mantenido por Microsoft.

Su código fuente no está disponible y se distribuye bajo licencia comercial.

Las versiones modernas de Windows, como Windows 10 y Windows 11, se ofrecen en distintas ediciones, que comparten la misma base técnica pero se diferencian en las funcionalidades incluidas, el tipo de licencia y el público al que van dirigidas.

Las principales ediciones son:

- **Windows Home:** versión básica orientada al uso doméstico. Incluye todas las funciones necesarias para un usuario particular, pero carece de herramientas avanzadas de administración.

- **Windows Pro:** versión profesional con funciones adicionales como unión a dominios, cifrado BitLocker, escritorio remoto y administración por políticas de grupo.

- **Windows Enterprise y Education:** diseñadas para empresas y centros educativos; ofrecen mayor control y opciones de despliegue masivo.

- **Windows Server:** familia de sistemas operativos orientada a servidores y destinada a proporcionar y administrar servicios de red, dominios, almacenamiento y otros recursos.

Windows se caracteriza por:

- **Interfaz gráfica intuitiva**, que facilita su uso a usuarios sin experiencia técnica.
- **Amplia compatibilidad con hardware y software comercial.**
- **Actualizaciones automáticas** gestionadas por Microsoft.
- **Necesidad de licencia para su uso legal**, como OEM, Retail o volumen.



#### Comparativa general: Windows vs. Linux

| Característica                 | Linux (distribuciones GNU/Linux)                             | Windows (Microsoft)                                          |
| ------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Licencia**                   | Predominan las licencias libres y de código abierto. Muchas distribuciones pueden descargarse y utilizarse gratuitamente. | Software propietario sujeto a las condiciones de licencia de Microsoft. |
| **Código fuente**              | El código fuente del núcleo y de gran parte del software está disponible y puede estudiarse y modificarse según las condiciones de su licencia. | El código fuente no está disponible públicamente para su modificación y distribución. |
| **Requisitos hardware**        | Dependen de la distribución y del entorno de escritorio. Existen distribuciones adecuadas para equipos con recursos limitados. | Dependen de la versión instalada. Las versiones actuales, como Windows 11, establecen unos requisitos hardware determinados. |
| **Compatibilidad de hardware** | Amplia, aunque determinados dispositivos pueden presentar limitaciones o requerir controladores específicos. | Muy amplia, especialmente en hardware de consumo, debido al amplio soporte proporcionado por los fabricantes. |
| **Instalación de software**    | Principalmente mediante repositorios y gestores de paquetes, aunque también existen otros métodos de instalación. | Mediante Microsoft Store, instaladores como `.exe` o `.msi` y otros sistemas de distribución de software. |
| **Seguridad**                  | Dispone de mecanismos de usuarios, permisos y control de acceso, además de herramientas de seguridad y actualización. | Dispone de mecanismos de usuarios, permisos y control de acceso, además de herramientas integradas de seguridad como Microsoft Defender. |
| **Entorno de trabajo**         | Puede utilizar diferentes entornos de escritorio, como GNOME, KDE Plasma o XFCE. | Utiliza el entorno gráfico proporcionado por Microsoft, con elementos como el menú Inicio y el Explorador de archivos. |
| **Soporte técnico**            | Puede disponer de soporte comunitario y, dependiendo de la distribución, soporte profesional o comercial. | Dispone de soporte de Microsoft y de numerosos fabricantes y proveedores especializados. |
| **Actualizaciones**            | Se gestionan mediante las herramientas y repositorios propios de cada distribución y su frecuencia depende de la distribución utilizada. | Se gestionan principalmente mediante Windows Update y dependen de la política de actualizaciones de Microsoft. |
| **Uso habitual**               | Muy utilizado en servidores, desarrollo de software, administración de sistemas y también como sistema operativo de escritorio. | Muy utilizado en ordenadores personales, empresas, aplicaciones comerciales y videojuegos. |

#### Conclusión

La elección entre Windows y Linux debe hacerse en función del tipo de usuario y del uso que se vaya a dar al equipo:

- Si se busca compatibilidad con software comercial, juegos o un entorno ampliamente conocido, Windows es la opción más adecuada.
- Si se priorizan la seguridad, estabilidad, personalización y coste cero, Linux resulta más recomendable, especialmente en entornos educativos o profesionales de la informática.

En muchos casos, la mejor opción es aprovechar ambos sistemas en un mismo equipo mediante **arranque dual o virtualización**, lo que permite beneficiarse de las ventajas de cada uno según la tarea a realizar.