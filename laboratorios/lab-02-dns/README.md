# FC-LAB-002. DNS Footprinting pasivo con nslookup y dig en Kali Linux

| Campo | Descripción / dato requerido |
| --- | --- |
| Identificador | FC-LAB-002 |
| Nombre y versión | DNS Footprinting pasivo con nslookup y dig en Kali Linux. v1.0, 21/08/2026. |
| Objetivo | Identificar la exposición pública de un dominio mediante consultas DNS pasivas y evaluar si está protegido con DNSSEC. |
| Dominio y fase | D02 Reconocimiento y OSINT. Fases 03 Identificación y 02 Prevención (línea base de DNSSEC). |
| Roles | Ejecutor: Diego Alberto. Defensor: no aplica. Revisor: Diego Alberto. |
| Entorno y autorización | Kali Linux. El objetivo es scanme.nmap.org, un dominio que el proyecto Nmap publica para pruebas. Las consultas a servidores DNS públicos (8.8.8.8) y WHOIS son pasivas. |
| Entradas | Dominio scanme.nmap.org y resolutor 8.8.8.8. |
| Procedimiento | 1. Validar el tráfico hacia 8.8.8.8. 2. Resolver registros A y AAAA. 3. Consultar servidores autoritativos (NS). 4. Consultar servidores de correo (MX). 5. Hacer la resolución inversa (PTR). 6. Analizar en detalle la respuesta de dig (sección de pregunta, TTL, servidor, tiempo de consulta). 7. Trazar la jerarquía con dig +trace. 8. Verificar DNSSEC (DNSKEY y DS). 9. Contrastar con WHOIS. |
| Evidencias | Capturas de las salidas de nslookup, dig y whois. |
| Criterio de aceptación | Se documentan los registros A, AAAA, NS, MX y PTR del dominio, el recorrido de la delegación DNS y una conclusión sobre DNSSEC sustentada en la presencia o ausencia de DS y DNSKEY. |
| Análisis defensivo | El dominio no tiene registro DS en la zona padre ni DNSKEY en la zona hija, por lo que su DNS no está protegido con DNSSEC. Como control, se recomienda habilitar DNSSEC para mitigar la suplantación de respuestas y el envenenamiento de caché. El DNS lo provee Linode y el correo, Google. |
| Resultado | Perfil DNS del dominio y hallazgo: ausencia de DNSSEC. |

Autor de los laboratorios: Diego Alejandro Alberto Cáceres. Las fechas corresponden a la última versión de cada informe entregado. En estos laboratorios académicos el autor asumió todos los roles, incluido el de revisor, como admite la sección 3.
