# Anexo E. Guía de GitHub

| Paso | Acción | Comando o ejemplo |
| --- | --- | --- |
| 1 | Crear el repositorio | VioHex-framework en GitHub; git clone <url> |
| 2 | Crear la estructura de carpetas de la sección 11 | docs/, framework/, laboratorios/, scripts/, plantillas/, casos-estudio/, resultados/ |
| 3 | Excluir lo que no debe publicarse (sección 11.2) | .gitignore con evidencias sin anonimizar, .env y credenciales |
| 4 | Crear una rama de trabajo | git switch -c feature/lab-08 |
| 5 | Registrar cambios | git add laboratorios/lab-08-<tema>; git commit -m "docs: agrega ficha FC-LAB-008" |
| 6 | Publicar la rama y abrir un Pull Request | git push -u origin feature/lab-08 |
| 7 | Revisar e integrar en main | Revisión del Pull Request y merge |
| 8 | Etiquetar la versión estable | git tag v0.1.0; git push origin v0.1.0 |
