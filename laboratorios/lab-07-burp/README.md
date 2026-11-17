# FC-LAB-007. Uso de Burp Suite para el análisis de flujos de autenticación

| Campo | Descripción / dato requerido |
| --- | --- |
| Identificador | FC-LAB-007 |
| Nombre y versión | Uso de Burp Suite para el análisis de flujos de autenticación. v1.0, 27/10/2026. |
| Objetivo | Interceptar y comparar cómo distintas aplicaciones transmiten las credenciales y responden ante credenciales incorrectas. |
| Dominio y fase | D03 Seguridad web y D04 Comunicaciones y APIs. Fases 03 Identificación y 04 Análisis. |
| Roles | Analista ofensivo (intercepción): Diego Alberto. Analista defensivo (comparación de controles): Diego Alberto. Revisor: Diego Alberto. |
| Entorno y autorización | Burp Suite como proxy. OWASP Juice Shop (demo.owasp-juice.shop) y la Web Security Academy de PortSwigger son entornos diseñados para práctica. En dos sistemas institucionales en producción, la plataforma académica A y el sistema académico B, solo se observó el propio intento de inicio de sesión, sin ataques; ambos sistemas los indica la guía del laboratorio elaborada por el docente. |
| Entradas | URL de inicio de sesión de cada aplicación y credenciales de prueba incorrectas. |
| Procedimiento | 1. Configurar el navegador con el proxy de Burp. 2. Enviar un inicio de sesión en cada aplicación. 3. Capturar la petición e identificar el endpoint, el método y el formato del cuerpo. 4. Enviar credenciales incorrectas y registrar la respuesta. 5. Comparar los cuatro flujos. |
| Evidencias | Capturas de las peticiones y respuestas en Burp por aplicación y tabla comparativa de formatos. |
| Criterio de aceptación | Para cada aplicación se documentan el endpoint, el método, el formato del cuerpo y la respuesta ante credenciales incorrectas. |
| Análisis defensivo | Las cuatro usan POST y no revelan si el error está en el usuario o en la contraseña. Juice Shop responde 401; la plataforma A lleva un contador de intentos fallidos y usa un token anti-bot de Cloudflare; el sistema B usa un código interno (-5) y codifica el cuerpo en Base64, lo cual es ofuscación y no cifrado; PortSwigger delega en Auth0 (OAuth/OIDC). Recomendaciones: usar siempre HTTPS, limitar los intentos, usar códigos de estado HTTP estándar y no depender de la codificación Base64 como protección. |
| Resultado | Matriz comparativa de cuatro flujos de autenticación (JSON, x-www-form-urlencoded y JSON en Base64). |

Documentos: guía del docente: [guía](procedimiento/guia.pdf); informe entregado: [informe](resultados/informe.pdf). En ambos se taparon los nombres, las URL y las capturas de la plataforma académica A y el sistema académico B.

Autor de los laboratorios: Diego Alejandro Alberto Cáceres. Las fechas corresponden a la última versión de cada informe entregado. En estos laboratorios académicos el autor asumió todos los roles, incluido el de revisor, como admite la sección 3.
