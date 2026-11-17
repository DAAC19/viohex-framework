# FC-LAB-003. Clonación controlada con HTTrack (partes 1 y 2)

| Campo | Descripción / dato requerido |
| --- | --- |
| Identificador | FC-LAB-003 |
| Nombre y versión | Clonación controlada con HTTrack (partes 1 y 2). v1.0, 28/08/2026. |
| Objetivo | Determinar qué información de un sitio web puede reconstruirse desde el frontend y si expone datos sensibles. |
| Dominio y fase | D03 Seguridad web. Fases 03 Identificación y 04 Análisis. |
| Roles | Ejecutor (clonación): Diego Alberto. Analista defensivo (revisión de secretos): Diego Alberto. Revisor: Diego Alberto. |
| Entorno y autorización | Kali Linux. Sitios de prueba desplegados en Netlify para la práctica: uno propio (parte 1) y otro desplegado por un compañero (parte 2); la guía limita los objetivos a los sitios de prueba desplegados por los estudiantes. |
| Entradas | URL del sitio, directorio de clonación y lista de palabras clave para grep (api, fetch, token, key, http). |
| Procedimiento | 1. Desplegar el sitio en Netlify. 2. Instalar HTTrack. 3. Crear el directorio y clonar el sitio. 4. Listar los archivos en forma de árbol. 5. Servir el clon de forma local y compararlo con el original. 6. Buscar con grep referencias a API, fetch, token, key y HTTP. 7. Hacer una búsqueda unificada de secretos. |
| Evidencias | Capturas del sitio desplegado, de la ejecución de HTTrack, del árbol de archivos, del clon servido en local y de las salidas de grep. |
| Criterio de aceptación | El clon local reproduce el sitio original y cada categoría de búsqueda tiene un resultado documentado (con hallazgo o sin hallazgo). |
| Análisis defensivo | No se encontraron claves, tokens ni cookies expuestos, pero sí nombres de variables de entorno, rutas y la estructura del sitio. Controles recomendados: no exponer variables de entorno ni endpoints en el frontend, evitar la autenticación del lado del cliente y limitar la tasa de peticiones. |
| Resultado | Se reconstruyó todo el frontend (HTML, CSS, JS, imágenes). Hallazgo de severidad baja: nombres de variables de entorno visibles en el frontend (rúbrica del Anexo B). |

Documentos: guía del docente: [guía](procedimiento/guia.pdf); informe entregado: [informe parte 1](resultados/informe-parte1.pdf), [informe parte 2](resultados/informe-parte2.pdf).

Autor de los laboratorios: Diego Alejandro Alberto Cáceres. Las fechas corresponden a la última versión de cada informe entregado. En estos laboratorios académicos el autor asumió todos los roles, incluido el de revisor, como admite la sección 3.
