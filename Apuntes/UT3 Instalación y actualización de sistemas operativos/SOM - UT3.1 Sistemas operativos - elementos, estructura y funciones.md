# UT3. Instalación y actualización de sistemas operativos



## 3.1. Sistemas operativos: elementos, estructura y funciones

### 3.1.1. Introducción

El **sistema operativo** es uno de los componentes fundamentales de cualquier sistema informático. Se trata del software encargado de gestionar los recursos del ordenador y de proporcionar el entorno necesario para que puedan ejecutarse las aplicaciones y trabajar los usuarios.

Cuando encendemos un ordenador, el sistema operativo se carga en memoria y comienza a controlar el funcionamiento del equipo. A partir de ese momento se encarga de administrar elementos como el procesador, la memoria, los dispositivos de almacenamiento, los periféricos y los programas que se están ejecutando.

El usuario normalmente no interactúa directamente con el hardware, sino que lo hace a través del sistema operativo. Por ejemplo, cuando guardamos un archivo, imprimimos un documento o ejecutamos un programa, es el sistema operativo quien coordina las operaciones necesarias para que estas tareas puedan realizarse correctamente.

Además de gestionar los recursos del equipo, el sistema operativo proporciona una interfaz que permite al usuario comunicarse con el sistema, ya sea mediante un entorno gráfico o utilizando comandos.

Los sistemas operativos pueden presentar características y estructuras muy diferentes dependiendo del tipo de equipo y del uso para el que hayan sido diseñados. Sin embargo, todos ellos comparten una serie de elementos y funciones básicas que permiten gestionar de forma eficiente los recursos del sistema informático.

En este capítulo se estudiará qué es un sistema operativo, cómo pueden clasificarse, cuál es su estructura interna y cuáles son las principales funciones que desempeña dentro de un ordenador.

### 3.1.2. Concepto de sistema operativo

Un **sistema operativo** es el conjunto de programas que controla el funcionamiento del ordenador, administra sus recursos y permite que el usuario y las aplicaciones puedan utilizar el hardware de forma sencilla y organizada.

El sistema operativo actúa como intermediario entre el **hardware** y el resto del **software**. Las aplicaciones no suelen acceder directamente a los componentes físicos del ordenador, sino que solicitan al sistema operativo los recursos que necesitan para funcionar.

Por ejemplo, cuando un programa necesita guardar un archivo, mostrar información en pantalla, utilizar la memoria o acceder a una impresora, es el sistema operativo quien se encarga de gestionar esas operaciones y coordinar el acceso a los dispositivos correspondientes.

Entre los recursos que administra un sistema operativo se encuentran:

- El **procesador**, organizando qué procesos se ejecutan y durante cuánto tiempo.
- La **memoria principal**, asignando espacio a los programas que lo necesitan.
- Los **dispositivos de almacenamiento**, gestionando archivos y carpetas.
- Los **periféricos**, como teclado, ratón, impresora o pantalla.
- Los **procesos y aplicaciones**, controlando su ejecución.
- Los **usuarios y permisos**, regulando el acceso a los recursos del sistema.

Además, el sistema operativo proporciona una **interfaz de usuario** que permite interactuar con el ordenador. Esta interfaz puede ser gráfica, mediante ventanas, iconos y menús, o textual, mediante la introducción de comandos.

Algunos ejemplos de sistemas operativos son **Microsoft Windows**, **GNU/Linux**, **macOS**, **Android** e **iOS**.

En resumen, el sistema operativo es el software fundamental que permite que el hardware, las aplicaciones y el usuario puedan trabajar de forma coordinada.

### 3.1.3. Tipos de sistemas operativos

Existen diferentes formas de clasificar los sistemas operativos atendiendo a distintos criterios. Entre los más habituales se encuentran:

- Tiempo de respuesta.
- Número de usuarios.
- Número de procesos o tareas.
- Número de procesadores.
- Trabajo en red.
- Estructura interna.

#### 3.1.3.1. Según el tiempo de respuesta

Esta clasificación hace referencia a cómo el sistema operativo gestiona y prioriza la ejecución de tareas y procesos en función de la rapidez con la que debe responder a las solicitudes de los usuarios o de las aplicaciones.

##### Sistemas operativos de tiempo real

Los **sistemas operativos de tiempo real**, también conocidos como **RTOS** (*Real-Time Operating Systems*), están diseñados para proporcionar respuestas predecibles y muy rápidas ante determinados eventos.

Se utilizan en aplicaciones en las que el tiempo de respuesta es crítico y una demora podría provocar un funcionamiento incorrecto del sistema.

Son habituales, por ejemplo, en:

- Sistemas de control industrial.
- Sistemas médicos.
- Controladores de vehículos.
- Robótica.
- Sistemas de navegación.

En estos sistemas, lo importante no es únicamente que la respuesta sea rápida, sino que se produzca dentro de un intervalo de tiempo determinado.

##### Sistemas de tiempo compartido

Los **sistemas de tiempo compartido** permiten que varios procesos compartan el tiempo de utilización del procesador.

Para ello, el sistema operativo divide el tiempo de la CPU en pequeños intervalos y los va asignando a los distintos procesos que se encuentran en ejecución.

Como estos cambios se realizan a gran velocidad, el usuario tiene la sensación de que varios programas se están ejecutando al mismo tiempo.

Este modelo es habitual en los sistemas operativos actuales de propósito general, como Windows, GNU/Linux o macOS.

##### Sistemas por lotes

Los **sistemas por lotes** se utilizan en situaciones en las que no es necesaria una respuesta inmediata por parte del sistema.

Las tareas se agrupan y se ejecutan de forma secuencial, normalmente sin intervención directa del usuario durante su ejecución.

Este tipo de funcionamiento es adecuado para procesos repetitivos o que necesitan procesar grandes cantidades de información, como determinadas operaciones administrativas, cálculos científicos o procesamiento masivo de datos.

#### 3.1.3.2. Según el número de usuarios

Esta clasificación hace referencia al número de usuarios que pueden utilizar el sistema operativo de forma simultánea.

##### Monousuario

Los **sistemas operativos monousuario** están diseñados para dar servicio a un único usuario en un momento determinado.

Esto no significa necesariamente que solo pueda existir una cuenta de usuario en el sistema, sino que el sistema está pensado para que una única persona utilice directamente el equipo en cada momento.

Algunos sistemas operativos antiguos, como MS-DOS, son ejemplos claros de sistemas monousuario.

