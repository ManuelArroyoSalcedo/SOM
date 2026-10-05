# UT2. Máquinas virtuales

Para poder desarrollar este módulo es necesario poner en práctica muchos de los conceptos estudiados. Para ello será imprescindible instalar, configurar y administrar diferentes sistemas operativos.

Estas tareas no pueden realizarse directamente sobre los ordenadores del aula, ya que en muchas ocasiones necesitaremos permisos de administrador. Además, modificar el sistema operativo instalado podría afectar a su funcionamiento e incluso impedir que otros alumnos pudieran utilizar el equipo con normalidad.

Para evitar estos problemas utilizaremos un **software de virtualización**, que nos permitirá crear **máquinas virtuales**. Gracias a ellas podremos instalar y utilizar otros sistemas operativos dentro del sistema operativo principal del ordenador, trabajando con ellos casi como si estuvieran instalados en un ordenador físico independiente.

A lo largo de esta unidad aprenderemos qué son las máquinas virtuales, cómo funcionan, cuáles son sus ventajas e inconvenientes y cómo crear y configurar nuestros propios entornos virtuales para realizar las prácticas del módulo de forma segura.

> [!NOTE]
>
> **Nota:** La creación y configuración de máquinas virtuales con un software de virtualización (Oracle VirtualBox, VMware, etc.) se explicará de forma práctica en clase mediante una demostración del profesor. Posteriormente, el alumnado realizará estas operaciones de forma autónoma durante las prácticas de la unidad.

## 1. Virtualización

Lo normal es que un ordenador tenga instalado un único sistema operativo y una serie de aplicaciones que le permitan realizar una determinada función. Sin embargo, en ocasiones es necesario disponer de otro ordenador para realizar determinadas tareas, como probar un nuevo sistema operativo, instalar una nueva versión de un programa o experimentar con diferentes configuraciones sin poner en riesgo el equipo que utilizamos habitualmente.

Las razones pueden ser muy diversas, pero, salvo en casos concretos, no solemos disponer de un segundo ordenador para realizar estas pruebas o, simplemente, necesitamos preservar el funcionamiento del ordenador que utilizamos a diario.

La virtualización permite disponer de varios ordenadores en un único ordenador físico. Además del ordenador real, conocido como **equipo anfitrión**, es posible crear varios **ordenadores virtuales**, cada uno con su propio sistema operativo y configuración. De este modo, podemos realizar pruebas, instalar software o configurar diferentes entornos de trabajo sin afectar al funcionamiento del ordenador principal.

### 1.1 ¿Qué es la virtualización?

> La **virtualización** es una tecnología que permite crear recursos virtuales, como ordenadores, discos duros o redes, que funcionan como si fueran recursos físicos.

> [!NOTE]
>
> **Nota:** En este contexto, **virtual** significa creado mediante software, no físico.

En este módulo nos centraremos en la virtualización de ordenadores. Gracias a esta tecnología es posible crear ordenadores virtuales sobre los que instalar y ejecutar un sistema operativo, del mismo modo que se haría en un ordenador físico.

Cada uno de estos ordenadores virtuales funciona de forma independiente y dispone de sus propios recursos virtuales, como procesador, memoria RAM, almacenamiento o adaptadores de red. Además, puede tener instalado su propio sistema operativo, sus aplicaciones y su propia configuración, comportándose de forma muy similar a un ordenador físico.

Estos ordenadores virtuales reciben el nombre de **máquinas virtuales** (*Virtual Machine* o **VM**), y constituyen el elemento fundamental de la virtualización de ordenadores.

### 1.2 ¿Qué es una máquina virtual?

La aplicación de la tecnología de virtualización permite crear ordenadores virtuales. Estos ordenadores virtuales reciben el nombre de **máquinas virtuales** (*Virtual Machine* o **VM**).

> Una **máquina virtual (VM, *Virtual Machine*)** es un ordenador virtual creado mediante la tecnología de virtualización sobre el que es posible instalar un sistema operativo y ejecutar aplicaciones.

Desde el punto de vista del usuario, una máquina virtual se comporta prácticamente igual que un ordenador real. Es posible instalar un sistema operativo, utilizar aplicaciones, conectarse a Internet, crear archivos o conectar dispositivos externos, entre otras muchas operaciones.

Cada máquina virtual dispone de unos recursos virtuales, como procesador, memoria RAM, disco duro (almacenamiento) o adaptadores de red, que son asignados por el software de virtualización a partir de los recursos disponibles en el ordenador físico.

El ordenador físico sobre el que se crean y ejecutan las máquinas virtuales recibe el nombre de **equipo anfitrión** (*host*). Por su parte, el sistema operativo instalado en una máquina virtual recibe el nombre de **sistema operativo invitado** (*guest*).

