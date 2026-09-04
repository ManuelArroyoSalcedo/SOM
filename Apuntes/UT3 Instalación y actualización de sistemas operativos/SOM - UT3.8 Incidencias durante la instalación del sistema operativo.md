# UT3. Instalación y actualización de sistemas operativos

## 3.8. Incidencias durante la instalación del sistema operativo

Aunque la instalación de un sistema operativo suele realizarse mediante un asistente que guía al usuario durante todo el proceso, pueden aparecer **incidencias** que impidan completar la instalación correctamente o que provoquen problemas en el primer arranque del sistema.

Estas incidencias pueden estar relacionadas con el medio de instalación, la detección del hardware, el particionado del disco, la copia de archivos o la configuración del gestor de arranque.

Ante un problema de este tipo, es importante identificar correctamente el síntoma, analizar sus posibles causas y aplicar una solución adecuada antes de continuar con la instalación.

Conocer las incidencias más habituales permite actuar de forma más rápida y segura y facilita la resolución de problemas durante la instalación y puesta en marcha del sistema operativo.

### 3.8.1. Problemas con el medio de instalación y el hardware

Uno de los primeros problemas que puede aparecer al instalar un sistema operativo es que el equipo no pueda iniciar correctamente desde el **medio de instalación** o que determinados dispositivos hardware no sean detectados.

#### El equipo no arranca desde el medio de instalación

Si el ordenador no inicia desde la memoria USB o desde el medio preparado para instalar el sistema operativo, las causas pueden estar relacionadas con:

- Un medio de instalación creado incorrectamente.
- Un orden de arranque mal configurado en BIOS/UEFI.
- Una incompatibilidad entre el modo de arranque utilizado y el medio de instalación.
- Problemas físicos en la memoria USB o en el puerto utilizado.

En estos casos conviene comprobar que el medio de instalación se ha creado correctamente, revisar el orden de arranque del equipo y verificar la configuración de BIOS/UEFI.

También puede ser útil probar otro puerto USB o crear de nuevo el medio de instalación.

#### El instalador no detecta algún dispositivo hardware

Durante la instalación también puede ocurrir que el sistema no reconozca correctamente determinados dispositivos, especialmente unidades de almacenamiento.

Las causas pueden ser diversas:

- Falta de controladores adecuados.
- Configuración incorrecta del controlador de almacenamiento.
- Problemas de compatibilidad con el hardware.
- Una configuración inadecuada en BIOS/UEFI.

Antes de modificar la configuración del equipo, debe comprobarse que el dispositivo aparece correctamente detectado en BIOS/UEFI.

Si el dispositivo es reconocido por el firmware pero no por el instalador, puede ser necesario proporcionar un controlador adicional o revisar la configuración del sistema de almacenamiento.

En cualquier caso, es importante evitar realizar cambios innecesarios y comprobar cada posible causa de forma ordenada antes de continuar con la instalación.

### 3.8.2. Problemas de particionado y almacenamiento

Durante la instalación pueden aparecer problemas relacionados con la **estructura de particiones del disco** o con la forma en la que el sistema de almacenamiento ha sido configurado previamente.

Uno de los problemas más habituales es que el instalador no permita crear nuevas particiones o utilizar el espacio disponible. Esto puede ocurrir, por ejemplo, cuando el disco utiliza un esquema de particionado que ya ha alcanzado sus límites o cuando existen particiones anteriores que interfieren con la nueva instalación.

También pueden aparecer incidencias relacionadas con la **partición del sistema EFI (ESP)** en equipos que utilizan UEFI. Si esta partición no existe, está dañada o no puede utilizarse correctamente, el sistema puede llegar a instalarse pero presentar problemas posteriormente durante el arranque. 

Ante este tipo de situaciones conviene comprobar:

- El esquema de particionado utilizado por el disco.
- Las particiones existentes y el espacio disponible.
- Si el instalador necesita crear particiones adicionales para el arranque o la recuperación.
- La existencia y el estado de la partición EFI cuando se utiliza UEFI.
- Que las particiones seleccionadas utilizan un sistema de archivos adecuado.

Cuando sea necesario modificar la estructura del disco, debe actuarse con especial precaución, ya que **eliminar, formatear o modificar particiones puede provocar la pérdida de los datos almacenados**.

Por este motivo, antes de realizar cambios importantes en el particionado es recomendable comprobar que se dispone de una copia de seguridad de la información que deba conservarse.

### 3.8.3. Fallos durante el proceso de instalación

