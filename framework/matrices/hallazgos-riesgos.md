# Anexo B. Matriz de hallazgos y riesgos

Rúbrica de severidad (probabilidad × impacto) aprobada para esta versión, como exige la sección 13.

| Probabilidad / Impacto | Bajo | Medio | Alto |
| --- | --- | --- | --- |
| Baja | Baja | Baja | Media |
| Media | Baja | Media | Alta |
| Alta | Media | Alta | Crítica |

| ID | Prueba | Hallazgo | Activo | Probabilidad | Impacto | Severidad | Control recomendado |
| --- | --- | --- | --- | --- | --- | --- | --- |
| H01 | P01 | Dominio sin DNSSEC (sin DS ni DNSKEY) | DNS de scanme.nmap.org (tercero) | Baja | Medio | Baja | Habilitar DNSSEC |
| H02 | P02 | Nombres de variables de entorno visibles en el frontend | Sitio propio en Netlify | Media | Bajo | Baja | No exponer variables ni endpoints en el frontend |
| H03 | P07 | Cuerpo del inicio de sesión codificado en Base64 (ofuscación, no cifrado) | Sistema académico B (institucional) | Baja | Medio | Baja | HTTPS obligatorio; no usar Base64 como protección; códigos HTTP estándar |
| H04 | P03 | La esteganografía con contraseña no deja rastro visible para las herramientas usadas | Archivos que salen de la organización | Media | Medio | Media | Inspección con varias técnicas y control de salida de información |
| H05 | P09 | Fuerza bruta con credenciales por defecto | DVWA (localhost, práctica) | Alta | Alto | Crítica | Bloqueo de intentos y MFA |
| H06 | P09 | Inyección SQL (1' OR '1'='1) | DVWA (localhost, práctica) | Alta | Alto | Crítica | Consultas parametrizadas |
| H07 | P09 | Inyección de comandos (127.0.0.1; whoami) | DVWA (localhost, práctica) | Alta | Alto | Crítica | Sin shell; escapeshellarg |
| H08 | P09 | XSS reflejado: lectura de la cookie de sesión | DVWA (localhost, práctica) | Media | Alto | Alta | htmlspecialchars y CSP |
| H09 | P09 | XSS almacenado: ejecución persistente | DVWA (localhost, práctica) | Alta | Alto | Crítica | HTMLPurifier y cookie HttpOnly |
| H10 | P10 | CSRF: cambio de contraseña sin token (GET) | DVWA (localhost, práctica) | Media | Alto | Alta | Token anti-CSRF y envío por POST |
| H11 | P10 | Carga de archivos sin validación (RCE como www-data) | DVWA (localhost, práctica) | Alta | Alto | Crítica | Lista blanca de imágenes; sin ejecución de PHP |
| H12 | P10 | Inclusión de archivos: RCE encadenado | DVWA (localhost, práctica) | Alta | Alto | Crítica | Lista fija de archivos y realpath() |
| H13 | P10 | Listado de directorios de Apache | DVWA (localhost, práctica) | Alta | Bajo | Media | Deshabilitar el listado y ocultar la versión |
| H14 | P10 | Inyección SQL ciega (oráculo booleano) | DVWA (localhost, práctica) | Alta | Alto | Crítica | Consultas parametrizadas |
| H15 | P11 | Biblioteca JavaScript vulnerable (mustache.js 0.7.2, CVE-2015-8862) | Plataforma académica A (objetivo controlado) | Media | Alto | Alta | Actualizar la biblioteca a una versión sin la CVE |
| H16 | P11 | Componentes front-end desactualizados (Bootstrap 3.3.6) | Plataforma académica A (objetivo controlado) | Media | Medio | Media | Actualizar las bibliotecas a versiones soportadas |
| H17 | P11 | Política CSP ausente o permisiva (comodines, unsafe-inline/eval) | Los tres objetivos | Media | Medio | Media | Definir una CSP restrictiva sin comodines |
| H18 | P11 | Cabeceras de seguridad ausentes y CORS permisivo | Juice Shop y plataforma A | Media | Medio | Media | Enviar X-Frame-Options, HSTS y X-Content-Type-Options; restringir CORS |
| H19 | P11 | Gestión de sesión débil: cookies sin HttpOnly/SameSite e ID de sesión en la URL | DVWA y Juice Shop (de práctica) | Media | Medio | Media | Cookies con HttpOnly y SameSite; ID de sesión en cookie |

Probabilidad, impacto y severidad asignados según la rúbrica aprobada.