##### Multiusuario

Los **sistemas operativos multiusuario** permiten que varios usuarios utilicen los recursos del mismo sistema de forma simultánea.

El acceso puede realizarse mediante diferentes terminales o a través de conexiones remotas utilizando una red.

El sistema operativo se encarga de gestionar los recursos utilizados por cada usuario y de controlar sus permisos de acceso.

Ejemplos de sistemas multiusuario son UNIX, GNU/Linux y Windows Server.

#### 3.1.3.3. Según el número de procesos o tareas

Esta clasificación hace referencia al número de procesos o tareas que el sistema operativo puede gestionar durante su funcionamiento.

##### Monotarea

Los **sistemas operativos monotarea** permiten ejecutar una única tarea cada vez.

Mientras una tarea está en ejecución, el usuario debe esperar a que finalice antes de iniciar otra.

Un ejemplo clásico de sistema operativo monotarea es MS-DOS.

##### Multitarea

Los **sistemas operativos multitarea** permiten ejecutar varios procesos de forma aparentemente simultánea.

El sistema operativo reparte el tiempo del procesador entre los diferentes procesos en ejecución, realizando cambios entre ellos con gran rapidez.

Los sistemas operativos actuales, como Windows, GNU/Linux y macOS, son sistemas multitarea.

Gracias a esta característica, un usuario puede, por ejemplo, navegar por Internet, escuchar música y editar un documento al mismo tiempo.

#### 3.1.3.4. Según el número de procesadores

Esta clasificación hace referencia a cómo el sistema operativo gestiona y aprovecha la capacidad de procesamiento disponible en el equipo.

Un sistema puede disponer de un único procesador, de varios procesadores o de un procesador formado por varios núcleos.

##### Monoprocesador

Un **sistema operativo monoprocesador** está diseñado para utilizar un único procesador.

Aunque el equipo dispusiera de más de uno, el sistema operativo no sería capaz de aprovecharlos correctamente.

Este tipo de sistemas era habitual en los primeros ordenadores personales y en sistemas operativos antiguos.

##### Multiprocesador

Un **sistema operativo multiprocesador** es capaz de utilizar varios procesadores o varios núcleos de procesamiento y distribuir entre ellos la carga de trabajo.

Esto permite ejecutar varias tareas con mayor eficiencia y mejorar el rendimiento general del sistema.

Los sistemas operativos actuales están preparados para trabajar con procesadores multinúcleo.

La gestión de varios procesadores puede realizarse principalmente de dos formas:

- **Multiprocesamiento simétrico:** todos los procesadores pueden ejecutar tareas del sistema y los procesos se distribuyen entre ellos.
- **Multiprocesamiento asimétrico:** uno de los procesadores actúa como principal y coordina el trabajo de los demás.

En los ordenadores actuales es habitual utilizar multiprocesamiento simétrico.

#### 3.1.3.5. Según el trabajo en red

Esta clasificación hace referencia a la forma en que el sistema operativo gestiona los recursos y servicios disponibles a través de una red.

Dependiendo de cómo estén organizados estos servicios, pueden distinguirse diferentes tipos de sistemas.

##### Sistemas centralizados

En los **sistemas centralizados**, los recursos y servicios principales se gestionan desde un único ordenador central.

Los demás equipos o terminales se conectan a este sistema para utilizar los recursos que proporciona.

Este modelo fue habitual en los grandes sistemas informáticos basados en ordenadores centrales o *mainframes*.

##### Sistemas operativos en red

Los **sistemas operativos en red** permiten que diferentes ordenadores conectados entre sí compartan recursos y servicios.

Cada equipo mantiene su propio sistema operativo y el usuario es consciente de que existen diferentes ordenadores dentro de la red.

Por ejemplo, un usuario puede acceder a una carpeta compartida almacenada en otro equipo o utilizar una impresora instalada en un servidor.

Windows Server y diferentes distribuciones GNU/Linux pueden utilizarse como sistemas operativos en red.

##### Sistemas operativos distribuidos

Los **sistemas operativos distribuidos** utilizan varios ordenadores conectados entre sí que trabajan de forma coordinada.

A diferencia de los sistemas operativos en red, el objetivo es que el conjunto de equipos funcione para el usuario como si se tratara de un único sistema.

Los recursos pueden estar distribuidos entre distintos ordenadores, pero el usuario no necesita conocer dónde se encuentran físicamente.

Este tipo de sistemas se utiliza en entornos donde son importantes aspectos como la escalabilidad, la disponibilidad y la distribución de la carga de trabajo.

#### 3.1.3.6. Según su estructura interna

Esta clasificación hace referencia a cómo están organizados internamente los diferentes componentes del sistema operativo y a la forma en que se distribuyen sus funciones.

##### Sistemas monolíticos

En los **sistemas operativos monolíticos**, gran parte de las funciones del sistema se encuentran integradas dentro de un único núcleo.

El núcleo se encarga de tareas como la gestión de procesos, la memoria, el sistema de archivos y los dispositivos de entrada y salida.

Este diseño permite obtener un buen rendimiento, ya que los diferentes componentes del sistema pueden comunicarse directamente entre sí.

Sin embargo, al concentrar muchas funciones dentro del núcleo, el sistema puede resultar más complejo de mantener.

Linux utiliza un núcleo monolítico modular, ya que permite incorporar o eliminar determinados componentes mediante módulos.

##### Sistemas por capas

En los **sistemas operativos por capas** o **jerárquicos**, el sistema se divide en diferentes niveles.

Cada capa realiza determinadas funciones y utiliza los servicios proporcionados por la capa inmediatamente inferior.

Esta organización facilita el diseño, mantenimiento y modificación del sistema operativo, ya que cada nivel tiene unas responsabilidades claramente definidas.

##### Sistemas de micronúcleo

En los sistemas basados en **micronúcleo** o **microkernel**, el núcleo contiene únicamente las funciones esenciales del sistema operativo.

Otros servicios, como determinados controladores, sistemas de archivos o servicios de red, se ejecutan fuera del núcleo como procesos independientes.

Esta separación permite mejorar la estabilidad y la seguridad, ya que un fallo en uno de estos servicios tiene menos posibilidades de afectar al conjunto del sistema.

##### Sistemas híbridos

Los **sistemas operativos híbridos** combinan características de diferentes tipos de arquitectura.

Su objetivo es aprovechar las ventajas de los sistemas monolíticos, como el rendimiento, junto con algunas ventajas de los sistemas de micronúcleo, como la modularidad y el aislamiento de determinadas funciones.