Aunque el instalador haya iniciado correctamente y el hardware haya sido detectado, pueden aparecer **fallos durante la copia de archivos o la configuración del sistema** que impidan completar la instalación. 

Entre los síntomas más habituales se encuentran los mensajes de error durante la copia de archivos, instalaciones que se detienen antes de finalizar o procesos que avanzan de forma anormalmente lenta.

Las causas pueden estar relacionadas con:

- Un medio de instalación defectuoso o mal creado.
- Errores en la unidad de almacenamiento.
- Problemas de memoria.
- Interrupciones de alimentación.
- Fallos temporales durante el proceso de instalación.

Cuando aparece un error de este tipo, conviene comprobar primero el medio de instalación y repetir el proceso si fuera necesario. También puede ser útil revisar el estado de la unidad de almacenamiento y asegurarse de que el equipo dispone de los recursos necesarios para completar la instalación.

Si la instalación se realiza de forma muy lenta o parece quedar bloqueada, puede ser conveniente comprobar el puerto utilizado, el estado del dispositivo USB y el funcionamiento del disco de destino.

Ante cualquier incidencia, es recomendable anotar el mensaje de error mostrado y el momento en el que aparece, ya que esta información puede facilitar la identificación de la causa y su posterior resolución.

### 3.8.4. Problemas de arranque después de la instalación

Una vez finalizada la instalación, pueden aparecer incidencias que impidan que el sistema operativo **arranque correctamente**. Estos problemas suelen estar relacionados con la configuración del firmware, el gestor de arranque o la coexistencia de varios sistemas operativos.

Entre los síntomas más habituales se encuentran:

- El equipo muestra una pantalla negra o un mensaje de error al iniciar.
- El sistema operativo instalado no aparece como opción de arranque.
- El equipo inicia directamente otro sistema operativo.
- En un sistema con arranque dual, alguno de los sistemas instalados no aparece en el menú de selección.

En estos casos conviene comprobar, en primer lugar, que el modo de arranque configurado en BIOS/UEFI es compatible con la instalación realizada y que el gestor de arranque correspondiente se encuentra disponible.

En sistemas con varios sistemas operativos también debe revisarse el **orden de arranque** establecido en UEFI. Por ejemplo, puede ocurrir que Windows Boot Manager tenga prioridad sobre GRUB y que el equipo inicie Windows directamente, aunque GNU/Linux siga correctamente instalado. 

Si el gestor de arranque existe pero no muestra todos los sistemas disponibles, puede ser necesario actualizar o reparar su configuración. En GNU/Linux, por ejemplo, puede regenerarse la configuración de GRUB para intentar detectar otros sistemas instalados.

Cuando estas comprobaciones no solucionan el problema, puede ser necesario utilizar las herramientas de recuperación proporcionadas por el propio sistema operativo para **reparar el arranque**.

Es importante distinguir entre un problema de arranque y una instalación incorrecta: que un sistema operativo no aparezca inicialmente en el menú de arranque no significa necesariamente que haya sido eliminado o que sea necesario instalarlo de nuevo.

### 3.8.5. Actuación ante una incidencia

Cuando aparece una incidencia durante la instalación de un sistema operativo, conviene actuar de forma **ordenada y sistemática** para identificar la causa y evitar realizar cambios innecesarios.

Un procedimiento básico de actuación puede seguir los siguientes pasos:

1. **Identificar el problema.**  
   Observar qué ocurre, en qué momento aparece la incidencia y qué mensaje de error muestra el sistema, si lo hubiera.

2. **Comprobar las causas más probables.**  
   Revisar primero los elementos relacionados directamente con el problema, como el medio de instalación, la configuración BIOS/UEFI, las particiones, el almacenamiento o el gestor de arranque.

3. **Aplicar una solución de forma controlada.**  
   Debe modificarse únicamente aquello que pueda estar relacionado con la incidencia, evitando realizar varios cambios al mismo tiempo que dificulten conocer cuál de ellos ha solucionado el problema.

4. **Comprobar el resultado.**  
   Después de aplicar una solución, debe verificarse si la instalación puede continuar o si el sistema arranca correctamente.

5. **Documentar la incidencia.**  
   Conviene registrar qué problema apareció, cuál fue su causa, qué solución se aplicó y si quedó alguna actuación pendiente.

Si una primera solución no funciona, debe continuarse el diagnóstico siguiendo el mismo procedimiento hasta localizar la causa del problema.

Actuar de esta forma permite resolver las incidencias con mayor eficacia y facilita que el procedimiento seguido pueda ser comprendido y repetido posteriormente por otro técnico.

