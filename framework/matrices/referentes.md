# 4.1. Correspondencia de fases con referentes

| Fase | NIST CSF 2.0 | NIST SP 800-115 | ISO/IEC 27001:2022 | ISO/IEC 27005:2022 | Laboratorios |
| --- | --- | --- | --- | --- | --- |
| 01 Preparación | GV Gobernar (contexto, roles, políticas) | Cap. 6 Planificación de la evaluación | Cl. 4–6 Contexto, liderazgo y planificación | Establecimiento del contexto | FC-LAB-001, 008 |
| 02 Prevención | ID.AM Gestión de activos; PR Proteger | Cap. 3 Técnicas de revisión | Anexo A Controles existentes | Identificación del riesgo | FC-LAB-002, 005, 008, 011 |
| 03 Identificación | ID.RA Evaluación del riesgo | Cap. 4 Identificación y análisis de objetivos; cap. 5 Validación de vulnerabilidades; cap. 7 Ejecución | Cl. 8.2 Apreciación de riesgos | Identificación del riesgo | FC-LAB-002, 003, 004, 006, 007, 009, 010, 011 |
| 04 Análisis | ID.RA Evaluación del riesgo | Cap. 8 Actividades posteriores (análisis de hallazgos) | Cl. 8.2 Apreciación de riesgos | Análisis y valoración del riesgo | FC-LAB-003, 004, 005, 007, 009, 010, 011 |
| 05 Mitigación | PR Proteger; RS Responder; RC Recuperar | Cap. 8 Recomendaciones de mitigación | Cl. 8.3 Tratamiento de riesgos | Tratamiento del riesgo | FC-LAB-008, 009, 010 |
| 06 Verificación | ID.IM Mejora | No lo trata de forma explícita | Cl. 9 Evaluación del desempeño; cl. 10 Mejora | Seguimiento y revisión | FC-LAB-004 |

# 4.2. Correspondencia de laboratorios con MITRE ATT&CK y OWASP Top 10:2025

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
