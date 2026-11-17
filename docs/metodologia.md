# 7. ESPECIFICACIÓN DE LAS FASES

## 7.1. Preparación

Entradas: Solicitud, sistema y autorización.

Actividades: Definir alcance, activos, reglas de compromiso, responsables y entorno.

Salidas: Plan autorizado y criterios de suspensión.

Criterio de cierre: plan de evaluación aprobado por escrito por el responsable del sistema, con alcance, activos, reglas de compromiso, responsables y criterios de suspensión definidos.

## 7.2. Prevención

Entradas: Plan, arquitectura y controles existentes.

Actividades: Revisar configuraciones, controles, exposición y riesgos conocidos.

Salidas: Línea base documentada.

Criterio de cierre: línea base documentada para cada activo del alcance, con la configuración y los controles existentes registrados y revisados por el analista defensivo.

## 7.3. Identificación

Entradas: Escenarios y protocolos.

Actividades: Ejecutar pruebas controladas; registrar observaciones y hallazgos.

Salidas: Bitácora y evidencias.

Criterio de cierre: todos los casos de prueba planificados ejecutados o justificados como no ejecutados, y cada hallazgo registrado con su evidencia y su hash en el registro de evidencias.

## 7.4. Análisis

Entradas: Hallazgos y evidencias.

Actividades: Validar hallazgos, determinar impacto, estimar riesgo y priorizar.

Salidas: Matriz de evaluación.

Criterio de cierre: cada hallazgo validado, con probabilidad, impacto y severidad asignados según la rúbrica aprobada, y la matriz de riesgos revisada por el evaluador.

## 7.5. Mitigación

Entradas: Riesgos priorizados.

Actividades: Seleccionar responsables, medidas y fechas; implementar correcciones.

Salidas: Registro de cambios y controles.

Criterio de cierre: cada riesgo priorizado con una medida, un responsable y una fecha; los cambios aplicados registrados y los riesgos aceptados firmados por el responsable del sistema.

## 7.6. Verificación

Entradas: Cambios y pruebas iniciales.

Actividades: Reejecutar casos comparables; comprobar correcciones y regresiones.

Salidas: Informe de verificación.

Criterio de cierre: casos de prueba repetidos en condiciones equivalentes, resultados comparados con la línea base, correcciones confirmadas sin regresiones e informe de efectividad aprobado.

# 12. MODELO DE EVALUACIÓN

Cada prueba tendrá identificador, objetivo, condiciones, entrada, resultado esperado, resultado observado, evidencia, impacto, severidad, responsable y recomendación. Se distinguirá ejecución satisfactoria del procedimiento de ausencia de vulnerabilidades.

| ID | Prueba | Resultado esperado | Resultado obtenido | Severidad | Estado |
| --- | --- | --- | --- | --- | --- |
| P01 | Reconocimiento DNS (FC-LAB-002) | Información documentada | Registros A, AAAA, NS, MX y PTR documentados; el dominio no tiene DS ni DNSKEY (sin DNSSEC). | Baja | Ejecutada |
| P02 | Exposición web (FC-LAB-003) | Recursos identificados | Frontend reconstruido por completo; sin claves ni tokens; nombres de variables de entorno visibles. | Baja | Ejecutada |
| P03 | Análisis forense (FC-LAB-004) | Evidencia íntegra y analizada | Mensajes de las evidencias B y C recuperados; hashes de las evidencias originales sin cambios. | No aplica | Ejecutada |
| P04 | Línea base del entorno (FC-LAB-001) | Puertos y servicios locales identificados | Entorno operativo; puertos abiertos de localhost listados con Nmap. | No aplica | Ejecutada |
| P05 | Ingeniería social (FC-LAB-005) | Técnica clasificada y medidas propuestas | Phishing con suplantación clasificado; coincide con la matriz del autor del escenario. | No aplica | Ejecutada |
| P06 | OSINT de infraestructura (FC-LAB-006) | Infraestructura pública mapeada | Grafos de cuatro dominios con MX, NS, SOA y SPF; sin nodos IP para santototunja.edu.co. | No aplica | Ejecutada |
| P07 | Flujos de autenticación (FC-LAB-007) | Endpoint, método, formato y respuesta documentados | Cuatro flujos POST documentados; ninguno revela qué credencial falla; el sistema B codifica el cuerpo en Base64. | Baja | Ejecutada |
| P08 | Prompt injection: taxonomía y métricas (FC-LAB-008) | Taxonomía con riesgos OWASP y métricas | Taxonomía de cinco ejes, diez controles y métricas ISR/MR definidas | No aplica | Ejecutada (documental) |
| P09 | Vulnerabilidades web DVWA parte 1 (FC-LAB-009) | Cinco vulnerabilidades explotadas y explicadas | Fuerza bruta, SQLi, inyección de comandos y XSS reflejado y almacenado confirmados | Crítica | Ejecutada |
| P10 | Vulnerabilidades web DVWA parte 2 (FC-LAB-010) | Cuatro vulnerabilidades explotadas y encadenamiento | CSRF, carga e inclusión de archivos (RCE encadenado) y SQLi ciega confirmados | Crítica | Ejecutada |
| P11 | Análisis web con OWASP ZAP (FC-LAB-011) | Salidas de módulos y reporte | History, Alerts, Spider, AJAX Spider y Active Scan documentados; reporte con alertas por sitio | Media | Ejecutada |