Una de las características más importantes de las máquinas virtuales es su aislamiento. Cada máquina virtual funciona de forma independiente, por lo que los cambios realizados en una de ellas no afectan al resto de máquinas virtuales ni al sistema operativo anfitrión.

### 1.3 Ventajas e inconvenientes de la virtualización

La utilización de máquinas virtuales ofrece numerosas ventajas tanto en entornos profesionales como educativos. Sin embargo, también presenta algunas limitaciones que conviene conocer.

#### Ventajas

Como ventajas podemos destacar:

**Ahorro de costos**
La consolidación de servidores y la optimización de recursos llevan a un ahorro significativo en costos de hardware, energía y espacio en el centro de datos. También reduce los costos operativos al simplificar la administración y la implementación de sistemas.

**Aislamiento y seguridad**
Cada máquina virtual se ejecuta de manera aislada, lo que significa que los problemas en una VM no afectarán a otras VM en el mismo servidor. Esto aumenta la seguridad y la confiabilidad, ya que los fallos en una máquina virtual no afectarán a otras aplicaciones o servicios.

**Optimización de servidores**
La virtualización permite ejecutar múltiples máquinas virtuales en un solo servidor físico, lo que ayuda a utilizar de manera más eficiente la capacidad de procesamiento y la memoria. Esto conduce a la optimización de servidores, lo que reduce la necesidad de adquirir y mantener una gran cantidad de hardware físico.

**Flexibilidad y escalabilidad**
La virtualización permite la creación rápida de nuevas máquinas virtuales y la asignación de recursos según sea necesario. Esto facilita la escalabilidad de las aplicaciones y servicios, ya que los recursos pueden ajustarse en función de la demanda.

**Pruebas y desarrollo**
Las máquinas virtuales proporcionan entornos de pruebas aislados que permiten a los desarrolladores probar nuevas configuraciones, aplicaciones y sistemas sin afectar a la infraestructura de producción. Esto ayuda a reducir errores y problemas antes de implementar soluciones en producción.

**Recuperación ante desastres**
La virtualización facilita la creación de copias de seguridad y la recuperación de sistemas y datos en caso de desastres. Las máquinas virtuales se pueden replicar y almacenar en ubicaciones seguras para garantizar la continuidad del negocio.

**Eficiencia energética**:
Al reducir la cantidad de servidores físicos necesarios, la virtualización contribuye a una mayor eficiencia energética, lo que a su vez reduce los costos operativos y el impacto ambiental.

#### Inconvenientes

Como inconvenientes, podemos destacar los siguientes:

**Mayor consumo de recursos**
Cada máquina virtual utiliza parte del procesador, la memoria RAM, el almacenamiento y otros recursos del ordenador anfitrión. Si se ejecutan varias máquinas virtuales al mismo tiempo o se les asignan demasiados recursos, el rendimiento del equipo puede disminuir de forma considerable.

**Menor rendimiento**
Aunque las máquinas virtuales ofrecen un comportamiento muy similar al de un ordenador físico, su rendimiento suele ser ligeramente inferior, ya que los recursos del equipo anfitrión deben compartirse entre todas las máquinas virtuales en ejecución.

**Dependencia del equipo anfitrión**
El funcionamiento de todas las máquinas virtuales depende del ordenador físico sobre el que se ejecutan. Si el equipo anfitrión se apaga, sufre una avería o deja de funcionar, todas las máquinas virtuales dejarán de estar disponibles.

**Mayor complejidad de administración**
Gestionar varias máquinas virtuales requiere planificar adecuadamente la asignación de recursos, el almacenamiento, las copias de seguridad y la configuración de las redes virtuales. A medida que aumenta el número de máquinas virtuales, también aumenta la complejidad de su administración.

**Necesidad de hardware suficiente**
Para ejecutar varias máquinas virtuales de forma simultánea es recomendable disponer de un ordenador con un procesador moderno, suficiente memoria RAM y una capacidad de almacenamiento adecuada. En equipos con recursos limitados, la experiencia de uso puede verse afectada.

## 2. Software de virtualización

Hasta ahora hemos estudiado qué es la virtualización y cómo permite crear máquinas virtuales. Sin embargo, para poder utilizar esta tecnología es necesario disponer de un programa capaz de crear, ejecutar y administrar dichas máquinas virtuales.

Estos programas reciben el nombre de **software de virtualización** y constituyen el elemento fundamental que hace posible la virtualización de ordenadores. Dependiendo de cómo se integren con el hardware y con el sistema operativo, pueden clasificarse en distintos tipos y ofrecer diferentes características.

