# UT3. Instalación y actualización de sistemas operativos

## 3.6. Actualizaciones de un sistema operativo

Los sistemas operativos evolucionan continuamente después de su instalación. Los fabricantes y desarrolladores publican **actualizaciones** con el objetivo de corregir errores, mejorar la seguridad, aumentar la compatibilidad con nuevo hardware y software e incorporar mejoras en el funcionamiento del sistema.

Mantener el sistema operativo actualizado es una tarea fundamental, ya que permite corregir vulnerabilidades conocidas y reducir problemas de estabilidad o incompatibilidad.

Las actualizaciones pueden afectar a diferentes componentes del sistema, como el núcleo, los controladores, las aplicaciones incluidas o determinados servicios. Algunas se instalan de forma automática, mientras que otras requieren la intervención del usuario o incluso el reinicio del equipo.

En este apartado se estudiarán los principales tipos de actualizaciones, cómo se gestionan en Windows y GNU/Linux y qué precauciones deben tenerse en cuenta antes de aplicarlas.

> **Importante:** En este apartado, cuando hablamos de **actualizaciones del sistema operativo**, nos referimos principalmente a la instalación de parches, correcciones, mejoras y nuevas versiones de componentes del sistema.
>
> Esto no debe confundirse con la **actualización a una nueva versión del sistema operativo**, como pasar de Windows 10 a Windows 11 o de una versión de Ubuntu a otra. Este segundo caso supone un cambio más amplio del sistema y se aproxima más a un proceso de instalación o migración.

### 3.6.1. Importancia de las actualizaciones

Las **actualizaciones del sistema operativo** son necesarias para mantener el equipo en condiciones adecuadas de funcionamiento, seguridad y compatibilidad.

Una de sus principales finalidades es corregir **vulnerabilidades de seguridad**. Cuando se descubre un fallo que puede ser aprovechado por malware o por un atacante, el fabricante o desarrollador del sistema publica una actualización que corrige ese problema. Por este motivo, utilizar un sistema sin actualizar aumenta el riesgo de sufrir incidentes de seguridad.

Las actualizaciones también permiten corregir **errores de funcionamiento** detectados después de la publicación del sistema operativo. Estos errores pueden provocar fallos en determinadas funciones, cierres inesperados de programas o problemas de estabilidad.

Otra función importante es mejorar la **compatibilidad** con nuevo hardware y software. Los dispositivos, controladores y aplicaciones evolucionan continuamente y pueden requerir versiones recientes del sistema operativo para funcionar correctamente.

En algunos casos, las actualizaciones también incluyen **mejoras de rendimiento** o nuevas características que amplían o modifican las funciones disponibles en el sistema.

Por tanto, mantener actualizado un sistema operativo permite:

- Corregir vulnerabilidades de seguridad.
- Solucionar errores de funcionamiento.
- Mejorar la estabilidad y el rendimiento.
- Mantener la compatibilidad con hardware, controladores y aplicaciones.
- Incorporar nuevas funciones o mejoras en las ya existentes.

No mantener actualizado el sistema puede provocar problemas de seguridad, incompatibilidades con software o hardware reciente, errores de funcionamiento y una mayor exposición frente a amenazas.

### 3.6.2. Tipos de actualizaciones

No todas las actualizaciones tienen la misma finalidad. Dependiendo del componente que modifiquen y del objetivo que persigan, pueden distinguirse varios tipos.

#### Actualizaciones de seguridad

Las **actualizaciones de seguridad** corrigen vulnerabilidades que podrían ser aprovechadas por malware, virus o atacantes.

Son especialmente importantes porque permiten proteger el sistema frente a fallos conocidos y reducir el riesgo de accesos no autorizados o pérdida de información.

#### Actualizaciones acumulativas

Las **actualizaciones acumulativas** agrupan en un único paquete varias correcciones publicadas anteriormente junto con otras nuevas.

Este tipo de actualización simplifica el mantenimiento del sistema, ya que permite instalar de una sola vez un conjunto de mejoras y correcciones.

#### Actualizaciones de características

Las **actualizaciones de características** incorporan nuevas funciones, cambios en la interfaz o mejoras importantes en el sistema operativo.

Suelen tener un tamaño mayor que las actualizaciones de seguridad o corrección y pueden modificar de forma significativa determinados componentes del sistema.

#### Actualizaciones de controladores

Las **actualizaciones de controladores** permiten mejorar la compatibilidad y el funcionamiento de los dispositivos hardware instalados en el equipo.

Pueden incluir soporte para nuevos dispositivos, correcciones de errores o mejoras de rendimiento en componentes como la tarjeta gráfica, la tarjeta de red o los dispositivos de almacenamiento.

#### Actualizaciones del kernel en GNU/Linux

En los sistemas GNU/Linux también pueden publicarse actualizaciones del **kernel**, que es el núcleo del sistema operativo.

Estas actualizaciones pueden incluir correcciones de seguridad, mejoras de rendimiento, solución de errores y soporte para nuevo hardware.

En algunos casos, después de actualizar el kernel puede ser necesario reiniciar el sistema para comenzar a utilizar la nueva versión.

### 3.6.3. Actualizaciones en Windows