Los sistemas Windows modernos utilizan una arquitectura habitualmente considerada híbrida.

### 3.1.4. Funciones del sistema operativo

El sistema operativo realiza un conjunto de funciones fundamentales que permiten utilizar de forma eficiente y segura los recursos del ordenador.

Entre sus principales tareas se encuentran la gestión del procesador, la memoria, los dispositivos de entrada y salida, los archivos y la seguridad del sistema.

Estas funciones permiten coordinar el funcionamiento de todos los componentes del equipo y proporcionar a las aplicaciones y a los usuarios un entorno estable desde el que trabajar.

Las principales funciones de un sistema operativo son:

- Gestión de procesos.
- Gestión de memoria.
- Gestión de entrada y salida.
- Gestión de archivos.
- Gestión de la seguridad.

#### 3.1.4.1. Gestión de procesos

Un **proceso** es un programa que se encuentra en ejecución.

Cuando un usuario inicia una aplicación, el sistema operativo crea uno o varios procesos y les asigna los recursos necesarios para que puedan ejecutarse.

La **gestión de procesos** es la función del sistema operativo encargada de controlar la ejecución de los distintos procesos y de repartir entre ellos el tiempo de utilización del procesador.

En un sistema multitarea pueden existir numerosos procesos activos al mismo tiempo. Como el número de procesos suele ser mayor que el número de núcleos disponibles, el sistema operativo debe decidir qué proceso se ejecuta en cada momento.

Para ello utiliza un componente denominado **planificador**, que selecciona los procesos que pueden utilizar el procesador y durante cuánto tiempo.

El sistema operativo también se encarga de:

- Crear y finalizar procesos.
- Asignar tiempo de procesador a cada proceso.
- Controlar el estado de los procesos.
- Establecer prioridades.
- Coordinar el acceso de los procesos a los recursos del sistema.
- Evitar que un proceso interfiera de forma incorrecta con otros procesos.

Durante su ejecución, un proceso puede encontrarse en diferentes estados. Los más habituales son:

- **En ejecución**, cuando está utilizando el procesador.
- **Preparado**, cuando está listo para ejecutarse y espera a que el procesador quede disponible.
- **Bloqueado**, cuando está esperando a que se produzca algún evento, por ejemplo, la finalización de una operación de entrada y salida.
- **Finalizado**, cuando ha terminado su ejecución.

La gestión de procesos es fundamental para conseguir que varios programas puedan ejecutarse de forma eficiente y aparentemente simultánea.

##### Planificación de procesos

En un sistema multitarea pueden existir varios procesos preparados para ejecutarse al mismo tiempo. Sin embargo, el procesador solo puede ejecutar un número limitado de procesos de forma simultánea, dependiendo del número de núcleos disponibles.

Los procesos que están listos para ejecutarse permanecen en la denominada **cola de procesos preparados**.

El sistema operativo debe decidir continuamente qué proceso de esa cola será el siguiente en utilizar la CPU. Para tomar esta decisión utiliza distintos **algoritmos de planificación de procesos**.

La planificación de procesos tiene como objetivo repartir el tiempo del procesador entre los diferentes procesos de forma eficiente, intentando reducir los tiempos de espera y aprovechar al máximo los recursos del sistema.

Los algoritmos de planificación pueden clasificarse en **apropiativos** y **no apropiativos**.

###### Algoritmos no apropiativos

En los algoritmos **no apropiativos**, cuando un proceso obtiene la CPU continúa ejecutándose hasta que termina o hasta que queda bloqueado porque necesita esperar algún recurso o realizar una operación de entrada/salida.

El sistema operativo no le retira el procesador para entregárselo a otro proceso que se encuentre preparado.

Este tipo de planificación es más sencilla, aunque puede provocar que un proceso largo mantenga ocupada la CPU durante mucho tiempo y haga esperar al resto.

###### Algoritmos apropiativos

En los algoritmos **apropiativos**, el sistema operativo puede interrumpir la ejecución de un proceso y retirarle la CPU para asignársela a otro proceso.

El proceso interrumpido vuelve a la cola de procesos preparados y podrá continuar su ejecución posteriormente.

Este tipo de planificación permite repartir mejor el procesador entre varios procesos y mejorar el tiempo de respuesta del sistema.

Antes de estudiar los principales algoritmos de planificación, es necesario conocer cómo se representa su ejecución y qué valores se utilizan para evaluar su funcionamiento.

##### Diagrama de Gantt y tiempos de planificación

Para analizar el funcionamiento de los algoritmos de planificación se suele utilizar un **diagrama de Gantt**, que representa gráficamente qué proceso utiliza la CPU en cada instante de tiempo.

En el eje horizontal se representa el tiempo y cada bloque indica el proceso que se encuentra utilizando el procesador durante ese intervalo.

Por ejemplo:

`0 | P1 | 4 | P2 | 7 | P3 | 12`

Este diagrama indica que:

- `P1` utiliza la CPU desde el instante 0 hasta el 4.
- `P2` se ejecuta desde el instante 4 hasta el 7.
- `P3` se ejecuta desde el instante 7 hasta el 12.

En los algoritmos apropiativos, un mismo proceso puede aparecer varias veces en el diagrama, ya que puede perder la CPU y continuar su ejecución posteriormente.

El diagrama de Gantt permite calcular diferentes tiempos que sirven para estudiar y comparar el comportamiento de los algoritmos de planificación.

###### Tiempo de llegada

El **tiempo de llegada** indica el instante en el que un proceso entra en la cola de procesos preparados y queda disponible para ser ejecutado.

Se suele representar como:

`TL`

Si todos los procesos están disponibles desde el comienzo, su tiempo de llegada será 0.

###### Tiempo de ejecución

El **tiempo de ejecución** indica el tiempo total de CPU que necesita un proceso para completar su trabajo.

Se suele representar como:

`TE`

Por ejemplo, si un proceso necesita utilizar la CPU durante 6 unidades de tiempo, su tiempo de ejecución será:

`TE = 6`

###### Tiempo de finalización

El **tiempo de finalización** indica el instante en el que el proceso termina completamente su ejecución.

Se puede obtener directamente observando el punto del diagrama de Gantt en el que finaliza por última vez el proceso.

Se suele representar como:

`TF`

###### Tiempo de retorno

El **tiempo de retorno** es el tiempo total transcurrido desde que el proceso llega al sistema hasta que termina su ejecución.