En este capítulo estudiaremos qué es un hipervisor, los principales tipos de hipervisores existentes y algunos de los programas de virtualización más utilizados en la actualidad.

### 2.1 Hipervisor

Hasta ahora hemos visto que la virtualización permite crear máquinas virtuales. Sin embargo, para poder crearlas y utilizarlas es necesario un software especializado denominado **hipervisor**.

> Un **hipervisor** es el software encargado de crear, ejecutar y administrar las máquinas virtuales.

El hipervisor actúa como intermediario entre el hardware del ordenador y las máquinas virtuales. Su función es gestionar los recursos físicos del equipo, como el procesador, la memoria RAM, el almacenamiento o la red, y repartirlos entre las distintas máquinas virtuales.

Además, el hipervisor garantiza que cada máquina virtual funcione de forma independiente, evitando que los cambios o los problemas que se produzcan en una de ellas afecten al resto.

### 2.2 Tipos de hipervisores

Los hipervisores pueden clasificarse en dos grandes grupos, según el lugar en el que se ejecutan.

#### Hipervisor de tipo 1 (Bare-Metal)

Los hipervisores de **tipo 1** se instalan directamente sobre el hardware del ordenador, sin necesidad de un sistema operativo previo.

En este tipo de hipervisores, es el propio hipervisor el que se comunica directamente con el hardware del equipo y administra sus recursos. De este modo, se encarga tanto de gestionar el procesador, la memoria, el almacenamiento o la red como de crear y ejecutar las máquinas virtuales.

Al no existir un sistema operativo que actúe como intermediario, se obtiene un mayor rendimiento y una gestión más eficiente de los recursos del equipo.

Este tipo de hipervisores se utiliza principalmente en servidores y centros de datos.

Algunos ejemplos son **Proxmox VE**,  **VMware ESXi**, **Microsoft Hyper-V** (en su versión para servidores) y **Xen**.

#### Hipervisor de tipo 2 (Hosted)

Los hipervisores de **tipo 2** se instalan como una aplicación sobre un sistema operativo ya existente.

En este caso, el hipervisor no se comunica directamente con el hardware del ordenador, sino que utiliza los servicios proporcionados por el sistema operativo anfitrión para acceder al procesador, la memoria, el almacenamiento y el resto de recursos del equipo.

Este tipo de hipervisores es el más utilizado en equipos personales, entornos educativos y laboratorios de pruebas, ya que resulta muy sencillo de instalar y utilizar.

Algunos ejemplos son **Oracle VirtualBox** y **VMware Workstation**.

| Característica | Tipo 1                           | Tipo 2                         |
| -------------- | -------------------------------- | ------------------------------ |
| Instalación    | Directamente sobre el hardware   | Sobre un sistema operativo     |
| Rendimiento    | Mayor                            | Algo inferior                  |
| Uso habitual   | Servidores                       | Equipos personales             |
| Ejemplos       | Proxmox VE, VMware ESXi, Hyper-V | VirtualBox, VMware Workstation |

### 2.3 Programas de virtualización

Actualmente existen numerosos programas que permiten crear y administrar máquinas virtuales. Algunos están orientados al uso doméstico y educativo, mientras que otros se utilizan principalmente en entornos profesionales y centros de datos.

A continuación se presentan algunos de los programas de virtualización más utilizados.

#### Oracle VirtualBox

**Oracle VirtualBox** es un programa de virtualización **libre y gratuito** desarrollado por Oracle. Implementa un **hipervisor de tipo 2**, por lo que se instala como una aplicación sobre un sistema operativo ya existente.

Está disponible para Windows, Linux, macOS y Solaris, siendo uno de los programas de virtualización más utilizados en el ámbito educativo gracias a su facilidad de uso y a que puede utilizarse sin coste.

En este módulo utilizaremos VirtualBox para crear y administrar nuestras máquinas virtuales.

#### VMware Workstation

**VMware Workstation** es un programa de virtualización **propietario** que también implementa un **hipervisor de tipo 2**. Se instala como una aplicación sobre Windows o Linux.

Su principal ventaja es que ofrece un mayor número de funciones avanzadas, un mejor rendimiento y herramientas de administración más completas que VirtualBox, por lo que es muy utilizado en empresas y entornos profesionales.

Aunque ambas aplicaciones permiten crear máquinas virtuales, VirtualBox suele ser la opción preferida en el ámbito educativo por ser gratuito, mientras que VMware Workstation está más orientado al uso profesional.

#### Microsoft Hyper-V

**Microsoft Hyper-V** es la solución de virtualización desarrollada por Microsoft. Implementa un **hipervisor de tipo 1** y está integrado en determinadas ediciones de Windows, como Windows Pro, Enterprise y Windows Server.

