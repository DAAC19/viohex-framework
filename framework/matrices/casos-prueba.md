# Anexo A. Matriz de casos de prueba

| ID | Laboratorio | Dominio · fases | Objetivo | Entrada | Resultado esperado |
| --- | --- | --- | --- | --- | --- |
| P01 | FC-LAB-002 | D02 · 02, 03 | Identificar la exposición DNS y el estado de DNSSEC | scanme.nmap.org; resolutor 8.8.8.8 | Registros documentados y conclusión sobre DNSSEC |
| P02 | FC-LAB-003 | D03 · 03, 04 | Determinar qué se reconstruye desde el frontend | Sitio propio en Netlify; palabras clave de grep | Clon equivalente y resultado por categoría de búsqueda |
| P03 | FC-LAB-004 | D06 · 03, 04, 06 | Detectar y extraer información oculta preservando la integridad | Imágenes JPG sintéticas; contraseñas de Steghide | Mensaje recuperado y hash de la evidencia sin cambios |
| P04 | FC-LAB-001 | D01 · 01 | Preparar y documentar el entorno de evaluación | Máquina virtual Kali; localhost | Salidas esperadas y puertos locales listados |
| P05 | FC-LAB-005 | D05 · 02, 04 | Clasificar un escenario y proponer medidas | Plantilla de matriz; escenario recibido | Técnica clasificada y coincidencia con el autor |
| P06 | FC-LAB-006 | D02 · 03 | Mapear la infraestructura pública de dominios | Cuatro dominios; transforms públicos | Grafo con MX, NS, SOA y SPF por dominio |
| P07 | FC-LAB-007 | D03, D04 · 03, 04 | Comparar flujos de autenticación | URL de inicio de sesión; credenciales incorrectas | Endpoint, método, formato y respuesta documentados |
| P08 | FC-LAB-008 | D08 · 01, 02, 05 | Caracterizar el prompt injection y definir taxonomía y métricas | Taxonomía de la guía y prompts neutros | Taxonomía con riesgos OWASP, controles y métricas |
| P09 | FC-LAB-009 | D03, D04 · 03, 04, 05 | Explotar y mitigar vulnerabilidades web (DVWA, nivel Low) | DVWA en localhost:8080; cargas de prueba | Cinco vulnerabilidades con respuesta normal y alterada |
| P10 | FC-LAB-010 | D03, D04 · 03, 04, 05 | Explotar, encadenar y mitigar vulnerabilidades web (DVWA, nivel Low) | DVWA en localhost:8080; shell.php y cargas | Cuatro vulnerabilidades, dos encadenadas hasta RCE |
| P11 | FC-LAB-011 | D03, D04 · 02, 03, 04 | Analizar aplicaciones web con ZAP y documentar las salidas | Proxy 127.0.0.1:8090; objetivos controlados | Módulos documentados y reporte por sitio |
