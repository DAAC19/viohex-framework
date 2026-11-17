# Anexo D. Plan de mitigación

| Hallazgo | Medida | Responsable | Prioridad | Verificación (fase 06) |
| --- | --- | --- | --- | --- |
| H01 | Publicar DNSKEY en la zona y DS en la zona padre | Administrador del dominio (tercero, fuera del alcance) | Baja | Repetir las consultas dig DNSKEY y DS |
| H02 | Retirar nombres de variables de entorno y endpoints del frontend; mover la lógica sensible al servidor | Diego Alberto (sitio propio) | Baja | Repetir la clonación y las búsquedas con grep (P02) |
| H03 | Comunicar a la institución; exigir HTTPS, limitar intentos y usar códigos HTTP estándar | Responsable del sistema académico B | Baja | Repetir la captura con Burp solo con autorización |
| H04 | Inspeccionar los archivos salientes con varias técnicas y registrar hashes en la cadena de custodia | Analista defensivo | Media | Repetir la parte 3 del FC-LAB-004 con evidencias nuevas |
| H05 | Bloqueo de intentos y MFA | Diego Alberto (entorno de práctica DVWA) | Crítica | Repetir en nivel Impossible (FC-LAB-009) |
| H06 | Consultas parametrizadas y validación de entradas | Diego Alberto (entorno de práctica DVWA) | Crítica | Repetir en nivel Impossible (FC-LAB-009) |
| H07 | Evitar el shell del sistema; usar escapeshellarg | Diego Alberto (entorno de práctica DVWA) | Crítica | Repetir en nivel Impossible (FC-LAB-009) |
| H08 | htmlspecialchars en la salida y Content-Security-Policy | Diego Alberto (entorno de práctica DVWA) | Alta | Repetir en nivel Impossible (FC-LAB-009) |
| H09 | Sanear con HTMLPurifier y marcar la cookie HttpOnly | Diego Alberto (entorno de práctica DVWA) | Crítica | Repetir en nivel Impossible (FC-LAB-009) |
| H10 | Token anti-CSRF, envío por POST y comprobar Origin/Referer | Diego Alberto (entorno de práctica DVWA) | Alta | Repetir en nivel Impossible (FC-LAB-010) |
| H11 | Lista blanca de imágenes, renombrar y no ejecutar PHP fuera de la raíz | Diego Alberto (entorno de práctica DVWA) | Crítica | Repetir en nivel Impossible (FC-LAB-010) |
| H12 | Lista fija de archivos con realpath(); allow_url_include desactivado | Diego Alberto (entorno de práctica DVWA) | Crítica | Repetir en nivel Impossible (FC-LAB-010) |
| H13 | Deshabilitar el listado de directorios y ocultar la versión de Apache | Diego Alberto (entorno de práctica DVWA) | Media | Repetir en nivel Impossible (FC-LAB-010) |
| H14 | Consultas parametrizadas y cuenta de BD de mínimo privilegio | Diego Alberto (entorno de práctica DVWA) | Crítica | Repetir en nivel Impossible (FC-LAB-010) |
| H15 | Actualizar mustache.js a una versión sin la CVE e inventariar dependencias | Diego Alberto (objetivo de práctica o controlado) | Alta | Repetir el escaneo con ZAP (FC-LAB-011) |
| H16 | Actualizar Bootstrap y las demás bibliotecas a versiones soportadas | Diego Alberto (objetivo de práctica o controlado) | Media | Repetir el escaneo con ZAP (FC-LAB-011) |
| H17 | Definir una política CSP restrictiva, sin comodines ni unsafe-inline/eval | Diego Alberto (objetivo de práctica o controlado) | Media | Repetir el escaneo con ZAP (FC-LAB-011) |
| H18 | Enviar las cabeceras de seguridad y restringir CORS a los orígenes necesarios | Diego Alberto (objetivo de práctica o controlado) | Media | Repetir el escaneo con ZAP (FC-LAB-011) |
| H19 | Marcar las cookies con HttpOnly y SameSite y llevar el ID de sesión en cookie | Diego Alberto (objetivo de práctica o controlado) | Media | Repetir el escaneo con ZAP (FC-LAB-011) |

H02 es el único hallazgo sobre un activo propio, por lo que es el candidato para la primera ejecución completa del ciclo, hasta la fase 06 Verificación.