Está especialmente orientado a entornos profesionales y empresariales, donde permite crear y administrar máquinas virtuales con un alto rendimiento y una integración completa con el ecosistema Microsoft.

## 3. Creación de máquinas virtuales

Una vez conocidos los conceptos básicos sobre virtualización, el siguiente paso consiste en crear y configurar una máquina virtual sobre la que instalar un sistema operativo.

La creación de una máquina virtual no consiste únicamente en pulsar un botón, sino en decidir qué recursos del ordenador anfitrión se reservarán para el nuevo ordenador virtual.

En este capítulo estudiaremos los requisitos necesarios para crear una máquina virtual, los principales parámetros que deben configurarse y las opciones más importantes que ofrecen los programas de virtualización.

### 3.1 Requisitos previos

Antes de crear una máquina virtual es necesario comprobar que el ordenador reúne una serie de requisitos. Si alguno de ellos no se cumple, la máquina virtual no podrá crearse o su funcionamiento será incorrecto.

#### Virtualización en la BIOS/UEFI

Para que un ordenador pueda crear y ejecutar máquinas virtuales, es necesario que su procesador disponga de soporte para la virtualización por hardware. Esta característica está incorporada en la mayoría de los procesadores actuales, aunque algunos equipos de bajo coste o determinados dispositivos portátiles pueden no disponer de ella.

En los procesadores Intel esta tecnología recibe el nombre de **Intel VT-x**, mientras que en los procesadores AMD se denomina **AMD-V**. Gracias a estas tecnologías, el procesador puede ejecutar máquinas virtuales de forma más eficiente y con un mejor rendimiento.

En la mayoría de los equipos esta característica viene activada por defecto. Sin embargo, si está deshabilitada, será necesario acceder a la configuración de la **BIOS/UEFI** para activarla. En caso contrario, los programas de virtualización no podrán crear o ejecutar máquinas virtuales correctamente.

#### Imagen ISO

Para instalar un sistema operativo en una máquina virtual es necesario disponer de una **imagen ISO** del sistema operativo que se desea instalar.

Una imagen ISO es un archivo que contiene una copia exacta del contenido de un disco de instalación, como un DVD o un CD. Actualmente, la mayoría de los sistemas operativos se distribuyen en este formato, lo que permite utilizarlos tanto para instalar el sistema en un ordenador físico como en una máquina virtual.

#### Recursos hardware

Las máquinas virtuales utilizan parte de los recursos del ordenador anfitrión para funcionar. Por este motivo, es necesario que el equipo disponga de suficiente capacidad de procesamiento, memoria RAM y espacio de almacenamiento para ejecutar tanto el sistema operativo anfitrión como las máquinas virtuales.

Cuantos más recursos se asignen a una máquina virtual, mejor será su rendimiento. Sin embargo, estos recursos dejarán de estar disponibles para el resto del sistema mientras la máquina virtual esté en funcionamiento. Por ello, es importante realizar una asignación equilibrada que permita un funcionamiento adecuado tanto del equipo anfitrión como de las máquinas virtuales.

### 3.2 Creación de una máquina virtual

Una vez comprobados los requisitos previos, ya es posible crear una máquina virtual utilizando un programa de virtualización como Oracle VirtualBox.

Durante el proceso de creación es necesario indicar una serie de datos básicos que permitirán definir las características de la nueva máquina virtual. Entre los parámetros más importantes se encuentran:

- **Nombre de la máquina virtual**, que permitirá identificarla fácilmente.
- **Sistema operativo**, indicando el sistema operativo que se instalará posteriormente en la máquina virtual.
- **Procesador (CPU)**, especificando el número de núcleos que se asignarán a la máquina virtual.
- **Memoria RAM**, indicando la cantidad de memoria que podrá utilizar.
- **Disco duro virtual**, donde se almacenarán el sistema operativo, las aplicaciones y los archivos de la máquina virtual.

Una vez completados estos pasos, la máquina virtual quedará creada y estará preparada para configurar el resto de sus opciones e instalar el sistema operativo correspondiente.

### 3.3 Configuración de la máquina virtual

Una vez creada la máquina virtual, es posible modificar numerosos parámetros que determinan su funcionamiento. Estos parámetros permiten adaptar la máquina virtual a las necesidades del sistema operativo que se va a instalar y a los recursos disponibles en el ordenador anfitrión.

A continuación se describen las opciones de configuración más importantes.

#### Procesador

Permite indicar el número de núcleos del procesador que podrá utilizar la máquina virtual. Cuantos más núcleos se asignen, mayor será el rendimiento del sistema operativo invitado, aunque estos recursos dejarán de estar disponibles para el sistema operativo anfitrión mientras la máquina virtual esté en funcionamiento.