Se calcula mediante:

`TR = TF - TL`

donde:

- `TR` es el tiempo de retorno.
- `TF` es el tiempo de finalización.
- `TL` es el tiempo de llegada.

Por ejemplo, si un proceso llega en el instante 2 y termina en el instante 10:

`TR = 10 - 2 = 8`

###### Tiempo de espera

El **tiempo de espera** es el tiempo total que un proceso permanece en la cola de procesos preparados esperando a utilizar la CPU.

Se calcula restando al tiempo de retorno el tiempo que realmente ha estado utilizando el procesador:

`TEspera = TR - TE`

Por ejemplo, si un proceso tiene un tiempo de retorno de 8 unidades y ha necesitado 5 unidades de CPU:

`TEspera = 8 - 5 = 3`

Esto significa que el proceso ha permanecido durante 3 unidades de tiempo esperando en la cola de procesos preparados.

En los algoritmos apropiativos, un proceso puede entrar varias veces en la cola de preparados, por lo que su tiempo de espera corresponde a la suma de todos esos periodos de espera.

###### Índice de servicio

El **índice de servicio** permite relacionar el tiempo que un proceso permanece en el sistema con el tiempo de CPU que realmente necesita.

Se calcula mediante:

`Índice = TR / TE`

Cuanto más próximo sea el valor a **1**, menor tiempo adicional ha permanecido el proceso esperando.

Por ejemplo, si un proceso necesita 4 unidades de CPU y su tiempo de retorno ha sido de 8 unidades:

`Índice = 8 / 4 = 2`

Esto significa que el proceso ha permanecido en el sistema el doble del tiempo que necesitaba realmente para ejecutarse.

##### Tiempos medios

Para comparar diferentes algoritmos de planificación no suele ser suficiente con estudiar un único proceso. Por este motivo, se calculan los **tiempos medios** de todos los procesos.

El **tiempo medio de espera** se obtiene sumando los tiempos de espera de todos los procesos y dividiendo el resultado entre el número de procesos:

`Tiempo medio de espera = suma de los tiempos de espera / número de procesos`

De la misma forma, el **tiempo medio de retorno** se calcula mediante:

`Tiempo medio de retorno = suma de los tiempos de retorno / número de procesos`

También puede calcularse el **índice medio**:

`Índice medio = suma de los índices / número de procesos`

Estos valores permiten comparar diferentes algoritmos de planificación. En general, un algoritmo será más eficiente cuanto menores sean los tiempos medios de espera y de retorno de los procesos.

##### Algoritmos de planificación

Entre los algoritmos de planificación más habituales se encuentran FIFO, planificación por prioridad, SJF, SRTF y Round Robin.

###### FIFO

El algoritmo **FIFO** (*First In, First Out*), también denominado **FCFS** (*First Come, First Served*), selecciona los procesos siguiendo el orden en el que han llegado a la cola de procesos preparados.

El primer proceso que entra en la cola es el primero que obtiene la CPU.

Es un algoritmo **no apropiativo**, por lo que una vez que un proceso comienza a ejecutarse mantiene el procesador hasta que termina o queda bloqueado.

Su funcionamiento es sencillo, pero presenta el inconveniente de que un proceso largo puede retrasar considerablemente la ejecución de todos los procesos que se encuentran detrás de él en la cola.

Por ejemplo, si los procesos llegan en el siguiente orden:

`P1 → P2 → P3`

el procesador ejecutará primero `P1`, después `P2` y finalmente `P3`.

###### Planificación por prioridad

En la **planificación por prioridad**, cada proceso tiene asignado un determinado nivel de prioridad.

Cuando el procesador queda disponible, el sistema operativo selecciona de la cola de procesos preparados aquel que tenga mayor prioridad.

La planificación por prioridad puede implementarse de forma **apropiativa o no apropiativa**.

En un sistema no apropiativo, si aparece un proceso con mayor prioridad mientras otro se está ejecutando, deberá esperar hasta que el proceso actual termine o quede bloqueado.

En un sistema apropiativo, el sistema operativo puede interrumpir al proceso que se está ejecutando si aparece otro con una prioridad mayor.

Uno de los problemas de este algoritmo es que los procesos con prioridad baja pueden permanecer esperando durante mucho tiempo si continuamente aparecen procesos con una prioridad superior.

###### SJF

El algoritmo **SJF** (*Shortest Job First*) selecciona de la cola de procesos preparados aquel proceso que necesita menos tiempo de CPU para completar su ejecución.

Por tanto, los procesos más cortos se ejecutan antes que los procesos más largos.

SJF es un algoritmo **no apropiativo**. Una vez que un proceso obtiene la CPU, continúa ejecutándose hasta que termina o queda bloqueado.

Este algoritmo puede conseguir tiempos medios de espera reducidos, pero presenta una dificultad importante: el sistema operativo necesita conocer o estimar previamente cuánto tiempo de CPU necesitará cada proceso.

Además, los procesos largos pueden quedar esperando durante mucho tiempo si siguen llegando procesos más cortos.

###### SRTF

El algoritmo **SRTF** (*Shortest Remaining Time First*) es una variante apropiativa de SJF.

El sistema operativo selecciona el proceso al que le queda menos tiempo de CPU para finalizar.

Si durante la ejecución de un proceso llega otro cuyo tiempo restante es menor, el sistema operativo puede interrumpir al proceso actual y asignar la CPU al nuevo proceso.

Por este motivo, SRTF es un algoritmo **apropiativo**.

Por ejemplo, si un proceso necesita todavía 8 unidades de tiempo para finalizar y llega otro que únicamente necesita 3, el sistema operativo puede detener temporalmente al primero y ejecutar el segundo.

Al igual que SJF, este algoritmo puede reducir los tiempos de espera, aunque requiere conocer o estimar el tiempo de CPU que necesitan los procesos.

###### Round Robin

El algoritmo **Round Robin** reparte el tiempo del procesador entre todos los procesos preparados de forma circular.

Cada proceso puede utilizar la CPU durante un intervalo de tiempo determinado denominado **quantum**.

Cuando un proceso agota su quantum y todavía no ha terminado, el sistema operativo lo interrumpe y lo coloca al final de la cola de procesos preparados. A continuación, la CPU se asigna al siguiente proceso de la cola.

Round Robin es, por tanto, un algoritmo **apropiativo**.

Por ejemplo, si la cola contiene:

`P1 → P2 → P3`

