# FC-LAB-006. Maltego: aplicación y cuestionario

| Campo | Descripción / dato requerido |
| --- | --- |
| Identificador | FC-LAB-006 |
| Nombre y versión | Maltego: aplicación y cuestionario. Aplicación: v1.0, 23/10/2026. Cuestionario: v1.0, 26/10/2026. |
| Objetivo | Mapear la infraestructura pública de un dominio (correo, DNS, SPF, IP, netblock y ASN) mediante OSINT pasivo y representarla en un grafo. |
| Dominio y fase | D02 Reconocimiento y OSINT. Fase 03 Identificación. |
| Roles | Ejecutor: Diego Alberto. Revisor: Diego Alberto. |
| Entorno y autorización | Maltego con transforms públicos. Reconocimiento pasivo sobre fuentes abiertas, sin interacción intrusiva con los objetivos: tesla.com, santototunja.edu.co, instagram.com y microsoft.com. |
| Entradas | Dominios objetivo y transforms de MX, NS, SOA, SPF, IP, netblock y ASN. |
| Procedimiento | 1. Descubrir el servidor de correo (MX). 2. Descubrir los servidores DNS (NS). 3. Consultar el registro SOA. 4. Descubrir las políticas SPF. 5. Descubrir las direcciones IP y los rangos de red. 6. Obtener el ASN. 7. Organizar el grafo. Repetir con cada dominio y responder el cuestionario. |
| Evidencias | Grafos de Maltego por dominio, capturas de cada transform y cuestionario de 10 preguntas. |
| Criterio de aceptación | Cada dominio tiene un grafo con sus registros MX, NS, SOA y SPF; cuando no aparecen IP o netblocks, se documenta el motivo. |
| Análisis defensivo | Tesla delega el correo en Microsoft (mail.protection.outlook.com). En el portal de la universidad no se obtuvieron nodos de IP, por lo que no fue posible analizar el netblock. Instagram delega el SPF en dos dominios de Facebook y Microsoft, en cuatro dominios. El SPF reduce la suplantación del dominio; un DNS mal protegido expone a secuestro de registros y a denegación de servicio. |
| Resultado | Perfiles de infraestructura de los cuatro dominios y relación de dependencias con terceros. |

Autor de los laboratorios: Diego Alejandro Alberto Cáceres. Las fechas corresponden a la última versión de cada informe entregado. En estos laboratorios académicos el autor asumió todos los roles, incluido el de revisor, como admite la sección 3.
