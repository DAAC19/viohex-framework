# 11. REPOSITORIO TÉCNICO Y GESTIÓN DE ARTEFACTOS

Se propone un único repositorio GitHub con carpetas por función. Las ramas se reservan para cambios temporales y revisión; los laboratorios se organizan como directorios permanentes en main.

VioHex-framework/
 README.md
 docs/{framework,arquitectura,metodologia,glosario}.md
 framework/{fases,protocolos,matrices}/
 laboratorios/{lab-01-shell,lab-02-dns,lab-03-httrack,lab-04-esteganografia,lab-05-ingenieria-social,lab-06-maltego,lab-07-burp}/
 scripts/ plantillas/ casos-estudio/ resultados/

Cada carpeta de laboratorio contiene README.md (ficha del laboratorio), procedimiento/, evidencias/ (capturas anonimizadas y hashes), scripts/ y resultados/. Los laboratorios nuevos se agregan en el orden del catálogo como lab-08-<tema>, lab-09-<tema>, etc.

## 11.1. Ramas y versiones

main contiene la versión estable; feature/lab-08 y docs/glosario son ramas de trabajo. Los cambios se revisan mediante Pull Requests. Las versiones estables se etiquetan como v0.1.0, v0.2.0 y v1.0.0.

## 11.2. Seguridad de publicación

No subir credenciales, tokens, datos personales, información de terceros, capturas sensibles ni artefactos que permitan afectar objetivos reales. Usar escenarios autorizados, archivos sintéticos y resultados anonimizados.

## 11.3. Trazabilidad

Cada laboratorio debe vincularse con:

* Una fase,
* Dominio,
* Caso de prueba,
* Hallazgo,
* Control y
* Resultado de verificación.
