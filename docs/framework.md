# VioHex

## ESCENARIO

VioHex propone un marco metodológico para organizar evaluaciones de ciberseguridad mediante preparación, prevención, identificación, análisis, mitigación y verificación. Integra enfoques Red Team, Blue Team y Purple Team, prácticas de seguridad de aplicaciones, OSINT, análisis forense y el factor humano. Los laboratorios existentes se incorporan como instrumentos versionados, no como sustitutos de la metodología. Cada laboratorio se describe mediante una ficha estandarizada que lo vincula con una fase, un dominio, unas evidencias y un criterio de aceptación verificable.

El framework se encuentra en fase de diseño. Su utilidad, consistencia y reproducibilidad deberán evaluarse mediante casos de estudio autorizados, métricas previamente definidas y evidencias verificables.  A la fecha se han desarrollado once laboratorios (FC-LAB-001 a FC-LAB-011) en entornos propios, de práctica o sobre fuentes abiertas; sus resultados se integran en las secciones 10 y 12 y en los anexos como primera aplicación del marco.

# 1. INTRODUCCIÓN

## 1.1. Contexto

La creciente dependencia de servicios digitales, APIs, redes y sistemas inteligentes incrementa la necesidad de evaluar superficies de exposición, controles técnicos y prácticas humanas. La ciberseguridad requiere actividades preventivas, pruebas controladas, análisis de evidencias y mejora continua.  En el ámbito académico, estas actividades suelen desarrollarse como prácticas aisladas con herramientas como Kali Linux, nslookup, dig, HTTrack, Steghide, Maltego, Burp Suite y OWASP ZAP, sin un marco común que relacione sus resultados con la gestión del riesgo.

## 1.2. Problemática

Las prácticas de reconocimiento, pentesting, defensa y análisis forense suelen desarrollarse de forma fragmentada: cada ejercicio usa su propia herramienta, su propio formato de informe y su propio criterio de éxito. Sin protocolos y criterios comunes, resulta difícil reproducir resultados, relacionar hallazgos con controles y demostrar mejoras.

Esta fragmentación tiene tres consecuencias. Primero, los hallazgos no pueden compararse entre sí porque carecen de una rúbrica de severidad común. Segundo, las evidencias pierden valor cuando no se registran con su integridad y su procedencia. Tercero, el trabajo suele detenerse en la identificación: se documenta la vulnerabilidad, pero rara vez se aplica un tratamiento y se repite la prueba para comprobar que el riesgo disminuyó.

## 1.3. Justificación

Un marco metodológico facilita la coordinación de actores, la estandarización de pruebas y el uso de evidencias comparables, tanto en escenarios académicos como organizacionales. Los referentes existentes resuelven partes del problema: NIST CSF 2.0 e ISO/IEC 27001 organizan la gestión, NIST SP 800-115 y OWASP WSTG orientan la ejecución técnica y MITRE ATT&CK clasifica el comportamiento adversario. VioHex no los reemplaza; los articula en un ciclo único con instrumentos concretos (fichas, matrices y registro de evidencias) que permiten aplicarlos de forma consistente en laboratorios y en sistemas reales autorizados.

## 1.4. Propósito

Proporcionar una ruta estructurada para planificar evaluaciones autorizadas, identificar debilidades, analizar riesgos, implementar tratamientos y comprobar su efectividad, de modo que cada decisión de seguridad quede respaldada por evidencia verificable.

## 1.5. Contribución esperada