#### Memoria RAM

Permite establecer la cantidad de memoria RAM que utilizará la máquina virtual. Es importante asignar la memoria suficiente para que el sistema operativo invitado funcione correctamente, pero evitando reservar más memoria de la necesaria, ya que el ordenador anfitrión también necesita disponer de recursos para funcionar con normalidad.

#### Disco duro virtual

Es el dispositivo de almacenamiento de la máquina virtual. En él se instalarán el sistema operativo, las aplicaciones y los archivos del usuario. Su tamaño debe ser suficiente para almacenar toda la información que vaya a utilizarse durante el funcionamiento de la máquina virtual.

#### Red

La configuración de red determina cómo se comunicará la máquina virtual con el ordenador anfitrión y con el resto de equipos de la red.

Los programas de virtualización ofrecen diferentes modos de conexión, cada uno diseñado para un propósito concreto. En este módulo se estudiarán y utilizarán los modos de red más habituales durante la realización de las prácticas.

#### Pantalla

Permite configurar diferentes aspectos relacionados con la visualización de la máquina virtual, como la memoria de vídeo, la aceleración gráfica o el número de monitores virtuales. Una configuración adecuada mejora la experiencia de uso, especialmente cuando se utilizan interfaces gráficas.

#### Carpetas compartidas

Permiten compartir archivos y carpetas entre el ordenador anfitrión y la máquina virtual, facilitando el intercambio de información sin necesidad de utilizar dispositivos de almacenamiento externos o servicios en la nube.

#### USB

Permite conectar dispositivos USB del ordenador anfitrión directamente a la máquina virtual. De esta forma, el sistema operativo invitado puede utilizar memorias USB, discos externos, impresoras u otros dispositivos compatibles como si estuvieran conectados físicamente a él.

## 4. Utilización de máquinas virtuales

Una vez creada y configurada una máquina virtual, ya es posible comenzar a utilizarla como si se tratara de un ordenador físico. Sin embargo, los programas de virtualización ofrecen una serie de herramientas y opciones que facilitan la integración entre la máquina virtual y el ordenador anfitrión, mejorando la experiencia de uso y permitiendo compartir recursos entre ambos sistemas.

Además, es posible configurar diferentes modos de conexión de red, adaptando el funcionamiento de la máquina virtual a las necesidades de cada situación. De este modo, una máquina virtual puede comunicarse únicamente con el ordenador anfitrión, con otras máquinas virtuales o con el resto de equipos de una red local e incluso acceder a Internet.

En este capítulo estudiaremos las principales opciones de integración entre el sistema anfitrión y la máquina virtual, así como los modos de conexión de red más utilizados.

### 4.1 Integración entre anfitrión e invitado

Aunque una máquina virtual funciona de forma independiente del ordenador anfitrión, los programas de virtualización permiten establecer distintos mecanismos de comunicación entre ambos sistemas. Gracias a estas herramientas es posible compartir información y utilizar determinados recursos del ordenador físico desde la máquina virtual, facilitando el trabajo diario del usuario.

A continuación se describen las principales formas de integración entre el sistema anfitrión y el sistema operativo invitado.

#### Carpetas compartidas

Las **carpetas compartidas** permiten que el ordenador anfitrión y la máquina virtual accedan a una misma carpeta del sistema de archivos. De esta forma es posible intercambiar documentos, imágenes o cualquier otro tipo de archivo sin necesidad de utilizar memorias USB, discos externos o servicios de almacenamiento en la nube.

#### Portapapeles compartido

El **portapapeles compartido** permite copiar y pegar texto, imágenes o archivos entre el ordenador anfitrión y la máquina virtual. Esta opción facilita el intercambio de información entre ambos sistemas y evita tener que repetir tareas de forma manual.

#### Arrastrar y soltar

La función **arrastrar y soltar** (*Drag and Drop*) permite mover archivos entre el ordenador anfitrión y la máquina virtual simplemente arrastrándolos con el ratón. Esta característica ofrece una forma rápida e intuitiva de transferir información entre ambos sistemas.

#### Dispositivos USB

Los programas de virtualización también permiten conectar dispositivos **USB** directamente a la máquina virtual. De esta forma, memorias USB, discos externos, impresoras u otros dispositivos compatibles pueden ser utilizados por el sistema operativo invitado como si estuvieran conectados físicamente a él.

Para poder utilizar algunas de estas funciones de integración suele ser necesario instalar herramientas adicionales proporcionadas por el programa de virtualización, como las **Guest Additions** de Oracle VirtualBox o las **VMware Tools** de VMware.

### 4.2 Modos de conexión de red

