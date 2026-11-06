# VioHex

## ESCENARIO

VioHex propone un marco metodológico para organizar evaluaciones de ciberseguridad mediante preparación, prevención, identificación, análisis, mitigación y verificación. Integra enfoques Red Team, Blue Team y Purple Team, prácticas de seguridad de aplicaciones, OSINT, análisis forense y el factor humano. Los laboratorios existentes se incorporan como instrumentos versionados, no como sustitutos de la metodología. Cada laboratorio se describe mediante una ficha estandarizada que lo vincula con una fase, un dominio, unas evidencias y un criterio de aceptación verificable.

El framework se encuentra en fase de diseño. Su utilidad, consistencia y reproducibilidad deberán evaluarse mediante casos de estudio autorizados, métricas previamente definidas y evidencias verificables. A la fecha se han desarrollado siete laboratorios (FC-LAB-001 a FC-LAB-007) en entornos propios, de práctica o sobre fuentes abiertas; sus resultados se integran en las secciones 10 y 12 y en los anexos como primera aplicación del marco.

# 1. INTRODUCCIÓN

## 1.1. Contexto

La creciente dependencia de servicios digitales, APIs, redes y sistemas inteligentes incrementa la necesidad de evaluar superficies de exposición, controles técnicos y prácticas humanas. La ciberseguridad requiere actividades preventivas, pruebas controladas, análisis de evidencias y mejora continua. En el ámbito académico, estas actividades suelen desarrollarse como prácticas aisladas con herramientas como Kali Linux, nslookup, dig, HTTrack, Steghide, Maltego y Burp Suite, sin un marco común que relacione sus resultados con la gestión del riesgo.

## 1.2. Problemática

Las prácticas de reconocimiento, pentesting, defensa y análisis forense suelen desarrollarse de forma fragmentada. Sin protocolos y criterios comunes, resulta difícil reproducir resultados, relacionar hallazgos con controles y demostrar mejoras.

## 1.3. Justificación

Un marco metodológico facilita la coordinación de actores, la estandarización de pruebas y el uso de evidencias comparables, tanto en escenarios académicos como organizacionales.

## 1.4. Propósito

Proporcionar una ruta estructurada para planificar evaluaciones autorizadas, identificar debilidades, analizar riesgos, implementar tratamientos y comprobar su efectividad.

## 1.5. Contribución esperada

Integrar fases, dominios, roles, instrumentos, matrices, métricas y laboratorios en una arquitectura reproducible, sujeta a validación empírica.

# 2. FUNDAMENTOS DE CIBERSEGURIDAD

| Tema | Contenido previsto |
| --- | --- |
| Principios | Confidencialidad, integridad, disponibilidad y trazabilidad. |
| Gestión del riesgo | Activos, amenazas, vulnerabilidades, probabilidad, impacto y tratamiento. |
| Superficie de ataque | Activos expuestos, servicios, vectores y dependencias. |
| Seguridad ofensiva | Reconocimiento, pruebas de penetración y emulación adversaria autorizada. |
| Seguridad defensiva | Prevención, detección, respuesta, recuperación y monitoreo. |
| Forense digital | Preservación, análisis e integridad de evidencias. |
| Aplicaciones y APIs | Autenticación, autorización, sesiones, validación y exposición de información. |
| Factor humano | Ingeniería social, concienciación y verificación de procesos. |
| IA y LLM | Prompt injection y controles para aplicaciones que integran modelos. |

# 3. MODELOS OPERATIVOS Y EQUIPOS DE CIBERSEGURIDAD

| Modelo / función | Papel dentro de VioHex |
| --- | --- |
| Red Team | Simulación adversaria autorizada; no se equipara toda prueba puntual a una operación Red Team. |
| Blue Team | Protección, detección, investigación y respuesta. |
| Purple Team | Coordinación de pruebas ofensivas y defensivas para mejorar controles. |
| SOC | Función de monitoreo y gestión de eventos; no es requisito para todo laboratorio. |
| CSIRT | Coordinación de respuesta ante incidentes. |
| Pentesting | Evaluación técnica acotada de vulnerabilidades. |
| Threat Hunting | Búsqueda proactiva de señales de amenazas. |
| DFIR | Forense digital y respuesta a incidentes. |

El enfoque transversal recomendado es Purple Team. En entornos académicos o aplicados en una organización una persona puede asumir varios roles, documentando responsabilidades y separando, cuando sea viable, ejecución y verificación.

# 4. REFERENTES TÉCNICOS Y NORMATIVOS

| Referente | Uso propuesto |
| --- | --- |
| NIST CSF 2.0 | Organización de funciones de gestión de riesgo. |
| NIST SP 800-115 | Orientación para evaluación técnica de seguridad. |
| MITRE ATT&CK | Taxonomía de tácticas y técnicas adversarias. |
| OWASP Top 10:2025 | Riesgos comunes en aplicaciones web. |
| OWASP WSTG v4.2 | Procedimientos de pruebas de seguridad web. |
| ISO/IEC 27001:2022 | Contexto de gestión de seguridad de la información. |
| ISO/IEC 27005:2022 | Orientación para análisis y tratamiento de riesgos. |