cada proceso dispone de un quantum determinado. Cuando `P1` consume su quantum, pasa al final de la cola:

`P2 → P3 → P1`

El proceso se repite hasta que todos los procesos terminan.

El valor del quantum es importante. Si es demasiado grande, el funcionamiento se aproxima al algoritmo FIFO. Si es demasiado pequeño, se producen demasiados cambios de proceso, lo que puede reducir el rendimiento del sistema.

Round Robin es especialmente adecuado para sistemas interactivos y de tiempo compartido, ya que permite repartir el procesador de forma relativamente equitativa entre los distintos procesos.

##### Resumen de los algoritmos de planificación

| Algoritmo       | Criterio de selección                 | Tipo                         |
| --------------- | ------------------------------------- | ---------------------------- |
| **FIFO / FCFS** | Orden de llegada a la cola            | No apropiativo               |
| **Prioridad**   | Proceso con mayor prioridad           | Apropiativo o no apropiativo |
| **SJF**         | Proceso con menor tiempo de ejecución | No apropiativo               |
| **SRTF**        | Proceso con menor tiempo restante     | Apropiativo                  |
| **Round Robin** | Turnos de tiempo mediante un quantum  | Apropiativo                  |

En todos estos casos, los procesos se encuentran en la **cola de procesos preparados**, y el algoritmo de planificación determina cuál de ellos será el siguiente en utilizar la CPU.



#### 3.1.4.2. Gestión de memoria

La **gestión de memoria** es una de las funciones más importantes del sistema operativo. Su objetivo principal es administrar el uso de la **memoria principal (RAM)** para permitir que los procesos puedan ejecutarse sin interferirse entre sí y aprovechar de forma eficiente la memoria disponible.

Para conseguirlo, el sistema operativo se encarga de realizar diferentes tareas:

- Asignar memoria a los procesos que se encuentran en ejecución.
- Controlar qué zonas de memoria están ocupadas y cuáles se encuentran libres.
- Proteger la memoria utilizada por el sistema operativo y por cada uno de los procesos.
- Optimizar el aprovechamiento de la memoria disponible.

La forma de gestionar la memoria depende, entre otros factores, de si el sistema permite ejecutar un único proceso o varios procesos de forma simultánea.

##### Monoprogramación

En los sistemas de **monoprogramación** o sistemas monotarea solo puede ejecutarse un proceso cada vez. Cuando dicho proceso termina, puede comenzar la ejecución del siguiente.

En estos sistemas, la memoria principal se divide básicamente en dos zonas:

- Una zona reservada para el sistema operativo, que permanece cargado en memoria.
- Una zona destinada al proceso que se encuentra en ejecución.

La gestión de memoria en estos sistemas es relativamente sencilla, ya que únicamente existe un proceso de usuario en memoria y, por tanto, no es necesario repartirla entre varios procesos.

##### Multiprogramación

En los sistemas de **multiprogramación** o sistemas multitarea pueden encontrarse varios procesos en memoria al mismo tiempo.

Para hacerlo posible, la memoria disponible se reparte entre los diferentes procesos, asignando a cada uno de ellos una determinada zona.

En este tipo de sistemas, el sistema operativo debe garantizar que:

- Cada proceso trabaje dentro del espacio de memoria que tiene asignado.
- El propio sistema operativo disponga de una zona de memoria protegida.
- Los procesos puedan compartir determinadas zonas de memoria de forma controlada cuando sea necesario.

La multiprogramación hace que la gestión de memoria sea considerablemente más compleja, ya que el sistema operativo debe controlar continuamente qué memoria utiliza cada proceso y qué espacio se encuentra disponible.

##### Funciones básicas de la gestión de memoria

Además de asignar memoria a los procesos, el sistema operativo debe realizar otras funciones relacionadas con su utilización, entre las que destacan la protección, la reubicación y la compartición.

###### Protección

La **protección de memoria** tiene como finalidad impedir que un proceso pueda acceder a una zona de memoria perteneciente a otro proceso o al propio sistema operativo.

Cada proceso debe trabajar dentro del espacio que tiene asignado. Si un programa pudiera modificar libremente la memoria utilizada por otros procesos, podría provocar errores, pérdida de información o incluso el bloqueo del sistema.

Una de las técnicas utilizadas para controlar estos accesos consiste en emplear **registros base y registros límite**, que permiten determinar las direcciones de memoria que puede utilizar cada proceso.

###### Reubicación

Un proceso no tiene que ocupar siempre la misma posición dentro de la memoria principal.

Cuando un proceso se retira temporalmente de la memoria y posteriormente vuelve a cargarse, el espacio que ocupaba anteriormente puede haber sido utilizado por otro proceso. En ese caso, el sistema operativo puede cargarlo en otra zona que se encuentre disponible.

La **reubicación** permite, por tanto, que un proceso pueda ejecutarse aunque sea cargado en una posición de memoria diferente.

###### Compartición

En determinadas situaciones puede ser conveniente que dos o más procesos utilicen una misma zona de memoria.

La **compartición de memoria** permite que varios procesos accedan de forma controlada a información o recursos comunes.

Esta técnica debe combinarse con mecanismos de protección que garanticen que los procesos únicamente puedan acceder a las zonas compartidas para las que disponen de autorización.

##### Técnicas de gestión y asignación de memoria

Para repartir la memoria disponible entre los diferentes procesos, los sistemas operativos pueden utilizar distintas técnicas. Entre las más importantes se encuentran el particionamiento, la paginación, la segmentación, el intercambio y la memoria virtual.

###### Particionamiento

El **particionamiento de memoria** consiste en dividir la memoria principal en diferentes zonas o particiones que pueden asignarse a los procesos.

Dependiendo de la forma en la que se realice esta división pueden utilizarse diferentes técnicas.

###### Paginación

En la **paginación**, la memoria principal se divide en bloques de tamaño fijo denominados **marcos de página**.

Los procesos también se dividen en bloques del mismo tamaño, denominados **páginas**. Las diferentes páginas de un proceso pueden cargarse en los marcos de página que se encuentren disponibles.

Esta técnica facilita la gestión y asignación de memoria, aunque puede provocar que una parte del último marco asignado a un proceso quede sin utilizar.

###### Segmentación

En la **segmentación**, la memoria se divide utilizando bloques de tamaño variable denominados **segmentos**.

El tamaño de estos segmentos puede adaptarse a las necesidades de los procesos, lo que permite aprovechar mejor determinados espacios de memoria.

