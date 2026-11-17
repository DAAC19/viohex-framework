param(
    [Parameter(Mandatory)][ValidateRange(1, 999)][int]$Numero,
    [Parameter(Mandatory)][ValidatePattern('^[a-z0-9]+(-[a-z0-9]+)*$')][string]$Tema
)

$raiz = Split-Path $PSScriptRoot -Parent
$carpeta = Join-Path $raiz ("laboratorios/lab-{0:D2}-{1}" -f $Numero, $Tema)
$id = "FC-LAB-{0:D3}" -f $Numero

if (Test-Path $carpeta) { throw "Ya existe $carpeta" }
$repetido = Get-ChildItem (Join-Path $raiz 'laboratorios') -Directory -Filter ("lab-{0:D2}-*" -f $Numero)
if ($repetido) { throw "El número $Numero ya lo usa $($repetido.Name)" }

# Las subcarpetas (procedimiento, resultados, evidencias, scripts) se crean al agregarles archivos
New-Item -ItemType Directory -Path $carpeta | Out-Null

# La ficha parte de la plantilla, sin la línea de instrucciones y con el identificador ya puesto
$ficha = Get-Content (Join-Path $raiz 'plantillas/ficha-laboratorio.md') -Encoding utf8 |
    Where-Object { $_ -notlike 'Copiar este archivo*' }
($ficha -join "`n").Replace('FC-LAB-XXX', $id) -replace "`n{3,}", "`n`n" |
    Set-Content (Join-Path $carpeta 'README.md') -Encoding utf8 -NoNewline

Write-Output "Creado $id en $carpeta"
Write-Output "Pendiente: agregar la guía en procedimiento/ y el informe en resultados/, completar la ficha, sumarlo al catálogo del README y a framework/matrices/."