Las máquinas virtuales pueden comunicarse con otros equipos de diferentes formas, dependiendo de la configuración de red que se utilice. Los programas de virtualización ofrecen varios modos de conexión, cada uno pensado para una situación concreta.

La elección de un modo de red determinará si la máquina virtual puede acceder a Internet, comunicarse con el ordenador anfitrión o intercambiar información con otros equipos de la red local.

#### NAT (Network Address Translation)

El modo **NAT** permite que la máquina virtual acceda a Internet utilizando la conexión de red del ordenador anfitrión.

En este modo, la máquina virtual puede navegar por Internet y descargar actualizaciones, pero el resto de equipos de la red local no pueden acceder directamente a ella. Por este motivo, es el modo más seguro y el que suele estar configurado por defecto en la mayoría de los programas de virtualización.

#### Adaptador puente (Bridged Adapter)

El modo **Adaptador puente** conecta la máquina virtual directamente a la red física. En este caso, la máquina virtual se comporta como un ordenador más de la red, obteniendo su propia dirección IP y pudiendo comunicarse con el resto de equipos conectados a la misma red local.

Este modo resulta especialmente útil cuando se desea que otros equipos puedan acceder a la máquina virtual o cuando se realizan prácticas relacionadas con redes y servidores.

#### Red interna (Internal Network)

El modo **Red interna** crea una red privada formada únicamente por las máquinas virtuales que pertenezcan a esa misma red.

Las máquinas virtuales pueden comunicarse entre sí, pero no tienen acceso al ordenador anfitrión ni a Internet. Este modo es muy útil para realizar prácticas de redes en un entorno completamente aislado.

#### Solo anfitrión (Host-Only)

El modo **Solo anfitrión** (*Host-Only*) crea una red privada entre el ordenador anfitrión y las máquinas virtuales.

Las máquinas virtuales pueden comunicarse con el ordenador anfitrión y con otras máquinas virtuales configuradas en esa misma red, pero no tienen acceso directo a Internet ni al resto de equipos de la red local.

Este modo resulta especialmente útil para realizar pruebas y compartir información entre el ordenador anfitrión y las máquinas virtuales sin exponerlas a la red.

| Modo de red      | Internet | Comunicación con el anfitrión | Comunicación con la red local                        |
| ---------------- | -------- | ----------------------------- | ---------------------------------------------------- |
| NAT              | Sí       | Sí                            | No                                                   |
| Adaptador puente | Sí       | Sí                            | Sí                                                   |
| Red interna      | No       | No                            | No (solo con las máquinas virtuales de la misma red) |
| Solo anfitrión   | No       | Sí                            | No                                                   |

## 5. Rendimiento de las máquinas virtuales

El rendimiento de una máquina virtual depende, en gran medida, de los recursos hardware que tenga asignados y de las características del ordenador anfitrión sobre el que se ejecuta. Una configuración inadecuada puede provocar un funcionamiento lento tanto de la máquina virtual como del propio equipo anfitrión.

Por este motivo, al crear y configurar una máquina virtual es importante asignar los recursos necesarios para que el sistema operativo invitado funcione correctamente, evitando al mismo tiempo consumir más recursos de los imprescindibles.

En este capítulo estudiaremos los principales factores que influyen en el rendimiento de las máquinas virtuales y algunas recomendaciones para optimizar su funcionamiento.

### 5.1 Recursos hardware y rendimiento

El rendimiento de una máquina virtual depende principalmente de los recursos hardware que tenga asignados. Si estos recursos son insuficientes, el sistema operativo invitado funcionará con lentitud. Por el contrario, asignar más recursos de los necesarios también puede perjudicar al ordenador anfitrión, ya que dispondrá de menos recursos para ejecutar sus propias aplicaciones.

Por este motivo, es importante encontrar un equilibrio entre las necesidades de la máquina virtual y los recursos disponibles en el equipo anfitrión.

#### Procesador

El procesador es el encargado de ejecutar las instrucciones del sistema operativo y de las aplicaciones instaladas en la máquina virtual. Cuantos más núcleos se asignen, mayor será la capacidad de procesamiento disponible y, en general, mejor será el rendimiento.

Sin embargo, asignar un número excesivo de núcleos puede reducir el rendimiento del ordenador anfitrión y del resto de máquinas virtuales que estén funcionando al mismo tiempo. Por ello, es recomendable asignar únicamente los núcleos necesarios para el uso que vaya a tener la máquina virtual.

#### Memoria RAM

La memoria RAM almacena temporalmente los programas y los datos que está utilizando el sistema operativo. Si la máquina virtual dispone de poca memoria, el sistema operativo funcionará con lentitud e incluso algunas aplicaciones podrían no ejecutarse correctamente.