Sin embargo, a medida que los procesos entran y salen de la memoria pueden aparecer pequeños espacios libres distribuidos entre las zonas ocupadas.

###### Intercambio

El **intercambio** o *swapping* permite trasladar temporalmente un proceso desde la memoria principal hasta la memoria secundaria.

Por ejemplo, cuando un proceso queda suspendido porque está esperando un recurso o porque debe dejar el procesador a otro proceso, el sistema operativo puede retirar temporalmente dicho proceso de la memoria RAM y almacenarlo en el disco.

De esta forma, el espacio que ocupaba queda disponible y puede ser utilizado por otro proceso.

Cuando el proceso debe continuar su ejecución, el sistema operativo vuelve a cargarlo en la memoria principal. No es necesario que vuelva a ocupar exactamente la misma zona de memoria que utilizaba anteriormente.

##### Memoria virtual

La **memoria virtual** es una técnica que permite ejecutar programas sin necesidad de que todo su contenido se encuentre simultáneamente cargado en la memoria RAM.

El sistema operativo mantiene en la memoria principal únicamente las partes del proceso que se necesitan en cada momento, mientras que el resto permanece almacenado en el disco.

De esta forma, es posible ejecutar varios procesos que requieren una gran cantidad de memoria e incluso programas cuyo tamaño supera la cantidad de memoria RAM físicamente instalada en el equipo.

La memoria virtual crea para cada proceso la impresión de disponer de un espacio de memoria mucho mayor que la memoria física realmente disponible.

Para conseguirlo, cada proceso utiliza un **espacio de direcciones virtuales** que el sistema operativo relaciona con la memoria física mediante estructuras como las **tablas de páginas**.

Cuando un proceso necesita acceder a una página que no se encuentra cargada en la memoria principal, se produce un **fallo de página** (*page fault*).

En ese momento, el sistema operativo localiza la página correspondiente en el almacenamiento secundario y la carga en memoria. Si no existe suficiente espacio libre, puede ser necesario retirar previamente otra página de la memoria RAM.

La zona del almacenamiento secundario utilizada para estas operaciones recibe el nombre de **archivo de intercambio** o **zona de intercambio** (*swap*).

En Windows, el archivo utilizado para la memoria virtual suele denominarse `pagefile.sys`. En GNU/Linux puede utilizarse una **partición swap** o un **archivo swap**.

La utilización de memoria virtual presenta importantes ventajas:

- Permite ejecutar programas de mayor tamaño que la memoria RAM disponible.
- Facilita que numerosos procesos puedan mantenerse en ejecución.
- Ayuda a mantener separados los espacios de memoria correspondientes a los diferentes procesos.

Sin embargo, también presenta un inconveniente importante: el acceso a los dispositivos de almacenamiento es mucho más lento que el acceso a la memoria RAM. Por este motivo, si el sistema necesita utilizar continuamente el área de intercambio, su rendimiento puede disminuir considerablemente.

##### Fragmentación de la memoria

Uno de los problemas que pueden aparecer durante la gestión de memoria es la **fragmentación**, que provoca que parte de la memoria disponible no pueda aprovecharse de forma eficiente.

Existen dos tipos principales de fragmentación: interna y externa.

###### Fragmentación interna

La **fragmentación interna** se produce cuando se asigna a un proceso un bloque de memoria de tamaño fijo y este no lo utiliza completamente.

El espacio que queda libre dentro del bloque asignado no puede ser aprovechado por otro proceso y, por tanto, queda desperdiciado.

Este tipo de fragmentación puede aparecer en sistemas que utilizan bloques de tamaño fijo, como ocurre con la paginación.

###### Fragmentación externa

La **fragmentación externa** aparece cuando existen diferentes espacios libres separados entre sí por zonas de memoria ocupadas.

Puede ocurrir que la cantidad total de memoria libre sea suficiente para cargar un proceso, pero que no exista un único espacio contiguo suficientemente grande para alojarlo.

Este problema puede producirse cuando se utilizan bloques de memoria de tamaño variable, como sucede con la segmentación.

#### 3.1.4.3. Gestión de entrada/salida

La **gestión de entrada/salida (E/S)** es la función del sistema operativo encargada de controlar la comunicación entre el procesador, la memoria y los diferentes dispositivos periféricos del ordenador, como el teclado, los dispositivos de almacenamiento, la impresora o la tarjeta de red.

Su objetivo principal es coordinar el intercambio de datos entre los dispositivos y la CPU de forma eficiente y segura.

Los dispositivos de entrada y salida suelen trabajar a velocidades muy diferentes a las del procesador y la memoria principal. Por este motivo, el sistema operativo utiliza diferentes mecanismos para evitar que la CPU tenga que permanecer esperando continuamente a que los dispositivos terminen sus operaciones.

##### Interrupciones

Una **interrupción** es una señal que un dispositivo envía al procesador para comunicarle que necesita ser atendido o que se ha producido un determinado evento.

Por ejemplo, un dispositivo puede generar una interrupción cuando ha terminado una operación de lectura o escritura.

Gracias a las interrupciones, el procesador no necesita comprobar continuamente el estado de los dispositivos. Puede seguir ejecutando otros procesos y atender al dispositivo únicamente cuando este genera una interrupción.

##### Rutina de atención a la interrupción

Cuando se produce una interrupción, el procesador detiene temporalmente la tarea que estaba ejecutando y ejecuta una **rutina de atención a la interrupción** o **rutina de servicio**.

Esta rutina, también denominada **ISR** (*Interrupt Service Routine*), es un pequeño programa encargado de identificar el origen de la interrupción y realizar las operaciones necesarias para atenderla.

Por ejemplo, una rutina de atención a una interrupción puede encargarse de recibir el dato introducido mediante el teclado o de continuar enviando información a una impresora.

Una vez atendida la interrupción, el procesador puede continuar ejecutando la tarea que había interrumpido.

##### Acceso directo a memoria

El **DMA** (*Direct Memory Access*), o **acceso directo a memoria**, es un mecanismo que permite que determinados dispositivos transfieran datos directamente entre el periférico y la memoria principal sin que la CPU tenga que intervenir en cada una de las operaciones de transferencia.

De esta forma, el procesador queda liberado de realizar numerosas operaciones repetitivas y puede dedicarse a ejecutar otros procesos mientras se realiza la transferencia.

El uso de DMA resulta especialmente útil cuando deben transferirse grandes cantidades de información, ya que mejora el rendimiento general del sistema.

