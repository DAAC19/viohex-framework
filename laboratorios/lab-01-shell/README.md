# FC-LAB-001. Comandos integrados Shell y primeras herramientas de Kali Linux

| Campo | Descripción / dato requerido |
| --- | --- |
| Identificador | FC-LAB-001 |
| Nombre y versión | Comandos integrados Shell y primeras herramientas de Kali Linux. v1.0, 18/08/2026. |
| Objetivo | Verificar el dominio de la línea de comandos de Linux y de las primeras herramientas de Kali para preparar el entorno de evaluación. |
| Dominio y fase | D01 Entornos y sistemas. Fase 01 Preparación. |
| Roles | Ejecutor: Diego Alberto. Defensor: no aplica. Revisor: Diego Alberto. |
| Entorno y autorización | Máquina virtual Kali Linux propia. El escaneo con Nmap se limita a localhost, por lo que no requiere autorización de terceros. |
| Entradas | Directorio de trabajo "laboratorio", archivos .txt creados durante la práctica y la configuración de red de la máquina virtual. |
| Procedimiento | 1. Crear directorios y archivos y comprobar que existen. 2. Editar, copiar, mover, renombrar y eliminar archivos. 3. Leer archivos y buscar texto y archivos. 4. Consultar usuarios, sistema y procesos. 5. Revisar interfaces de red (lo, eth0, MTU, IPv4/IPv6), tabla de rutas y conectividad. 6. Listar puertos y conexiones locales. 7. Instalar metapaquetes y escanear los puertos de localhost con Nmap. |
| Evidencias | Capturas de pantalla de cada comando y su salida, incluidas la configuración de red y el resultado del escaneo de localhost. |
| Criterio de aceptación | Cada comando produce la salida esperada (los directorios y archivos existen o desaparecen según la operación) y el escaneo de localhost lista los puertos abiertos de la máquina virtual. |
| Análisis defensivo | Conocer los puertos y servicios locales permite cerrar los que no se usan. El escaneo de localhost sirve como línea base de exposición del equipo de pruebas. |
| Resultado | Entorno de trabajo operativo y documentado; línea base de red y puertos de la máquina virtual. |

Documentos: guía del docente: [guía](procedimiento/guia.pdf); informe entregado: [informe](resultados/informe.pdf).

Autor de los laboratorios: Diego Alejandro Alberto Cáceres. Las fechas corresponden a la última versión de cada informe entregado. En estos laboratorios académicos el autor asumió todos los roles, incluido el de revisor, como admite la sección 3.
