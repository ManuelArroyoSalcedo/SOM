# UT3. Instalación y actualización de sistemas operativos

## 3.5. Gestor de arranque

El **gestor de arranque** es un elemento fundamental en el proceso de inicio de un ordenador, ya que permite establecer la transición entre el firmware del equipo y el sistema operativo que se desea ejecutar.

Su importancia resulta especialmente evidente cuando en un mismo ordenador existen varios sistemas operativos, ya que la configuración del gestor de arranque determinará cuál se inicia por defecto y cómo puede seleccionarse entre los diferentes sistemas instalados.

En este apartado se estudiará su funcionamiento, las diferencias entre los sistemas BIOS y UEFI y su comportamiento cuando existen varios sistemas operativos instalados.

### 3.5.1. Concepto y función del gestor de arranque

Un **gestor de arranque** o *bootloader* es un programa que se ejecuta durante el proceso de inicio del ordenador, después de que el firmware haya realizado las comprobaciones iniciales del hardware y haya localizado un dispositivo desde el que arrancar.

Su función principal es **localizar el sistema operativo que debe iniciarse y cargar en memoria los componentes necesarios para comenzar su ejecución**. Una vez hecho esto, el gestor de arranque transfiere el control al sistema operativo, que continúa con su propio proceso de inicialización.

Cuando en el equipo hay instalado un único sistema operativo, el gestor de arranque suele actuar de forma automática y el usuario apenas percibe su intervención.

Sin embargo, cuando existen varios sistemas operativos instalados, el gestor de arranque puede mostrar un **menú de selección** que permite elegir cuál de ellos se desea iniciar.

Por tanto, el gestor de arranque actúa como un elemento intermedio entre el **firmware del equipo** y el **sistema operativo**, haciendo posible que este último pueda comenzar su ejecución.

Algunos ejemplos de gestores de arranque son **GRUB**, utilizado habitualmente en sistemas GNU/Linux, y **Windows Boot Manager**, utilizado por los sistemas Windows.

### 3.5.2. Ubicación del gestor de arranque: BIOS y UEFI

La ubicación y la forma en la que se inicia el gestor de arranque dependen del tipo de firmware utilizado por el equipo.

En los sistemas antiguos basados en **BIOS**, el proceso de arranque suele estar relacionado con el esquema de particionado **MBR**. En este caso, el firmware localiza el dispositivo de arranque y ejecuta un pequeño código situado al comienzo del disco.

Ese código inicial permite continuar el proceso de carga del gestor de arranque, que posteriormente será el encargado de iniciar el sistema operativo.

Por tanto, en sistemas BIOS no debe entenderse que todo el gestor de arranque se encuentra almacenado dentro del MBR, ya que el espacio disponible en este sector es muy reducido. El MBR contiene únicamente la información y el código necesarios para comenzar el proceso de arranque.

En los sistemas modernos basados en **UEFI**, el funcionamiento es diferente. El gestor de arranque se almacena como uno o varios archivos ejecutables con extensión `.efi` dentro de una partición especial denominada **partición del sistema EFI (ESP)**.

Esta partición suele estar formateada con **FAT32** y puede contener los archivos de arranque de varios sistemas operativos instalados en el mismo equipo.

Por ejemplo, un sistema GNU/Linux puede almacenar en ella archivos relacionados con **GRUB**, mientras que Windows utiliza **Windows Boot Manager**.

El firmware UEFI mantiene información sobre los diferentes gestores disponibles y puede establecer un **orden de arranque**, determinando cuál de ellos se ejecutará por defecto cuando se encienda el ordenador.

Por tanto, de forma general, podemos establecer la siguiente relación:

- En sistemas **BIOS**, el proceso de arranque comienza mediante código almacenado al principio del disco.
- En sistemas **UEFI**, los gestores de arranque se almacenan como archivos `.efi` dentro de la partición del sistema EFI.

Esta diferencia permite que en sistemas UEFI puedan coexistir de forma más sencilla varios gestores de arranque correspondientes a distintos sistemas operativos.

### 3.5.3. Gestores de arranque en sistemas con varios sistemas operativos

Cuando en un mismo equipo hay instalados varios sistemas operativos, es necesario disponer de un mecanismo que permita seleccionar cuál de ellos se desea iniciar.

En estos casos, el gestor de arranque puede mostrar un **menú de selección** con los diferentes sistemas operativos disponibles. El usuario elige uno de ellos y el gestor de arranque inicia el proceso necesario para cargarlo.

Cada sistema operativo puede instalar o registrar su propio gestor de arranque. Por ejemplo, Windows utiliza **Windows Boot Manager**, mientras que en GNU/Linux es habitual utilizar **GRUB**.

En los sistemas basados en **UEFI**, varios gestores de arranque pueden coexistir dentro de la partición del sistema EFI (ESP). El firmware mantiene distintas entradas de arranque y establece un orden de prioridad entre ellas para determinar cuál se ejecutará por defecto.

La instalación de un nuevo sistema operativo puede modificar este orden de arranque y hacer que su gestor pase a ejecutarse de forma predeterminada. Esto no significa necesariamente que el gestor anterior haya sido eliminado, sino que puede haber dejado de ocupar la primera posición en el orden de arranque.

En sistemas con varios sistemas operativos, **GRUB** puede configurarse para ofrecer un menú desde el que iniciar tanto sistemas GNU/Linux como Windows.

Windows Boot Manager, en cambio, está diseñado principalmente para iniciar sistemas Windows y no suele incorporar automáticamente instalaciones GNU/Linux a su menú de arranque.

Por este motivo, cuando se trabaja con varios sistemas operativos es importante conocer qué gestor de arranque está configurado como predeterminado y cómo se encuentra establecido el orden de arranque del equipo.

### 3.5.4. Orden de instalación en sistemas Windows y GNU/Linux

Cuando se desea instalar **Windows y GNU/Linux en un mismo equipo**, el orden en el que se realizan las instalaciones puede influir en el gestor de arranque que quedará configurado como predeterminado.

De forma general, se recomienda realizar la instalación en el siguiente orden:

1. Instalar primero **Windows**.
2. Instalar después **GNU/Linux**.

El motivo es que, durante la instalación de GNU/Linux, el gestor de arranque **GRUB** puede detectar la instalación previa de Windows y configurarse para ofrecer un menú desde el que iniciar cualquiera de los dos sistemas operativos.

De esta forma, al encender el equipo, GRUB puede mostrar una opción para iniciar GNU/Linux y otra para iniciar Windows.

Si se instala Windows después de GNU/Linux, Windows puede modificar la configuración de arranque y hacer que **Windows Boot Manager** pase a ser el gestor utilizado por defecto. En este caso, GNU/Linux puede seguir estando instalado en el equipo, pero su gestor de arranque puede dejar de ejecutarse automáticamente al iniciar el ordenador.

En los sistemas modernos basados en **UEFI**, los gestores de arranque de Windows y GNU/Linux pueden coexistir dentro de la partición del sistema EFI. En estos casos, instalar Windows después de GNU/Linux no implica necesariamente que GRUB sea eliminado, pero sí puede cambiarse el orden de arranque y hacer que Windows Boot Manager tenga prioridad.

Por este motivo, instalar primero Windows y después GNU/Linux sigue siendo la opción más sencilla y recomendable cuando se desea configurar un sistema con **arranque dual**.

Si el orden de arranque se modifica posteriormente, puede ser necesario cambiar la prioridad de los gestores desde la configuración UEFI o reparar y volver a configurar GRUB.