Por el contrario, asignar demasiada memoria RAM hará que el ordenador anfitrión disponga de menos memoria para ejecutar sus propias aplicaciones, pudiendo afectar al rendimiento general del sistema.

#### Almacenamiento

El almacenamiento es el lugar donde se instala el sistema operativo invitado y se guardan las aplicaciones y los archivos de la máquina virtual.

Además de disponer de suficiente capacidad, la velocidad del dispositivo de almacenamiento también influye en el rendimiento. Una máquina virtual almacenada en una unidad SSD ofrecerá tiempos de arranque y de carga mucho menores que si se encuentra en un disco duro mecánico (HDD).

Al crear una máquina virtual es recomendable asignar un tamaño de disco adecuado a las necesidades del sistema operativo y dejar suficiente espacio libre para la instalación de aplicaciones y el almacenamiento de archivos.

### 5.2 Factores que afectan al rendimiento

Además de los recursos asignados a la máquina virtual, existen otros factores que pueden influir de forma significativa en su rendimiento. Conocer estos factores permite configurar adecuadamente las máquinas virtuales y evitar problemas de funcionamiento.

#### Número de máquinas virtuales en ejecución

Cada máquina virtual consume parte de los recursos del ordenador anfitrión. Si se ejecutan varias máquinas virtuales al mismo tiempo, todas ellas compartirán el procesador, la memoria RAM y el almacenamiento disponibles.

A medida que aumenta el número de máquinas virtuales en funcionamiento, también aumenta la carga de trabajo del equipo anfitrión, pudiendo disminuir el rendimiento de todas ellas.

#### Recursos asignados

La cantidad de procesador, memoria RAM y espacio de almacenamiento asignados a una máquina virtual influye directamente en su rendimiento.

Una configuración con recursos insuficientes provocará un funcionamiento lento del sistema operativo invitado, mientras que una asignación excesiva puede reducir el rendimiento del ordenador anfitrión al dejar menos recursos disponibles para el resto del sistema.

#### Recursos disponibles en el equipo anfitrión

El rendimiento de una máquina virtual también depende de las características del ordenador físico sobre el que se ejecuta. Un equipo con un procesador más potente, mayor cantidad de memoria RAM y almacenamiento rápido permitirá ejecutar máquinas virtuales de forma más fluida que un equipo con recursos limitados.

Por este motivo, antes de crear varias máquinas virtuales es conveniente comprobar que el ordenador anfitrión dispone de recursos suficientes para soportarlas.

#### Tipo de almacenamiento

El dispositivo de almacenamiento utilizado por la máquina virtual influye en la velocidad de arranque del sistema operativo, la carga de aplicaciones y el acceso a los archivos.

Las máquinas virtuales almacenadas en unidades **SSD** ofrecen un rendimiento considerablemente superior a las almacenadas en discos duros mecánicos (**HDD**), ya que los tiempos de lectura y escritura son mucho menores.

### 5.3 Buenas prácticas

Una configuración adecuada de una máquina virtual permite obtener un buen rendimiento tanto del sistema operativo invitado como del ordenador anfitrión. Para ello, es recomendable seguir una serie de buenas prácticas que ayuden a aprovechar los recursos disponibles de forma eficiente.

#### Asignar únicamente los recursos necesarios

Es recomendable asignar a la máquina virtual únicamente los recursos que realmente necesite. Reservar más procesador, memoria RAM o almacenamiento del necesario no mejorará significativamente su rendimiento y puede reducir el del ordenador anfitrión.

#### No agotar la memoria RAM del anfitrión

La memoria RAM asignada a una máquina virtual deja de estar disponible para el sistema operativo anfitrión mientras la máquina virtual está en funcionamiento. Por ello, siempre debe reservarse suficiente memoria para que el ordenador anfitrión pueda seguir funcionando con normalidad.

#### Evitar asignar todos los núcleos del procesador

Aunque una máquina virtual pueda utilizar varios núcleos del procesador, no es recomendable asignarle todos los disponibles. El sistema operativo anfitrión y el resto de aplicaciones también necesitan capacidad de procesamiento para funcionar correctamente.

#### Mantener espacio libre en el disco

Es aconsejable disponer de espacio libre suficiente tanto en el disco duro virtual como en el dispositivo de almacenamiento del ordenador anfitrión. Un almacenamiento casi lleno puede afectar negativamente al rendimiento del sistema y dificultar la instalación de nuevas aplicaciones o la creación de instantáneas.

#### Apagar las máquinas virtuales que no se utilicen

Las máquinas virtuales consumen recursos mientras permanecen en ejecución. Cuando no sea necesario utilizarlas, es recomendable apagarlas para liberar procesador, memoria RAM y otros recursos del ordenador anfitrión.