##### Técnicas para mejorar el rendimiento de las operaciones de entrada/salida

Las operaciones de entrada y salida son normalmente mucho más lentas que las operaciones que realiza internamente el procesador o la memoria principal.

Para reducir estos tiempos de espera y mejorar el rendimiento, el sistema operativo utiliza diferentes técnicas que permiten coordinar mejor el intercambio de datos entre la CPU, la memoria y los dispositivos.

Entre las principales técnicas se encuentran el **caching**, el **buffering** y el **spooling**.

###### Caching

El **caching** consiste en almacenar temporalmente datos utilizados con frecuencia en una zona de memoria de acceso rápido denominada **caché**.

De esta forma, si un dato vuelve a ser solicitado, puede obtenerse directamente desde la caché sin necesidad de acceder de nuevo a un dispositivo más lento.

Por ejemplo, cuando el sistema accede repetidamente a determinada información almacenada en un dispositivo de almacenamiento, puede mantener una copia temporal de esos datos en memoria para acelerar posteriores accesos.

La principal ventaja del caching es que **reduce el número de accesos a dispositivos más lentos y acelera la obtención de datos utilizados frecuentemente**.

###### Buffering

Un **búfer** es una zona temporal de memoria en la que se almacenan datos mientras se realiza una operación de entrada o salida.

El **buffering** permite compensar las diferencias de velocidad existentes entre dos dispositivos o entre un dispositivo y el procesador.

Mientras un dispositivo produce o recibe datos, estos pueden almacenarse temporalmente en el búfer para que sean procesados posteriormente a una velocidad diferente.

Por ejemplo, durante la reproducción de un vídeo por Internet, parte de los datos se almacenan previamente en un búfer. Si durante unos instantes disminuye la velocidad de la conexión, el reproductor puede continuar utilizando los datos que ya se encuentran almacenados.

La principal ventaja del buffering es que **permite sincronizar dispositivos que trabajan a velocidades diferentes y reducir los tiempos de espera**.

###### Spooling

El **spooling** (*Simultaneous Peripheral Operations On-Line*) es una técnica que permite almacenar y organizar las peticiones dirigidas a un dispositivo en una cola de trabajos.

Se utiliza especialmente con dispositivos que solo pueden atender una operación cada vez.

Un ejemplo habitual es la impresión. Cuando varios documentos se envían a una impresora, el sistema operativo no necesita esperar a que cada documento termine de imprimirse antes de aceptar el siguiente.

Los trabajos se almacenan temporalmente en una **cola de impresión** y la impresora los procesa uno tras otro cuando queda disponible.

La principal ventaja del spooling es que **permite que varios procesos utilicen un mismo dispositivo sin interferirse entre sí**.

##### Diferencia entre buffering y spooling

Aunque tanto el buffering como el spooling utilizan almacenamiento temporal para mejorar las operaciones de entrada y salida, su finalidad es diferente.

En el **buffering**, los datos se almacenan temporalmente mientras se están transfiriendo y se van procesando a medida que llegan. Esto permite compensar las diferencias de velocidad entre los elementos que participan en la transferencia.

Por ejemplo, durante la reproducción de un vídeo en Internet, los datos se descargan y almacenan temporalmente en un búfer mientras el reproductor los va utilizando.

En el **spooling**, los trabajos se almacenan en una cola para que un dispositivo pueda procesarlos posteriormente, normalmente uno después de otro.

Por ejemplo, cuando se envían varios documentos a una impresora, cada trabajo queda almacenado en la cola de impresión hasta que llega su turno.

En resumen:

| Técnica       | Función principal                                            | Almacenamiento temporal               | Ejemplo                             |
| ------------- | ------------------------------------------------------------ | ------------------------------------- | ----------------------------------- |
| **Caching**   | Mantiene datos utilizados frecuentemente para evitar accesos repetidos a dispositivos más lentos. | Memoria caché                         | Acceso repetido a datos almacenados |
| **Buffering** | Almacena temporalmente datos mientras se realiza una transferencia. | Memoria RAM                           | Reproducción de audio o vídeo       |
| **Spooling**  | Organiza trabajos en una cola para que un dispositivo los procese uno a uno. | Normalmente almacenamiento secundario | Cola de impresión                   |

Estas técnicas permiten reducir los tiempos de espera y mejorar el rendimiento general de las operaciones de entrada y salida.

#### 3.1.4.4. Gestión de archivos

La **gestión de archivos** es la función del sistema operativo encargada de organizar y controlar la información almacenada en los dispositivos de almacenamiento, como discos duros, unidades SSD o memorias USB.

Los datos utilizados por los programas y los usuarios se almacenan principalmente en forma de **archivos**, por lo que el sistema operativo debe proporcionar los mecanismos necesarios para trabajar con ellos de forma ordenada y segura.

Entre las principales tareas relacionadas con la gestión de archivos se encuentran:

- Crear y eliminar archivos y directorios.
- Leer y escribir información en los archivos.
- Organizar los archivos dentro de carpetas y directorios.
- Asignar espacio de almacenamiento a los archivos.
- Controlar el acceso mediante permisos.
- Mantener información asociada a cada archivo, como su nombre, tamaño, propietario o fechas de creación y modificación.

Para realizar estas tareas, el sistema operativo utiliza un **sistema de archivos**, que establece la forma en la que la información se organiza y almacena en los dispositivos.

Los sistemas de archivos y sus características se estudiarán con mayor profundidad más adelante.

#### 3.1.4.5. Gestión de la seguridad

La **gestión de la seguridad** es la función del sistema operativo encargada de proteger los recursos del sistema y controlar quién puede acceder a ellos y qué operaciones puede realizar.

Para ello, el sistema operativo utiliza distintos mecanismos de identificación, autenticación y control de acceso.

Uno de los elementos más importantes es la gestión de **usuarios y permisos**. Cada usuario puede disponer de una cuenta propia y tener diferentes privilegios dentro del sistema.

Por ejemplo, un usuario estándar puede utilizar aplicaciones y trabajar con sus propios archivos, mientras que un administrador dispone de permisos adicionales para modificar la configuración del sistema, instalar software o gestionar otras cuentas.

El sistema operativo también controla los permisos asociados a archivos, carpetas, dispositivos y otros recursos, evitando que usuarios no autorizados puedan acceder a información o realizar determinadas operaciones.

Entre las principales funciones relacionadas con la seguridad se encuentran:

