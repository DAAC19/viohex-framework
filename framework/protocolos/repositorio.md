# 11. REPOSITORIO TÉCNICO Y GESTIÓN DE ARTEFACTOS

Se propone un único repositorio GitHub con carpetas por función. Las ramas se reservan para cambios temporales y revisión; los laboratorios se organizan como directorios permanentes en main.

VioHex-framework/
 README.md
 docs/{framework,arquitectura,metodologia,glosario}.md
 framework/{fases,protocolos,matrices}/
 laboratorios/{lab-01-shell,lab-02-dns,lab-03-httrack,lab-04-esteganografia,lab-05-ingenieria-social,lab-06-maltego,lab-07-burp,lab-08-prompt-injection,lab-09-dvwa-parte1,lab-10-dvwa-parte2,lab-11-owasp-zap}/
 scripts/ plantillas/

Las carpetas casos-estudio/ (evaluaciones completas) y resultados/ (informes consolidados por versión) se crean cuando exista el primer caso o informe.

Cada carpeta de laboratorio contiene README.md (ficha del laboratorio), procedimiento/ (guía del docente y pasos) y resultados/ (informe entregado y hallazgos); evidencias/ (capturas anonimizadas y hashes) y scripts/ se agregan solo cuando tienen archivos. Los laboratorios nuevos se agregan en el orden del catálogo como lab-12-<tema>, lab-13-<tema>, etc.

## 11.1. Ramas y versiones

main contiene la versión estable; feature/lab-08 y docs/glosario son ramas de trabajo. Los cambios se revisan mediante Pull Requests. Las versiones estables se etiquetan como v0.1.0, v0.2.0 y v1.0.0.

## 11.2. Seguridad de publicación

No subir credenciales, tokens, datos personales, información de terceros, capturas sensibles ni artefactos que permitan afectar objetivos reales. Usar escenarios autorizados, archivos sintéticos y resultados anonimizados. En las guías e informes de los laboratorios 7 y 11 se taparon los nombres, las URL y las capturas de la plataforma académica A y del sistema académico B.

## 11.3. Trazabilidad

Cada laboratorio debe vincularse con:

* Una fase,
* Dominio,
* Caso de prueba,
* Hallazgo,
* Control y
* Resultado de verificación.
