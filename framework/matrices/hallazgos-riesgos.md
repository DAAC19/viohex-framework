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

Probabilidad, impacto y severidad asignados según la rúbrica aprobada.