Windows gestiona las actualizaciones del sistema principalmente mediante **Windows Update**, una herramienta integrada que permite buscar, descargar e instalar las actualizaciones disponibles.

A través de Windows Update se distribuyen correcciones de seguridad, mejoras de estabilidad, actualizaciones acumulativas, nuevas características y, en determinados casos, actualizaciones de controladores.

El sistema puede comprobar automáticamente si existen nuevas actualizaciones y descargarlas e instalarlas según la configuración establecida.

Entre las principales opciones que ofrece Windows Update se encuentran:

- Buscar actualizaciones manualmente.
- Consultar el historial de actualizaciones instaladas.
- Pausar temporalmente las actualizaciones.
- Configurar las **horas activas** para reducir la posibilidad de que el equipo se reinicie mientras está siendo utilizado.
- Instalar determinadas actualizaciones opcionales, como algunos controladores.

Algunas actualizaciones modifican componentes que se encuentran en uso mientras el sistema está funcionando. Por este motivo, puede ser necesario **reiniciar el equipo** para completar correctamente su instalación.

El reinicio permite sustituir los archivos necesarios y cargar las nuevas versiones de los componentes actualizados.

Por tanto, aunque gran parte del proceso de actualización de Windows está automatizado, es importante comprobar periódicamente su estado y asegurarse de que las actualizaciones pendientes se instalan correctamente.

### 3.6.4. Actualizaciones en GNU/Linux

En los sistemas GNU/Linux, las actualizaciones se gestionan normalmente mediante las herramientas propias de cada distribución.

En distribuciones basadas en Debian, como Ubuntu, puede utilizarse tanto una **herramienta gráfica de actualización** como la **línea de comandos**.

Desde el entorno gráfico, el sistema puede informar al usuario de que existen actualizaciones disponibles y permitir su instalación mediante el gestor de actualizaciones.

Desde el terminal, en sistemas basados en Debian y Ubuntu, se utilizan habitualmente los siguientes comandos:

- `sudo apt update`  
  Actualiza la información de los repositorios y descarga la lista más reciente de paquetes disponibles.

- `sudo apt upgrade`  
  Instala las nuevas versiones disponibles de los paquetes instalados, siempre que puedan actualizarse sin necesidad de eliminar otros paquetes.

- `sudo apt full-upgrade`  
  Realiza una actualización más completa y puede instalar nuevos paquetes o eliminar otros cuando sea necesario para resolver dependencias y completar la actualización.

La diferencia principal entre `apt upgrade` y `apt full-upgrade` es que el primero intenta realizar una actualización más conservadora, mientras que el segundo puede realizar cambios adicionales en los paquetes instalados para completar el proceso.

En GNU/Linux pueden actualizarse distintos componentes del sistema, entre ellos:

- Paquetes y aplicaciones instaladas.
- Bibliotecas del sistema.
- Componentes de seguridad.
- Controladores.
- El **kernel** o núcleo del sistema operativo.

Cuando se instala una nueva versión del kernel, normalmente es necesario reiniciar el equipo para comenzar a utilizarla.

Además, muchas distribuciones permiten configurar **actualizaciones automáticas**, especialmente para instalar correcciones de seguridad sin necesidad de intervención constante del usuario.

Por tanto, mantener actualizado un sistema GNU/Linux consiste tanto en actualizar la información de los repositorios como en instalar regularmente las nuevas versiones de los paquetes disponibles.

### 3.6.5. Configuración y buenas prácticas

Los sistemas operativos permiten configurar cómo y cuándo se descargan e instalan las actualizaciones.

Dependiendo del sistema, puede elegirse entre una instalación automática o manual, dar prioridad a las actualizaciones de seguridad, pausar temporalmente las actualizaciones o programar su instalación para momentos en los que el equipo no esté siendo utilizado.

Una configuración adecuada debe buscar un equilibrio entre **seguridad**, **estabilidad** y **mínimas interrupciones durante el trabajo**.

Antes de instalar actualizaciones importantes es recomendable tener en cuenta algunas buenas prácticas:

- Mantener el equipo conectado a la corriente eléctrica durante el proceso de actualización.
- No apagar ni reiniciar el equipo mientras se están instalando actualizaciones.
- Realizar copias de seguridad de los datos importantes.
- Comprobar periódicamente si existen actualizaciones pendientes.
- Evitar instalar actualizaciones importantes justo antes de una tarea crítica o una práctica en la que sea imprescindible disponer del equipo.
- En máquinas virtuales, puede resultar conveniente crear una **instantánea o snapshot** antes de aplicar cambios importantes.

También es importante prestar atención a los reinicios. Algunas actualizaciones necesitan reiniciar el sistema para completar correctamente su instalación, por lo que conviene realizar estas operaciones en un momento adecuado.

En entornos profesionales, las actualizaciones suelen planificarse con especial cuidado para evitar interrupciones del servicio y comprobar previamente que no provocan problemas de compatibilidad con las aplicaciones o dispositivos utilizados.

Mantener una política de actualización adecuada permite reducir riesgos de seguridad, evitar incompatibilidades y conservar el sistema en condiciones correctas de funcionamiento.