Integrar fases, dominios, roles, instrumentos, matrices, métricas y laboratorios en una arquitectura reproducible, sujeta a validación empírica. Como productos concretos, el marco aporta una ficha estandarizada de laboratorio, matrices de correspondencia con referentes, una rúbrica de severidad, un registro de evidencias con hashes, un plan de mitigación con criterio de verificación y un repositorio versionado que conserva la trazabilidad entre todos ellos.

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
| 01 Preparación | GV Gobernar (contexto, roles, políticas) | Cap. 6 Planificación de la evaluación | Cl. 4–6 Contexto, liderazgo y planificación | Establecimiento del contexto | FC-LAB-001, 008 |
| 02 Prevención | ID.AM Gestión de activos; PR Proteger | Cap. 3 Técnicas de revisión | Anexo A Controles existentes | Identificación del riesgo | FC-LAB-002, 005, 008, 011 |
| 03 Identificación | ID.RA Evaluación del riesgo | Cap. 4 Identificación y análisis de objetivos; cap. 5 Validación de vulnerabilidades; cap. 7 Ejecución | Cl. 8.2 Apreciación de riesgos | Identificación del riesgo | FC-LAB-002, 003, 004, 006, 007, 009, 010, 011 |
| 04 Análisis | ID.RA Evaluación del riesgo | Cap. 8 Actividades posteriores (análisis de hallazgos) | Cl. 8.2 Apreciación de riesgos | Análisis y valoración del riesgo | FC-LAB-003, 004, 005, 007, 009, 010, 011 |
| 05 Mitigación | PR Proteger; RS Responder; RC Recuperar | Cap. 8 Recomendaciones de mitigación | Cl. 8.3 Tratamiento de riesgos | Tratamiento del riesgo | FC-LAB-008, 009, 010 |
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
| FC-LAB-008 | No aplica (ATT&CK); MITRE ATLAS | AML.T0051 Prompt Injection; AML.T0054 LLM Jailbreak | OWASP LLM01:2025 Prompt Injection (no está en el Top 10 web) |
| FC-LAB-009 | Credential Access (TA0006); Initial Access (TA0001); Execution (TA0002) | T1110 Brute Force; T1190 Exploit Public-Facing Application; T1059 Command and Scripting Interpreter | A07 Authentication Failures; A05 (inyección y configuración) |
| FC-LAB-010 | Initial Access (TA0001); Execution (TA0002) | T1190 Exploit Public-Facing Application; T1505.003 Web Shell; T1083 File and Directory Discovery | A01 Broken Access Control; A04 Insecure Design; A05 (configuración e inyección) |
| FC-LAB-011 | Discovery (TA0007); Initial Access (TA0001) | T1595 Active Scanning; T1190 Exploit Public-Facing Application | A05 Security Misconfiguration; A06 Vulnerable and Outdated Components |

# 5. DEFINICIÓN DE VIOHEX

## 5.1. Definición

VioHex es un framework metodológico, en fase de diseño, que integra procedimientos ofensivos, defensivos y colaborativos para identificar, analizar, evaluar, mitigar y verificar riesgos de ciberseguridad mediante pruebas controladas, evidencias reproducibles y mejora continua. Se denomina framework porque no prescribe una herramienta ni un producto: ofrece una estructura de fases, dominios, roles, instrumentos y criterios dentro de la cual se eligen y documentan las técnicas adecuadas para cada sistema evaluado.

Su unidad de trabajo es el ciclo de evaluación: un recorrido completo por las seis fases (preparación, prevención, identificación, análisis, mitigación y verificación) sobre un alcance autorizado. Cada ciclo parte de una línea base, produce hallazgos sustentados en evidencias con hash, los traduce en riesgos priorizados según una rúbrica aprobada y se cierra cuando la repetición de las pruebas demuestra si los tratamientos redujeron el riesgo. La verificación alimenta la preparación del ciclo siguiente, por lo que el marco es iterativo y no lineal.

VioHex adopta el enfoque Purple Team como eje transversal: las actividades ofensivas se ejecutan para mejorar los controles defensivos y no como un fin en sí mismas. Los laboratorios del catálogo (sección 10) son instrumentos versionados que aplican el marco a un dominio concreto; no sustituyen la metodología ni bastan, por sí solos, para validarla.

## 5.2. Objetivo general

Establecer un enfoque sistemático, reproducible y verificable para evaluar y fortalecer los controles de ciberseguridad de sistemas de información, mediante procedimientos técnicos autorizados que vinculen cada prueba con su evidencia, cada hallazgo con un riesgo valorado y cada tratamiento con una verificación posterior de su efectividad.

## 5.3. Objetivos específicos

Los objetivos específicos se corresponden con las fases del ciclo, de modo que el cumplimiento de cada uno se comprueba con el producto que esa fase entrega:

| Fase | Objetivo específico | Producto verificable |
| --- | --- | --- |
| 01 Preparación | OE1. Delimitar el alcance, los activos, las reglas de compromiso y los criterios de suspensión de cada evaluación, con autorización expresa del responsable del sistema. | Plan de evaluación aprobado |
| 02 Prevención | OE2. Establecer una línea base de configuración, controles y exposición antes de ejecutar pruebas, para disponer de un punto de comparación. | Línea base documentada |
| 03 Identificación | OE3. Ejecutar pruebas controladas y reproducibles por dominio, registrando cada observación con su evidencia y su hash. | Bitácora, evidencias y hallazgos |
| 04 Análisis | OE4. Validar los hallazgos y valorar su probabilidad, impacto y severidad con una rúbrica definida antes de las pruebas. | Matriz de hallazgos y riesgos |
| 05 Mitigación | OE5. Priorizar y documentar los tratamientos con responsable, fecha y criterio de verificación, y registrar los riesgos aceptados. | Plan de mitigación |
| 06 Verificación | OE6. Repetir las pruebas en condiciones equivalentes para comprobar la efectividad de los tratamientos y detectar regresiones. | Informe de efectividad |
| Transversal | OE7. Medir el desempeño del marco con los indicadores de la sección 13 y actualizar protocolos, fichas y criterios a partir de los resultados. | Indicadores y versión revisada del marco |