#### Realizar copias de seguridad o instantáneas

Antes de realizar cambios importantes, como instalar un nuevo sistema operativo, modificar la configuración o probar aplicaciones desconocidas, es recomendable crear una copia de seguridad o una instantánea de la máquina virtual. De este modo, será posible volver rápidamente a un estado anterior si se produce algún problema.

## 6. Contenedores

En los últimos años ha surgido una nueva tecnología que permite ejecutar aplicaciones de forma aislada sin necesidad de crear una máquina virtual completa. Estos entornos reciben el nombre de **contenedores** y se han convertido en una herramienta muy utilizada tanto en el desarrollo de aplicaciones como en la administración de sistemas.

Aunque los contenedores y las máquinas virtuales son tecnologías relacionadas con la virtualización, no son lo mismo. Ambas permiten crear entornos aislados para ejecutar aplicaciones, pero su funcionamiento y sus aplicaciones son diferentes.

En este apartado conoceremos qué es un contenedor, cuáles son sus principales diferencias con las máquinas virtuales y en qué situaciones resulta más recomendable utilizar una u otra tecnología.

### 6.1 ¿Qué es un contenedor?

> Un **contenedor** es un entorno aislado que permite ejecutar una aplicación junto con todas las bibliotecas, dependencias y archivos necesarios para su funcionamiento, compartiendo el núcleo del sistema operativo anfitrión.

A diferencia de una máquina virtual, un contenedor no incorpora un sistema operativo completo. Únicamente incluye los componentes del sistema operativo necesarios para que la aplicación o el servicio que contiene puedan ejecutarse correctamente. Esto permite reducir el consumo de recursos y acelerar considerablemente su puesta en funcionamiento.

Actualmente existen diferentes plataformas para trabajar con contenedores, siendo **Docker** una de las más utilizadas tanto en el ámbito profesional como en el educativo.

### 6.2 Diferencias entre un contenedor y una máquina virtual

Aunque ambas tecnologías permiten ejecutar aplicaciones de forma aislada, presentan diferencias importantes.

| Máquina virtual                                       | Contenedor                                                                                         |
| ----------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| Virtualiza un ordenador completo.                     | Crea un entorno aislado para ejecutar una aplicación o un servicio.                                |
| Incorpora un sistema operativo completo.              | Incorpora únicamente los componentes del sistema operativo necesarios para ejecutar la aplicación. |
| Consume más memoria RAM, procesador y almacenamiento. | Consume menos recursos hardware.                                                                   |
| El tiempo de arranque suele ser mayor.                | El tiempo de arranque es mucho menor.                                                              |
| Permite ejecutar distintos sistemas operativos.       | Está pensado para ejecutar aplicaciones o servicios concretos.                                     |
| Ofrece un mayor nivel de aislamiento.                 | Ofrece un aislamiento menor, aunque suficiente para la mayoría de aplicaciones.                    |

En general, las **máquinas virtuales** son la mejor opción cuando es necesario ejecutar distintos sistemas operativos o disponer de un entorno completamente independiente. Por su parte, los **contenedores** resultan especialmente adecuados cuando se desea ejecutar aplicaciones de forma rápida y eficiente, minimizando el consumo de recursos.

### 6.3 Ventajas y aplicaciones

Los contenedores ofrecen numerosas ventajas frente a las máquinas virtuales cuando únicamente es necesario ejecutar aplicaciones o servicios.

Entre sus principales ventajas destacan:

- **Menor consumo de recursos**, ya que no requieren un sistema operativo completo.
- **Arranque muy rápido**, normalmente en pocos segundos.
- **Mayor facilidad para distribuir aplicaciones**, al incluir todas sus dependencias en un único contenedor.
- **Portabilidad**, permitiendo ejecutar una aplicación en diferentes equipos sin necesidad de modificar su configuración.
- **Facilidad de despliegue**, especialmente en aplicaciones web y servicios distribuidos.

Los contenedores se utilizan habitualmente para:

- Desarrollar y probar aplicaciones.
- Ejecutar aplicaciones web y servicios.
- Implementar arquitecturas basadas en microservicios.
- Automatizar el despliegue de aplicaciones.
- Crear entornos de desarrollo idénticos para todos los miembros de un equipo.

En esta unidad nos hemos centrado en el estudio de las **máquinas virtuales**, ya que constituyen la tecnología de virtualización más utilizada para instalar y ejecutar diferentes sistemas operativos. No obstante, es importante conocer la existencia de los **contenedores**, ya que actualmente representan una alternativa muy utilizada cuando únicamente es necesario ejecutar aplicaciones de forma aislada y con un consumo reducido de recursos.
