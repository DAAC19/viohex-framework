# Resumen del reporte de ZAP (anonimizado)

Resumen de las tablas del reporte HTML generado por OWASP ZAP. El reporte original **no se publica**: contiene la URL del objetivo externo, un token de la petición e identificadores de sesión (sección 11.2 del framework). Aquí el objetivo externo aparece como «plataforma académica A».

## Alertas por sitio y riesgo

| Sitio | Alta | Media | Baja | Informativa | Total |
| --- | --- | --- | --- | --- | --- |
| Plataforma académica A | 1 | 8 | 4 | 5 | 18 |
| Juice Shop Demo | 0 | 4 | 4 | 0 | 8 |
| DVWA (contenedor local) | 1 (SQLi, escaneo activo) | ~6 | ~5 | — | 12 |

Las alertas de la plataforma académica A y de Juice Shop corresponden al reporte exportado (26 en total). Las de DVWA se leen del panel de alertas de ZAP (12), ya que ese objetivo local no se incluyó en el reporte exportado.

## Tipos de alerta más relevantes

| Tipo de alerta | Riesgo | Dónde |
| --- | --- | --- |
| Vulnerable JS Library (mustache.js 0.7.2, CVE-2015-8862) | Alto | Plataforma A |
| Vulnerable JS Library (Bootstrap 3.3.6) | Medio | Plataforma A |
| Absence of Anti-CSRF Tokens | Medio | Plataforma A |
| CSP: Failure to Define Directive / Wildcard / unsafe-inline / unsafe-eval | Medio | Plataforma A y Juice Shop |
| Content Security Policy (CSP) Header Not Set | Medio | Juice Shop y DVWA |
| Cross-Domain Misconfiguration (CORS permisivo) | Medio | Juice Shop |
| Missing Anti-clickjacking Header | Medio | Juice Shop y DVWA |
| Session ID in URL Rewrite (socket.io) | Medio | Juice Shop |
| Sub Resource Integrity Attribute Missing | Medio | Plataforma A |
| SQL Injection (confirmada por el escaneo activo) | Alto | DVWA |
| Cookie without HttpOnly / SameSite Attribute | Bajo/Medio | DVWA y Juice Shop |
| Server Leaks Version Information / Strict-Transport-Security Header Not Set / X-Content-Type-Options Missing | Bajo | Los tres |

El escaneo activo no agregó vulnerabilidades de inyección en los objetivos externos; los hallazgos son de configuración y de componentes. En DVWA el escaneo activo sí marcó la inyección SQL, coherente con el FC-LAB-009.