Las severidades se asignaron con la rúbrica del Anexo B. «Ejecutada» indica que el procedimiento se completó, no que exista o no una vulnerabilidad. Ninguna prueba ha pasado aún por la fase 06 Verificación tras una corrección.

# 13. INDICADORES Y MÉTRICAS

| Indicador | Definición operacional | Fuente | Unidad y ventana | Umbral propuesto | Valor actual |
| --- | --- | --- | --- | --- | --- |
| Cobertura de pruebas | Casos ejecutados / casos planificados × 100 | Anexo A y sección 12 | % por ciclo de evaluación | ≥ 90 % | 11/11 = 100 % |
| Hallazgos por severidad | Conteo de hallazgos por nivel según la rúbrica del Anexo B | Anexo B | Número por nivel, por ciclo | Todo hallazgo Alto o Crítico con plan en el Anexo D | Baja: 3; Media: 6; Alta: 3; Crítica: 7 |
| Correcciones verificadas | Hallazgos corregidos y verificados / hallazgos tratados × 100 | Anexo D y fase 06 | % por ciclo | ≥ 80 % | No calculable: 0 hallazgos tratados |
| Tasa de detección | Eventos de prueba detectados / eventos de prueba observables × 100 | Registros, alertas o SIEM del entorno | % por campaña de pruebas | ≥ 70 % | Sin datos: ningún laboratorio cubre D07 |
| Tiempo de respuesta | Diferencia entre la marca de tiempo del evento y la de la respuesta | Registros con reloj sincronizado | Minutos, mediana por campaña | Definir según el escenario | Sin datos: ningún laboratorio cubre D07 |
| Reproducibilidad | Repeticiones con el mismo resultado / repeticiones realizadas × 100 | Repeticiones de los casos del Anexo A | % por caso | ≥ 90 % | Sin datos: ninguna prueba se ha repetido |

Los indicadores no deben utilizarse sin especificar fuente, unidad, ventana temporal, criterios de exclusión y umbrales. La severidad requiere una rúbrica definida antes de las pruebas. Los valores actuales se calcularon a partir de la tabla de la sección 12 y de la matriz del Anexo B; los umbrales son una propuesta que debe aprobarse antes del siguiente ciclo.

# 14. VALIDACIÓN Y MEJORA CONTINUA

## 14.1. Diseño de validación

Establecer preguntas de evaluación, criterios y limitaciones. Las preguntas centrales son si el marco produce resultados reproducibles, si sus hallazgos se traducen en tratamientos verificables y si su aplicación es viable con los recursos disponibles; cada pregunta se asocia con uno o más indicadores de la sección 13.

## 14.2. Selección de escenarios

Elegir sistemas propios o expresamente autorizados. Se combinan aplicaciones deliberadamente inseguras, como DVWA y Juice Shop, que admiten pruebas activas sin riesgo para terceros, con al menos un activo propio que permita completar el ciclo hasta la verificación, como el sitio del hallazgo H02.

## 14.3. Línea base

Aplicar pruebas y medir condiciones iniciales. La línea base registra configuración, versiones, controles y resultados de cada caso de prueba, con sus evidencias y hashes, para que la comparación posterior sea válida.

## 14.4. Tratamiento

Implementar controles y documentar cambios. Cada tratamiento del Anexo D se registra con su fecha, su responsable y el cambio exacto aplicado; los riesgos aceptados los firma el responsable del sistema.

## 14.5. Reevaluación

Repetir pruebas equivalentes y analizar regresiones. Las pruebas se repiten con las mismas entradas y versiones de herramientas; en DVWA, por ejemplo, se repiten en el nivel Impossible y se registra si cada carga queda bloqueada, y en ZAP se compara el número y el nivel de las alertas.

## 14.6. Análisis

Interpretar cobertura, resultados, reproducibilidad y amenazas a la validez. Entre estas amenazas están la ejecución y la revisión por la misma persona, el uso de entornos diseñados para ser vulnerables y los falsos positivos de las herramientas automatizadas.

## 14.7. Retroalimentación

Actualizar protocolos, fichas y criterios metodológicos. Los cambios se publican como una nueva versión del marco en el repositorio, con su etiqueta y su registro de cambios.
