# FC-LAB-010. Vulnerabilidades web con DVWA, parte 2

![Resumen de hallazgos del FC-LAB-010](resultados/resumen-hallazgos.png)

| Campo | Descripción / dato requerido |
| --- | --- |
| Identificador | FC-LAB-010 |
| Nombre y versión | Vulnerabilidades web con DVWA, parte 2: CSRF, carga de archivos, inclusión de archivos e inyección SQL ciega. v1.0, 13/11/2026. |
| Objetivo | Explotar de forma controlada cuatro vulnerabilidades del OWASP Top 10:2025 en una aplicación deliberadamente insegura, mostrar cómo se encadenan dos de ellas para obtener ejecución remota y plantear su mitigación. |
| Dominio y fase | D03 Seguridad web y D04 Comunicaciones y APIs. Fases 03 Identificación, 04 Análisis y 05 Mitigación (plan de tratamiento). |
| Roles | Analista ofensivo (explotación): Diego Alberto. Analista defensivo (mitigación): Diego Alberto. Revisor: Diego Alberto. |
| Entorno y autorización | DVWA (Damn Vulnerable Web Application, GPL v3) en el contenedor `vulnerables/web-dvwa` sobre Kali Linux, publicado solo en `localhost:8080`. Es una aplicación diseñada para la práctica; no se probó ningún sistema de terceros. |
| Entradas | Credenciales por defecto de DVWA, nivel de seguridad Low, el script `shell.php` de prueba y las cargas de [procedimiento/pasos.md](procedimiento/pasos.md). |
| Procedimiento | 1. Levantar DVWA con [scripts/levantar-dvwa.sh](scripts/levantar-dvwa.sh) en el nivel Low. 2. CSRF. 3. File Upload. 4. File Inclusion. 5. SQL Injection (Blind). Diagrama en [procedimiento/flujo-pruebas.png](procedimiento/flujo-pruebas.png). |
| Evidencias | 23 capturas en [evidencias/](evidencias/), numeradas como las partes del informe; la contraseña de la URL de CSRF está tapada. Hashes SHA-256 en `evidencias/hashes.csv`. |
| Criterio de aceptación | Cada módulo muestra la respuesta normal y la respuesta alterada por la carga: cambio de contraseña sin token, ejecución del archivo subido, lectura de archivos del sistema y respuesta booleana de la base de datos. |
| Análisis defensivo | Cinco hallazgos, tres críticos, uno alto y uno medio, en [resultados/hallazgos.md](resultados/hallazgos.md). La subida de archivos y la inclusión local se encadenan para lograr ejecución remota por dos caminos. La mitigación propuesta es defensa en profundidad según OWASP. |
| Resultado | Matriz de hallazgos con severidad según la rúbrica del Anexo B y plan de mitigación. Pendiente para la fase 06: repetir las pruebas en el nivel Impossible y registrar si cada carga queda bloqueada. |

Documentos: guía del docente: [guía](procedimiento/guia.pdf); informe entregado: [informe](resultados/informe.pdf).

Autor del laboratorio: Diego Alejandro Alberto Cáceres. Corresponde al laboratorio 10 del curso. En este laboratorio académico el autor asumió todos los roles, incluido el de revisor, como admite la sección 3.
