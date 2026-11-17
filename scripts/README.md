# Scripts

Se ejecutan desde la raíz del repositorio en PowerShell 7.

## nuevo-lab.ps1

Crea `laboratorios/lab-NN-<tema>/` y copia la plantilla de ficha como `README.md` con el identificador ya puesto. No crea subcarpetas vacías: `procedimiento`, `resultados`, `evidencias` y `scripts` se agregan cuando tienen archivos. No sobrescribe un laboratorio existente ni repite un número.

```powershell
./scripts/nuevo-lab.ps1 12 forense-memoria
```

Después hay que agregar la guía en `procedimiento/` y el informe en `resultados/`, completar la ficha y sumar el laboratorio al catálogo del `README.md` y a `framework/matrices/`.

## revisar-publicacion.ps1

Busca contraseñas, tokens, encabezados `Authorization`, cookies, llaves privadas y correos (sección 11.2). Sin argumentos revisa lo preparado con `git add`; con `-Todo`, todo el repositorio. Las imágenes y documentos dentro de `evidencias/` se listan para revisarlos a mano. Termina con código 1 si encuentra algo.

```powershell
git add laboratorios/lab-12-forense-memoria
./scripts/revisar-publicacion.ps1
```

## hashes.ps1

Calcula el SHA-256 de los archivos de una carpeta de evidencias y lo guarda en `hashes.csv` para la cadena de custodia.

```powershell
./scripts/hashes.ps1 laboratorios/lab-04-esteganografia/evidencias
```
