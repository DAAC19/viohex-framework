param([Parameter(Mandatory)][string]$Carpeta)

# Registra el SHA-256 de cada evidencia; hashes.csv se excluye para no hashearse a sí mismo
Get-ChildItem -Path $Carpeta -File -Recurse |
    Where-Object { $_.Name -notin 'hashes.csv', '.gitkeep' } |
    Get-FileHash -Algorithm SHA256 |
    Select-Object @{n = 'Archivo'; e = { Resolve-Path -Relative $_.Path } }, @{n = 'SHA256'; e = { $_.Hash } } |
    Export-Csv -Path (Join-Path $Carpeta 'hashes.csv') -NoTypeInformation -Encoding utf8