## 5.4. Alcance

VioHex se aplica a sistemas de información propios o expresamente autorizados, de acuerdo con los permisos y las capacidades disponibles. El alcance general comprende:

* Entornos de laboratorio y aplicaciones diseñadas para la práctica, como DVWA y OWASP Juice Shop.
* Aplicaciones web y APIs: autenticación, sesiones, control de acceso, validación de entradas y configuración.
* Servicios de red y DNS, principalmente mediante reconocimiento pasivo y fuentes abiertas.
* Archivos digitales sometidos a análisis forense, con preservación de su integridad.
* Procesos humanos evaluados con escenarios simulados y con el consentimiento de los participantes.
* Aplicaciones que integran modelos de lenguaje (LLM).

Quedan fuera del alcance:

* Sistemas de terceros sin autorización escrita del responsable.
* Pruebas de denegación de servicio o cualquier prueba que comprometa la disponibilidad del sistema.
* Explotación con daño persistente, exfiltración de datos reales o uso de credenciales ajenas.
* Campañas de ingeniería social dirigidas a personas reales sin su consentimiento.
* La gestión de incidentes reales en curso, que corresponde a un CSIRT.

El alcance concreto de cada ciclo se fija en el plan de la fase 01 Preparación y prevalece sobre esta descripción general.

## 5.5. Principios rectores

Ocho principios orientan todas las fases. Cada uno se traduce en una exigencia concreta que el evaluador puede comprobar:

| Principio | Qué exige |
| --- | --- |
| Autorización expresa | Ninguna prueba se ejecuta sin autorización escrita del responsable del sistema, con alcance, ventana de ejecución y contactos definidos. |
| Proporcionalidad | La técnica elegida es la mínima necesaria para responder la pregunta de evaluación; las pruebas no se escalan más allá de lo requerido. |
| Mínimo impacto | Se prefieren entornos de práctica, réplicas y pruebas pasivas; las pruebas activas se ejecutan en ventanas acordadas y con criterios de suspensión. |
| Confidencialidad | Las evidencias se anonimizan antes de publicarse; credenciales, tokens y datos personales no salen del entorno de evaluación. |
| Reproducibilidad | Cada procedimiento indica entradas, versiones de herramientas y pasos suficientes para que otra persona obtenga un resultado comparable. |
| Integridad de evidencias | Cada evidencia se registra con su hash SHA-256 en el momento de su obtención y se gestiona según la cadena de custodia. |
| Trazabilidad | Cada laboratorio se vincula con su fase, dominio, caso de prueba, hallazgo, control y resultado de verificación (sección 11.3). |
| Mejora continua | Los resultados de la verificación y de los indicadores actualizan protocolos, fichas y criterios del ciclo siguiente. |

## 5.6. Limitaciones

El marco reconoce las siguientes limitaciones, que deben tenerse en cuenta al interpretar sus resultados:

* No garantiza la ausencia de vulnerabilidades: una prueba sin hallazgos solo indica que el procedimiento no los detectó dentro del alcance y con las herramientas empleadas.
* La cobertura depende del alcance autorizado, de las herramientas y de la experiencia de quien ejecuta. Los escáneres automatizados producen falsos positivos y falsos negativos que deben validarse manualmente, como muestra el FC-LAB-011.
* Los laboratorios se desarrollaron en un contexto académico, donde una sola persona asume varios roles; la separación entre ejecución y verificación no siempre es posible.
* Los indicadores de tasa de detección y tiempo de respuesta aún no tienen datos, porque ningún laboratorio cubre el dominio D07 Detección y respuesta.
* Ningún hallazgo ha completado todavía la fase 06 Verificación; la validez empírica del marco está pendiente (sección 14).
* La rúbrica de severidad y los umbrales de los indicadores son propuestas que deben aprobarse antes de cada ciclo.
