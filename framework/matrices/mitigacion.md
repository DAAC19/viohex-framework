# Anexo D. Plan de mitigación

| Hallazgo | Medida | Responsable | Prioridad | Verificación (fase 06) |
| --- | --- | --- | --- | --- |
| H01 | Publicar DNSKEY en la zona y DS en la zona padre | Administrador del dominio (tercero, fuera del alcance) | Baja | Repetir las consultas dig DNSKEY y DS |
| H02 | Retirar nombres de variables de entorno y endpoints del frontend; mover la lógica sensible al servidor | Diego Alberto (sitio propio) | Baja | Repetir la clonación y las búsquedas con grep (P02) |
| H03 | Comunicar a la institución; exigir HTTPS, limitar intentos y usar códigos HTTP estándar | Responsable del sistema académico B | Baja | Repetir la captura con Burp solo con autorización |
| H04 | Inspeccionar los archivos salientes con varias técnicas y registrar hashes en la cadena de custodia | Analista defensivo | Media | Repetir la parte 3 del FC-LAB-004 con evidencias nuevas |

H02 es el único hallazgo sobre un activo propio, por lo que es el candidato para la primera ejecución completa del ciclo, hasta la fase 06 Verificación.