La adopción de referentes se concreta en dos matrices de correspondencia: la primera relaciona cada fase con los referentes de gestión y evaluación; la segunda, cada laboratorio con técnicas adversarias y riesgos de aplicaciones. Ambas son una propuesta de integración, no una equivalencia declarada por los propios referentes.

## 4.1. Correspondencia de fases con referentes

| Fase | NIST CSF 2.0 | NIST SP 800-115 | ISO/IEC 27001:2022 | ISO/IEC 27005:2022 | Laboratorios |
| --- | --- | --- | --- | --- | --- |
| 01 Preparación | GV Gobernar (contexto, roles, políticas) | Cap. 6 Planificación de la evaluación | Cl. 4–6 Contexto, liderazgo y planificación | Establecimiento del contexto | FC-LAB-001 |
| 02 Prevención | ID.AM Gestión de activos; PR Proteger | Cap. 3 Técnicas de revisión | Anexo A Controles existentes | Identificación del riesgo | FC-LAB-002, 005 |
| 03 Identificación | ID.RA Evaluación del riesgo | Cap. 4 Identificación y análisis de objetivos; cap. 5 Validación de vulnerabilidades; cap. 7 Ejecución | Cl. 8.2 Apreciación de riesgos | Identificación del riesgo | FC-LAB-002, 003, 004, 006, 007 |
| 04 Análisis | ID.RA Evaluación del riesgo | Cap. 8 Actividades posteriores (análisis de hallazgos) | Cl. 8.2 Apreciación de riesgos | Análisis y valoración del riesgo | FC-LAB-003, 004, 005, 007 |
| 05 Mitigación | PR Proteger; RS Responder; RC Recuperar | Cap. 8 Recomendaciones de mitigación | Cl. 8.3 Tratamiento de riesgos | Tratamiento del riesgo | Ninguno |
| 06 Verificación | ID.IM Mejora | No lo trata de forma explícita | Cl. 9 Evaluación del desempeño; cl. 10 Mejora | Seguimiento y revisión | FC-LAB-004 |

## 4.2. Correspondencia de laboratorios con MITRE ATT&CK y OWASP Top 10:2025

| Laboratorio | Táctica ATT&CK | Técnica ATT&CK | OWASP Top 10:2025 |
| --- | --- | --- | --- |
| FC-LAB-001 | Discovery (TA0007) | T1046 Network Service Discovery (escaneo de localhost) | No aplica |
| FC-LAB-002 | Reconnaissance (TA0043) | T1590.002 Gather Victim Network Information: DNS; T1596.001 Search Open Technical Databases: DNS/Passive DNS | No aplica |
| FC-LAB-003 | Reconnaissance (TA0043) | T1594 Search Victim-Owned Websites | A02 Security Misconfiguration (información expuesta en el frontend) |
| FC-LAB-004 | Defense Evasion (TA0005); Command and Control (TA0011) | T1027.003 Obfuscated Files or Information: Steganography; T1001.002 Data Obfuscation: Steganography | No aplica |
| FC-LAB-005 | Initial Access (TA0001) | T1566.002 Phishing: Spearphishing Link (incluye el quishing) | No aplica |
| FC-LAB-006 | Reconnaissance (TA0043) | T1590.002 DNS; T1590.005 IP Addresses; T1596 Search Open Technical Databases | No aplica |
| FC-LAB-007 | Credential Access (TA0006) | T1110 Brute Force (controles observados: límite de intentos y mensajes de error genéricos) | A07 Authentication Failures; A04 Cryptographic Failures (Base64 no es cifrado) |

# 5. DEFINICIÓN DE VIOHEX

## 5.1. Definición

VioHex es una propuesta de framework metodológico que integra procedimientos ofensivos, defensivos y colaborativos para identificar, analizar, evaluar, mitigar y verificar riesgos de ciberseguridad mediante pruebas controladas, evidencias reproducibles y mejora continua.

## 5.2. Objetivo general

Establecer un enfoque sistemático para evaluar y fortalecer controles de ciberseguridad en sistemas de información mediante procedimientos técnicos autorizados y verificables.

## 5.3. Objetivos específicos

Delimitar el alcance; establecer línea base; ejecutar pruebas; registrar y analizar hallazgos; priorizar tratamientos; repetir pruebas y documentar efectividad.

## 5.4. Alcance

Aplicable a entornos de laboratorio, aplicaciones web, APIs, servicios de red, archivos digitales, procesos humanos y aplicaciones con IA, de acuerdo con permisos y capacidades disponibles.

## 5.5. Principios rectores

Autorización expresa, proporcionalidad, mínimo impacto, confidencialidad, reproducibilidad, integridad de evidencias, trazabilidad y mejora continua.

## 5.6. Limitaciones

No garantiza ausencia de vulnerabilidades; la cobertura depende del alcance, las herramientas y los escenarios.