- Identificar y autenticar a los usuarios.
- Gestionar cuentas y contraseñas.
- Controlar los permisos de acceso a archivos y carpetas.
- Limitar las operaciones que puede realizar cada usuario.
- Proteger los procesos y recursos del sistema.
- Registrar determinados eventos relacionados con la actividad del sistema.
- Aplicar mecanismos de protección frente a accesos no autorizados.

La seguridad del sistema operativo es especialmente importante en equipos compartidos o conectados a una red, ya que permite proteger la información y reducir el riesgo de accesos indebidos o modificaciones no autorizadas.

### 3.1.5. Secuencia de arranque del ordenador

La **secuencia de arranque del ordenador** comprende todas las operaciones que se realizan desde que se enciende el equipo hasta que el sistema operativo queda completamente cargado y preparado para ser utilizado.

De forma general, el proceso de arranque puede dividirse en tres grandes fases:

1. Comprobación e inicialización del hardware.
2. Búsqueda y ejecución del gestor de arranque.
3. Carga e inicialización del sistema operativo.

#### Comprobación e inicialización del hardware

Cuando se pulsa el botón de encendido, el procesador comienza a ejecutar el **firmware** almacenado en una memoria no volátil de la placa base. Dependiendo del equipo, este firmware puede ser **BIOS** o **UEFI**.

El firmware inicia una serie de comprobaciones conocidas como **POST** (*Power On Self Test*), cuyo objetivo es verificar que los principales componentes hardware del ordenador funcionan correctamente.

Entre otros elementos, pueden comprobarse:

- El procesador.
- La memoria RAM.
- La tarjeta gráfica.
- El teclado.
- Los dispositivos de almacenamiento.
- Otros dispositivos conectados al sistema.

Si durante estas comprobaciones se detecta algún problema importante, el proceso de arranque puede detenerse y el sistema informa del error mediante mensajes en pantalla, códigos o señales acústicas.

En los equipos modernos que utilizan **UEFI**, además de inicializar y comprobar el hardware pueden realizarse otras operaciones, como la detección de dispositivos o determinadas comprobaciones de seguridad mediante mecanismos como **Secure Boot**.

#### Búsqueda y carga del gestor de arranque

Una vez comprobado e inicializado el hardware, el firmware busca un dispositivo desde el que pueda iniciarse un sistema operativo.

El orden en el que se buscan estos dispositivos se establece en la configuración de la BIOS o UEFI y puede incluir discos duros, unidades SSD, memorias USB u otros dispositivos.

Cuando se localiza un dispositivo de arranque válido, se ejecuta el **gestor de arranque** o *bootloader*. Este programa es el encargado de localizar e iniciar el sistema operativo.

La forma en la que se encuentra el gestor de arranque depende del tipo de firmware utilizado:

- En los sistemas basados en **BIOS**, la información necesaria para iniciar el proceso de arranque se encuentra en el **MBR** (*Master Boot Record*), situado al comienzo del disco.
- En los sistemas basados en **UEFI**, el gestor de arranque se almacena como un archivo ejecutable con extensión `.efi` dentro de una partición especial denominada **partición del sistema EFI (ESP)**.

El gestor de arranque puede iniciar directamente un sistema operativo o mostrar un menú que permita seleccionar entre varios sistemas instalados.

Algunos ejemplos de gestores de arranque son **GRUB**, utilizado habitualmente en GNU/Linux, y **Windows Boot Manager**, utilizado por Windows.

#### Carga e inicialización del sistema operativo

Una vez seleccionado el sistema operativo, el gestor de arranque localiza su **núcleo o kernel** y lo carga en la memoria principal.

A partir de ese momento, el kernel toma el control del ordenador y comienza la inicialización del sistema operativo.

Durante esta fase se realizan diferentes operaciones, como:

- Inicializar los controladores necesarios para utilizar el hardware.
- Detectar y configurar los dispositivos del sistema.
- Montar el sistema de archivos principal.
- Iniciar los servicios necesarios para el funcionamiento del sistema.
- Preparar el entorno de trabajo del usuario.
- Mostrar la pantalla de inicio de sesión o la interfaz correspondiente.

Una vez completadas estas operaciones, el sistema operativo queda preparado para que el usuario pueda iniciar sesión y ejecutar sus aplicaciones.

#### Firmware

El arranque se lleva a cabo gracias a que en la placa base existe un software especial que realiza estas tareas. Ese software es el firmware.

El **firmware** es un software diseñado específicamente para controlar y gestionar un determinado dispositivo hardware o una familia concreta de dispositivos.

Podríamos decir que realiza una función similar a la de un pequeño sistema operativo, pero, a diferencia de un sistema operativo de propósito general, está estrechamente ligado al hardware para el que ha sido creado.

Por ejemplo, un reproductor MP3 dispone de un firmware encargado de controlar su funcionamiento. Ese firmware está diseñado para ese dispositivo y no puede instalarse sin más en cualquier otro modelo de reproductor.

En un ordenador, la placa base dispone también de un firmware, denominado **BIOS** en los equipos antiguos y **UEFI** en los actuales.

Cuando se enciende el ordenador, este firmware es el primer software que comienza a ejecutarse. Entre sus principales tareas se encuentran:

- Comprobar e inicializar el hardware del equipo.
- Localizar un dispositivo desde el que se pueda arrancar.
- Localizar el software necesario para iniciar el sistema operativo.
- Iniciar el proceso que permitirá cargar el sistema operativo en memoria.

Una vez iniciado el sistema operativo, este pasa a encargarse de gestionar los recursos del ordenador y de proporcionar el entorno en el que trabajan los usuarios y las aplicaciones.



#### Resumen de la secuencia de arranque

El proceso de arranque puede resumirse de la siguiente forma:

| Fase                                              | Descripción                                                  | Elemento principal           |
| ------------------------------------------------- | ------------------------------------------------------------ | ---------------------------- |
| **1. Comprobación e inicialización del hardware** | El firmware comprueba e inicializa los principales componentes del ordenador. | BIOS / UEFI                  |
| **2. Carga del gestor de arranque**               | Se localiza y ejecuta el programa encargado de iniciar el sistema operativo. | MBR / Partición EFI          |
| **3. Carga del sistema operativo**                | El kernel se carga en memoria y se inicializan los controladores y servicios necesarios. | Kernel del sistema operativo |

Cuando todas estas fases se han completado correctamente, el ordenador se encuentra **operativo y preparado para ser utilizado por el usuario**.
