# FC-LAB-004. Esteganografía y análisis forense con Steghide, partes 1 a 3

| Campo | Descripción / dato requerido |
| --- | --- |
| Identificador | FC-LAB-004 |
| Nombre y versión | Esteganografía y análisis forense con Steghide, partes 1 a 3. Parte 1: v1.0, 04/09/2026. Parte 2: v1.0, 17/09/2026. Parte 3: v1.0, 22/09/2026. |
| Objetivo | Ocultar, detectar y extraer información en imágenes, y preservar la integridad de la evidencia mediante hashes. |
| Dominio y fase | D06 Forense digital. Fases 03 Identificación, 04 Análisis y 06 Verificación (comparación de hashes). |
| Roles | Parte 1: ejecutor. Parte 2: emisor de imágenes con mensajes ocultos y analista forense de las imágenes que compartieron los compañeros (enfoque colaborativo). Parte 3: preparador del reto y analista. Custodio de evidencias: Diego Alberto. Revisor: Diego Alberto. |
| Entorno y autorización | Kali Linux con Steghide, ExifTool, strings y Binwalk. Imágenes y mensajes sintéticos creados para la práctica o compartidos por los compañeros. |
| Entradas | Imágenes JPG, archivos de texto con mensajes secretos y contraseñas de Steghide definidas en el laboratorio. |
| Procedimiento | Parte 1: crear el directorio, verificar Steghide, ocultar el mensaje en una JPG, comprobar si contiene datos, extraerlo y comparar los hashes. Parte 2: ocultar mensajes en tres imágenes y compartirlas; en las imágenes recibidas, copiar la original, identificar el tipo real del archivo, calcular su hash, analizar los metadatos con ExifTool, buscar cadenas, buscar datos incrustados con Binwalk, extraer con Steghide y verificar que la evidencia no cambió. Parte 3: preparar tres evidencias (imagen normal, esteganografía real y archivo concatenado), trabajar sobre copias y localizar la información oculta con metadatos, strings (final del archivo), Binwalk y Steghide. |
| Evidencias | Imágenes originales y modificadas, mensajes extraídos, hashes SHA antes y después del análisis y capturas de ExifTool, strings y Binwalk. |
| Criterio de aceptación | El mensaje extraído coincide con el original, el hash de la evidencia original no cambia durante el análisis y, en la parte 3, se distingue correctamente cuál técnica se usó en cada evidencia. |
| Análisis defensivo | Las herramientas detectan los datos concatenados (strings, Binwalk), pero la esteganografía con Steghide no deja rastro visible sin la contraseña. Recomendaciones: inspeccionar los archivos que salen de la organización con varias técnicas, trabajar siempre sobre copias y registrar los hashes como parte de la cadena de custodia. |
| Resultado | Los mensajes de las evidencias B y C se recuperaron y los hashes de las evidencias originales se mantuvieron íntegros. |

Correspondencia de informes: parte 1 = "Laboratorio No 4"; parte 2 = "Laboratorio No 4 parte 2" (preparación de las imágenes) y "Laboratorio Esteganografía parte 2" (análisis forense); parte 3 = "Laboratorio Esteganografía parte 3".

Documentos: guía del docente: [guía parte 1](procedimiento/guia-parte1.pdf), [guía parte 2](procedimiento/guia-parte2.pdf), [guía parte 3](procedimiento/guia-parte3.pdf); informe entregado: [informe parte 1](resultados/informe-parte1.pdf), [informe parte 2, análisis forense](resultados/informe-parte2-analisis.pdf), [informe parte 2, preparación de las imágenes](resultados/informe-parte2-preparacion.pdf), [informe parte 3](resultados/informe-parte3.pdf).

Autor de los laboratorios: Diego Alejandro Alberto Cáceres. Las fechas corresponden a la última versión de cada informe entregado. En estos laboratorios académicos el autor asumió todos los roles, incluido el de revisor, como admite la sección 3.
